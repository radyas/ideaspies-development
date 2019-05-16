<?php
namespace UserManage\Http\Controllers;

use App\Http\Controllers\Controller;
use UserManage\Models\User;
use UserRoles\Models\UserRole;
use Permissions\Models\Permission;
use UserManage\Http\Requests\UserRequest;
use Illuminate\Http\Request;
use Response;
use Sentinel;
use Hash;
use Activation;
use Illuminate\Support\Facades\Validator;


class UserController extends Controller {

	/*
	|--------------------------------------------------------------------------
	| User Controller
	|--------------------------------------------------------------------------
	|
	| This controller renders the "marketing page" for the application and
	| is configured to only allow guests. Like most of the other sample
	| controllers, you are free to modify or remove it as you desire.
	|
	*/

	/**
	 * Create a new controller instance.
	 *
	 * @return void
	 */
	public function __construct()
	{
		$this->middleware('check_permission:admin', ['except' => ['profileView', 'password', 'updateProfile', 'deleteAccount']] );
	}

	/**
	 * Show the User add screen to the user.
	 *
	 * @return Response
	 */
	public function addView()
	{

		$user = User::where('status','=',1)->get();
		$roles = UserRole::orderBy('name', 'asc')->get();
		return view( 'userManage::user.add' )->with([
			'users' => $user,
			'roles' => $roles,
		 ]);
	}

	/**
	 * Add new user data to database
	 *
	 * @return Redirect to menu add
	 */
	public function add(UserRequest $request)
	{
		$username_submitted = User::where('username','=', $request->get('username') )->get();
		if(isset($username_submitted[0])){
			return redirect('user/add')->with([ 'error' => true,
				'error.message'=> 'Already EXSIST User!',
				'error.title' => 'Try Again!']);
		}else{
			if(count($request->get( 'roles' ))>0){
				$supervisor = User::find( $request->get('supervisor') );
				$credentials = [
					'first_name' => $request->get( 'first_name' ),
					'last_name'  => $request->get('last_name' ),
					'branch'     => 0,
					'username'   => $request->get('username' ),
					'password'   => $request->get('password' )
				];
				$user = Sentinel::registerAndActivate($credentials);
				$user->makeChildOf($supervisor);
				foreach ($request->get( 'roles' ) as $key => $value) {
					$role = Sentinel::findRoleById($value);
			   	    $role->users()->attach($user);
				}
				return redirect('user/add')->with([ 'success' => true,
				'success.message'=> 'User Created successfully!',
				'success.title' => 'Well Done!']);
			}else{
				return redirect('user/add')->with([ 'error' => true,
				'error.message'=> 'ROLE can not be empty!',
				'error.title' => 'Try Again!']);
			}
		}



	}

	/**
	 * Show the user add screen to the user.
	 *
	 * @return Response
	 */
	public function listView()
	{
		return view( 'userManage::user.list' );
	}

	/**
	 * Show the user add screen to the user.
	 *
	 * @return Response
	 */
	public function jsonList(Request $request)
	{
		if($request->ajax()){
			 $data= User::with(['roles'])->get();
			$jsonList = array();
			$i=1;
			foreach ($data as $key => $user) {
				$roles='';
				foreach ($user->roles as $key_role => $value_role) {
					$roles.=$value_role->name.' ';
				}

				$dd = array();
				array_push($dd, $i);

				if($user->first_name != ""){
					array_push($dd, $user->first_name.' '.$user->last_name);
				}else{
					array_push($dd, "-");
				}
				if($user->branch != 0){
					array_push($dd, '-');
				}else{
					array_push($dd, "-");
				}
				if($user->username != ""){
					array_push($dd, $user->username);
				}else{
					array_push($dd, "-");
				}
				if(count($user->roles)>0){
					array_push($dd, $roles);
				}else{
					array_push($dd, "-");
				}

				$permissions = Permission::whereIn('name',['user.edit','admin'])->where('status','=',1)->lists('name');
				if(Sentinel::hasAnyAccess($permissions)){
					array_push($dd, '<center><a href="#" class="blue" onclick="window.location.href=\''.url('user/edit/'.$user->id).'\'" data-toggle="tooltip" data-placement="top" title="Edit User"><i class="fa fa-pencil"></i></a></center>');
				}else{
					array_push($dd, '<a href="#" class="disabled" data-toggle="tooltip" data-placement="top" title="Edit Disabled"><i class="fa fa-pencil"></i></a>');
				}

				$permissions = Permission::whereIn('name',['user.delete','admin'])->where('status','=',1)->lists('name');
				if(Sentinel::hasAnyAccess($permissions)){
					array_push($dd, '<center><a href="#" class="red user-delete" data-id="'.$user->id.'" data-toggle="tooltip" data-placement="top" title="Delete User"><i class="fa fa-trash-o"></i></a></center>');
				}else{
					array_push($dd, '<a href="#" class="disabled" data-toggle="tooltip" data-placement="top" title="Delete Disabled"><i class="fa fa-trash-o"></i></a>');
				}

				array_push($jsonList, $dd);
				$i++;
			}
			return Response::json(array('data'=>$jsonList));
		}else{
			return Response::json(array('data'=>[]));
		}
	}


	/**
	 * Activate or Deactivate User
	 * @param  Request $request user id with status to change
	 * @return json object with status of success or failure
	 */
	public function status(Request $request)
	{
		if($request->ajax()){
			$id = $request->input('id');
			$status = $request->input('status');

			$user = User::find($id);
			if($user){
				$user->status = $status;
				$user->save();
				return response()->json(['status' => 'success']);
			}else{
				return response()->json(['status' => 'invalid_id']);
			}
		}else{
			return response()->json(['status' => 'not_ajax']);
		}
	}

	/**
	 * Delete a User
	 * @param  Request $request user id
	 * @return Json           	json object with status of success or failure
	 */
	public function delete(Request $request)
	{

		if($request->ajax()){
			$id = $request->input('id');

			$user = User::find($id);
			if($user){
				$user->delete();
				return response()->json(['status' => 'success']);
			}else{
				return response()->json(['status' => 'invalid_id']);
			}
		}else{
			return response()->json(['status' => 'not_ajax']);
		}
	}

	/**
	 * Show the user edit screen to the user.
	 *
	 * @return Response
	 */
	public function editView($id)
	{
		$user = User::where('status','=',1)->get();
	    $curUser= User::with(['roles'])->find($id);
	    $srole = array();
	    foreach ($curUser->roles as $key => $value) {
	    	array_push($srole, $value->id);
	    }

	    $roles = UserRole::orderBy('name', 'asc')->get();
	    $roles_array=array();
	    foreach ($roles as $key => $value) {
	    	if(in_array($value->id, $srole, true)){
	    		array_push($roles_array, '<option selected value="'.$value->id.'">'.$value->name.'</option>');
	    	}else{
	    		array_push($roles_array, '<option  value="'.$value->id.'">'.$value->name.'</option>');
	    	}
	    }

		if($curUser){

			return view( 'userManage::user.edit' )->with([
				'curUser' => $curUser,
				'users'=>$user,
				'roles'=>$roles_array,
				 ]);
		}else{
			return view( 'errors.404' );
		}
	}

	/**
	 * Add new user data to database
	 *
	 * @return Redirect to menu add
	 */
	public function edit(UserRequest $request, $id)
	{
		// return $request->get( 'supervisor' );

		$usercount= User::where('id', '!=', $id)->where('username', '=',$request->get('username' ))->count();
			if($usercount==0){
				$userOld          =  User::with(['roles'])->where('id',$id)->take(1)->get();
				$user             =$userOld[0];
				$user->first_name = $request->get('first_name');
				$user->last_name  = $request->get('last_name');
				$user->username   =$request->get('username' );
				$user->branch=$request->get('branch');
				$user->makeChildOf(Sentinel::findById($request->get( 'supervisor' )));

				foreach ($user->roles as $key => $value) {
					$role = Sentinel::findRoleById($value->id);
					$role->users()->detach($user);
				}

				$user->save();
				//attach user for role
				foreach ($request->get( 'roles' ) as $key => $value) {
					$role = Sentinel::findRoleById($value);
			   	    $role->users()->attach($user);
				}
				return redirect( 'user/list' )->with([ 'success' => true,
					'success.message'=> 'User updated successfully!',
					'success.title' => 'Good Job!' ]);
			}else{
				return redirect('user/edit/'.$id)->with([ 'error' => true,
				'error.message'=> 'User Already Exsist!',
				'error.title' => 'Duplicate!']);
			}




	}

	public function profileView()
	{
		$user = Sentinel::getUser();

		// if (!in_array($user->permissions,['admin' => true])) {
		// 	return redirect('/');
		// }

		return view('userManage::user.profile',compact('user'));
	}

	public function updateProfile(Request $request)
	{
		$user =  Sentinel::getUser();
		$this->validate($request,['first_name' => 'required|max:255','last_name' => 'required|max:255','email' => 'email|unique:users,email,'.$user->id]);

		$user->update([
			'first_name'=> $request->first_name,
			'last_name'=> $request->last_name,
			'email'=> $request->email,
		]);

		return back()->with(['success' => 'true','success.message' => 'User Profile Updated Successfully','success.title' => 'User Profile']);
	}

	public function password(Request $request)
	{
		$user =  Sentinel::getUser();
		// $this->validate($request,);
		$validate = Validator::make($request->all(), ['old_password' => 'required|old_password', 'password' => 'required|min:6|confirmed']);

		if ($validate->fails()) {
			session()->flash('tab', 'password');
			return back()->withErrors($validate->errors());
		}

		$user->update(['password' => bcrypt($request->password)]);

		return back()->with(['success' => 'true','success.message' => 'Password Updated Successfully','success.title' => 'Password']);
	}

	public function deleteAccount(Request $request)
	{
		$this->validate($request, [
			'agree' => 'required'
		]);

		$user = Sentinel::getUser();

		$user->active = 0;
		$user->save();

		Sentinel::logout();	

		return redirect('/');

	}
}
