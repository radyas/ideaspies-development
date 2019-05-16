<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Models\Category;
use Sentinel;
use Mail;

use \PostManage\Models\Post;
use \SettingManage\Models\Setting;

class PostsController extends Controller
{
    public function viewImage()
    {
        return view('front.posts.post-with-image');
    }

    public function viewVideo()
    {
        return view('front.posts.post-with-video');
    }

    public function viewUrl()
    {
        return view('front.posts.post-with-url');
    }

    public function add(Request $request)
    {
      $this->validate($request, [
        'content' => 'required',
        'category_id' => 'required',
        'type' => 'required',
        'title' => 'required',
        'content' => 'required',
        'video' => 'required_if:type,video|mimes:mp4,mov,ogg,qt,webm',
        'image' => 'required_if:type,image|mimes:jpeg,bmp,png',
        'url' => 'required_if:type,url|url', 
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

      $requestData['added_by_type'] = 'user';
      $requestData['added_by_id'] = Sentinel::getUser()->id;
     
      $post = Post::create($requestData);

      if (!empty($request->tags) && $request->tags !== null) {
        $post->tag($request->tags);
      }
      
      Mail::send('mail.create-post', $post->toArray(), function ($message) {
          $message->to(Setting::find(1)->admin_email);
          $message->subject('New Idea');
      });

      return redirect('/')->with([
        'success' => true,
        'success.message' => 'Post Created successfully!',
        'success.title' => 'Well Done!'
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

}
