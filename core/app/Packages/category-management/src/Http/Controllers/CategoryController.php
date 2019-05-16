<?php

namespace CategoryManage\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Permissions\Models\Permission;
use Sentinel;
use CategoryManage\Models\Category;

class CategoryController extends Controller {


  /**
   * Show the Branch add screen to the user.
   *
   * @return Response
   */
  public function addView()
  {
    return view('CategoryManage::add');
  }

  /**
   * Add new Branch data to database
   *
   * @return Redirect to Brach add
   */
  public function add(Request $request)
  {

    $this->validate($request, [
      'name' => 'required',
    ]);

    $requestData = $request->all();

    Category::create($requestData);


    return redirect('admin/category/add')->with([
      'success' => true,
      'success.message' => 'Category Created successfully!',
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
    return view('CategoryManage::list');
  }

  /**
   * Device list
   *
   * @return Response
   */
  public function jsonList(Request $request)
  {
    if ($request->ajax()) {
      $data = Category::get();
      $jsonList = array();
      $i = 1;
      foreach ($data as $key => $category) {

        $dd = array();
        array_push($dd, $category->id);
        array_push($dd, sprintf($category->name));


        $permissions = Permission::whereIn('name', ['category.edit', 'admin'])->where('status', '=', 1)->lists('name');
        if (Sentinel::hasAnyAccess($permissions)) {
          $edit = '<a href="#" class="blue" onclick="window.location.href=\'' . url('admin/category/edit/' . $category->id) . '\'" data-toggle="tooltip" data-placement="top" title="Edit product"><i class="fa fa-pencil"></i></a>';
        } else {
          $edit = '<a href="#" class="disabled" data-toggle="tooltip" data-placement="top" title="Edit Disabled"><i class="fa fa-pencil"></i></a>';
        }

        $permissions = Permission::whereIn('name', ['category.delete', 'admin'])->where('status', '=', 1)->lists('name');
        if (Sentinel::hasAnyAccess($permissions)) {
          $delete = '<a href="#" class="product-delete" onclick="confirmAction('. $category->id .')" data-id="' . $category->id . '" data-toggle="tooltip" data-placement="top" title="Delete Status"><i class="fa fa-trash-o"></i></a>';
        } else {
          $delete = '<a href="#" class="disabled" data-toggle="tooltip" data-placement="top" title="Delete Disabled"><i class="fa fa-trash-o"></i></a>';
        }

        array_push($dd, $edit . "&nbsp;&nbsp; " . $delete);
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
    $category = Category::find($id);

    //TODO : check for relationships before deleting 
    // if (count($category->questions)) {
    //   return response()->json(['status' => 'fail'], 405);
    // }

    $category->delete();
    return response()->json(['status' => 'success']);
  }

  /**
   * Show the devcie edit screen to the devcie.
   *
   * @return Response
   */
  public function editView($id)
  {
    $category = Category::findOrFail($id);
    return view('CategoryManage::edit', compact('category'));
  }

  /**
   * Add new device data to database
   *
   * @return Redirect to Branch add
   */
  public function edit(Request $request, $id)
  {

    $this->validate($request, [
      'name' => 'required',
    ]);

    $category = Category::findOrFail($id);

    $requestData = $request->all();

    $category->update($requestData);


    return redirect('admin/category/edit/' . $id)->with([
      'success' => true,
      'success.message' => 'Category updated successfully!',
      'success.title' => 'Good Job!'
    ]);
  }

  public function changeStatus($id)
  {
    $question = Question::findOrFail($id);
    $question->status = !$question->status;
    $question->save();

    return back()->with([
      'success' => true,
      'success.message' => 'Question Status updated successfully!',
      'success.title' => 'Good Job!'
    ]);
  }


}
