<?php

namespace PostManage\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Permissions\Models\Permission;
use Sentinel;
use PostManage\Models\Post;
use CategoryManage\Models\Category;
use PostManage\Models\PostNotificationView;
use Carbon\Carbon;
use SettingManage\Models\Setting;
use Mail;

class PostController extends Controller {


  /**
   * Show the Branch add screen to the user.
   *
   * @return Response
   */
  public function addView()
  {

    $categories = Category::lists('name','id')->toArray();

    // dd($categories);
    return view('PostManage::add', compact('categories'));
  }

  /**
   * Add new Branch data to database
   *
   * @return Redirect to Brach add
   */
  public function add(Request $request)
  {
    $this->validate($request, [
      'content' => 'required',
      'category_id' => 'required|exists:categories,id',
      'type' => 'required|in:0,1,2,3',
      'video' => 'required_if:type,video|mimes:mp4,mov,ogg,qt,webm|max:20000',
      'image' => 'required_if:type,image|mimes:jpeg,bmp,png|max:5000',
      'url' => 'required_if:type,url|url',
      'title' => 'required|max:100',
      'tags' => 'required|array'
    ]);

    $requestData = $request->all();

    if ($request->type === 'image') {
      $path = 'uploads/images';
      $fileName = $this->saveFile($request->image, $path);
      $fullPath = 'core/storage/'.$path.'/'.$fileName;

      $requestData['img_path'] = $fullPath;

    }
    
    if ($request->type === 'video') {
      $path = 'uploads/videos';
      $fileName = $this->saveFile($request->video, $path);
      $fullPath = 'core/storage/'.$path.'/'.$fileName;

      $requestData['video_path'] = $fullPath;
    }

    $requestData['added_by_type'] = 'admin';
    $requestData['added_by_id'] = Sentinel::getUser()->id;
   
    $post = Post::create($requestData);

    if (!empty($request->tags) && $request->tags !== null) {
      $post->tag($request->tags);
    }
    
    Mail::send('mail.create-post', $post->toArray(), function ($message) {
        $message->to(Setting::find(1)->admin_email);
        $message->subject('New Idea');
    });

    return redirect('admin/post/list')->with([
      'success' => true,
      'success.message' => 'Post Created successfully!',
      'success.title' => 'Well Done!'
    ]);
  }

  /**
   * View Branch List View
   *
   * @return Response
   */
  public function listView()
  {
    return view('PostManage::list');
  }

  /**
   * Device list
   *
   * @return Response
   */
  public function jsonList(Request $request)
  {
    if ($request->ajax()) {
      $user = Sentinel::getUser();

      $data = new Post();
      $data = $data->get();

      if(!$user->hasAccess(['admin'])){
        $data = Post::where('added_by_id', $user->id)->get();
      }

      $jsonList = array();
      $i = 1;
      foreach ($data as $key => $post) {

        $dd = array();
        array_push($dd, $post->id);
        array_push($dd, sprintf($post->title));
        array_push($dd, sprintf($post->category->name ?? ''));

        $view = '<a href="'.url('post/'.$post->id).'" class="disabled" data-toggle="tooltip" data-placement="top" title="View"><i class="fa fa-eye"></i></a>';


        $permissions = Permission::whereIn('name', ['post.edit', 'admin', 'user'])->where('status', '=', 1)->lists('name');
        if (Sentinel::hasAnyAccess($permissions)) {
          $edit = '<a href="#" class="blue" onclick="window.location.href=\'' . url('admin/post/edit/' . $post->id) . '\'" data-toggle="tooltip" data-placement="top" title="Edit product"><i class="fa fa-pencil"></i></a>';
        } else {
          $edit = '<a href="#" class="disabled" data-toggle="tooltip" data-placement="top" title="Edit Disabled"><i class="fa fa-pencil"></i></a>';
        }

        $permissions = Permission::whereIn('name', ['post.delete', 'admin', 'user'])->where('status', '=', 1)->lists('name');
        if (Sentinel::hasAnyAccess($permissions)) {
          $delete = '<a href="#" class="product-delete" onclick="confirmAction('. $post->id .')" data-id="' . $post->id . '" data-toggle="tooltip" data-placement="top" title="Delete Status"><i class="fa fa-trash-o"></i></a>';
          $checked = $post->idea_of_the_week ? 'checked' : '';
          $postOfTheWeek = '<input type="checkbox" onclick="markIdeaOfTheWeek('.$post->id.')"  title="make this as the idea if the week" class="mark" '.$checked.' data-toggle="toggle">';
        } else {
          $delete = '<a href="#" class="disabled" data-toggle="tooltip" data-placement="top" title="Delete Disabled"><i class="fa fa-trash-o"></i></a>';
        }

        array_push($dd, $postOfTheWeek. $edit . "&nbsp;&nbsp; ". $view );
        array_push($jsonList, $dd);
        $i++;
      }
      return response()->json(array('data' => $jsonList));
    } else {
      return response()->json(array('data' => []));
    }
  }


  /**
   * Delete a device
   * @param  Request $request branch id
   * @return Json           	json object with status of success or failure
   */
  public function delete(Request $request)
  {
    $this->validate($request, ['id' => 'required|exists:categories,id']);
    $id = $request->input('id');
    $post = Post::find($id);

    //TODO : check for relationships before deleting 
    // if (count($post->questions)) {
    //   return response()->json(['status' => 'fail'], 405);
    // }

    // $post->delete();
    return response()->json(['status' => 'success']);
  }

  /**
   * Show the devcie edit screen to the devcie.
   *
   * @return Response
   */
  public function editView($id)
  {
    $post = Post::findOrFail($id);
    $user = Sentinel::getUser();

    if (!$user->hasAccess(['admin']) && $user->id !== $post->added_by_id) {
      
      return redirect('admin/post/list');

    }

    $categories = Category::lists('name', 'id')->toArray();

    $tags = $post->tagNames();

    return view('PostManage::edit', compact('post', 'categories', 'tags'));
  }

  /**
   * Add new device data to database
   *
   * @return Redirect to Branch add
   */
  public function edit(Request $request, $id)
  {
    
    $this->validate($request, [
      'content' => 'required',
      'category_id' => 'required|exists:categories,id',
      'type' => 'required|in:0,1,2,3',
      'video' => 'mimes:mp4,mov,ogg,qt,webm|max:20000',
      'image' => 'mimes:jpeg,bmp,png|max:5000',
      'url' => 'required_if:type,url|url|max:100',
      'tags' => 'array'
      ]);
      
    $post = Post::findOrFail($id);

    $user = Sentinel::getUser();


    if (!$user->hasAccess(['admin']) && $user->id !== $post->added_by_id) {

      return redirect('admin/post/list');

    }

    $requestData = $request->all();


    if ($request->type === 'image' && $request->has('image')) {
      $path = 'uploads/images';
      $fileName = $this->saveFile($request->image, $path);
      $fullPath = 'core/storage/' . $path . '/' . $fileName;

      $requestData['img_path'] = $fullPath;

    }

    if ($request->type === 'video' && $request->has('video')) {
      $path = 'uploads/videos';
      $fileName = $this->saveFile($request->video, $path);
      $fullPath = 'core/storage/' . $path . '/' . $fileName;

      $requestData['video_path'] = $fullPath;
    }

    $requestData['added_by_type'] = 'admin';
    $requestData['added_by_id'] = Sentinel::getUser()->id;


    $post->update($requestData);
    $post->untag();

    if (!empty($request->tags) && $request->tags !== null) {
      $post->tag($request->tags);
    }

     return redirect('admin/post/edit/' . $id)->with([
      'success' => true,
      'success.message' => 'Post updated successfully!',
      'success.title' => 'Good Job!'
    ]);
  }


  public function saveFile($file, $path)
  {
    $extn = $file->getClientOriginalExtension();
    $destinationPath = storage_path($path);
    $fileName = 'file-' . date('YmdHis') . '.' . $extn;
    $file->move($destinationPath, $fileName);
    return $fileName;
  }

  public function tagToArray($str)
  {
    preg_match_all('/#([^\s]+)/', $str, $matches);
    return $matches[1];
  }

  public function seen()
  {
    $user = Sentinel::getUser();

    $unseenPost = Post::unseenPosts();

    $seen = [];

    foreach ($unseenPost as $key => $value) {
      $seen[] = ['post_id' => $value->id, 'user_id' => $user->id, 'created_at' => Carbon::now(), 'updated_at' => Carbon::now()];
    }

    PostNotificationView::insert($seen);
  }

  public function notification()
  {
    $posts = Post::with('addedUser')->orderBy('id', 'desc')->paginate(10);

    return view('PostManage::notification', compact('posts'));
  }

  public function ideaOfTheWeek(Request $request)
  {
      $post = Post::find($request->id);
      $status = 0;

      if ($post->idea_of_the_week == 0) {
      //  dump('aaa');
        Post::where('id', '<>', $request->id)->update(['idea_of_the_week' =>0]);
        $status = 1;
      }

      $post->update(['idea_of_the_week' => $status]);
      return response('success',200);
  }
}
