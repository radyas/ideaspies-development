<?php namespace App\Http\Controllers;

use Input;
use Sentinel;
use Session;
use Socialite;
use DB;
use Validator;
use Illuminate\Http\Request;

use UserManage\Models\User;
use UserRoles\Models\UserRole;
use App\Models\Category;
class AuthController extends Controller {

	/*
		|--------------------------------------------------------------------------
		| Welcome Controller
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
	public function __construct() {
		//$this->middleware('auth');
	}
	
    
	/**
	 * Show the application welcome screen to the user.
	 *
	 * @return Response
	 */
	public function loginView() {
        $data = Category::all();
		try {
			if (!Sentinel::check()) {				
				return view('layouts.back.login');
			} else {
				$redirect = Session::get('loginRedirect', '');
				Session::forget('loginRedirect');
				return redirect($redirect);
			}
		} catch (\Exception $e) {
			return view('layouts.back.login')->withErrors(['login' => $e->getMessage()])->with('data',$data);
		}
	}

	public function registerLoginView()
	{
        $data = Category::all();
		if (!Sentinel::check()) {
			return view('front.login')->with('data');
		}

		$redirect = Session::get('loginRedirect', '');
		Session::forget('loginRedirect');
		return redirect($redirect); 
	}

	/**
	 * Online user Registration data to database
	 *
	 * @return Redirect to online user add
	 */
	public function userRegister(Request $request)
	{
		$this->validate($request, [
			'email' => 'required|email|unique:users,email',
			'name' => 'required|max:255',
			'password' => 'required|confirmed|min:6'
		]);

		if (!empty($request->upload))
        {
            $path = 'uploads/images';
            $fileName = $this->saveFile($request->upload, $path);
            $fullPath = 'core/storage/'.$path.'/'.$fileName;

            $user = Sentinel::registerAndActivate([
                'email' => $request->email,
                'username' => $request->email,
                'password' => $request->password,
                'first_name' => $request->name,
                'img_path' => $fullPath
            ]);
        }
        else
        {
            $user = Sentinel::registerAndActivate([
                'email' => $request->email,
                'username' => $request->email,
                'password' => $request->password,
                'first_name' => $request->name,
            ]);
        }


		$user->makeRoot();

		$role = Sentinel::findRoleById(1);
		$role->users()->attach($user);

		User::rebuild();

		Sentinel::login($user);

					//  die("sssssaaaa");
		$user = User::where('email', Input::get('email'))->first();
					// die($user);
		// $this->sendEmail($user);
					//return $user
		return redirect('admin');
	}

	public function sendEmail($thisUser)
	{
        
        //die($thisUser->email);

		$token = $thisUser->varifyToken;
		$email = $thisUser->email;
		$url = route('user.varifiedEmail', ['email' => $email, 'token' => $token]);

		// Mail::send('emails.varifyEmail', ['url' => $url], function ($message) use ($thisUser) {
		// 	$message->to($thisUser->email, '')->subject('Email Confirmation for Sweet Delights Cakery Account');
		// });
//        
	}

	public function varifiedEmail($email, $token)
	{

		$users = DB::table('users')->where(['email' => $email, 'varifyToken' => $token])->first();

		if ($users) {
			DB::table('users')->where(['email' => $email, 'varifyToken' => $token])->update(['regStatus' => '1', 'varifyToken' => null]);
			return redirect('user/logout');
		} else {
			return 'User Not Found';
		}
	}
	
	public function login(Request $request) {

		$username = $request->has('username') ? $request->username : $request->email;

		$credentials = array(
			'username' => $username,
			'password' => Input::get('password'),
		);

		if (Input::get('remember')) {
			$remember = true;
		} else {
			$remember = false;
		}


		try {

			$user = Sentinel::authenticate($credentials, $remember);

			if ($user) {	

				// if ($user->active === 0) {
					
				// }
				
				
	           if($user->hasAnyAccess(['front'])){
					$redirect = Session::get('loginRedirect', 'admin');
				}else{
					$redirect = Session::get('loginRedirect', 'admin');
				}
				Session::forget('loginRedirect');
				
				return redirect($redirect);

			} 

			if ($request->has('email')) {
				return redirect('login')->with(['error' => 'Invalid email or password. Please try again']);
			}
			
			return redirect('user/login');
			
		} catch (\Exception $e) {
			return $msg = $e->getMessage();
		}
		
		
	}


	public function login_front(Request $request) {

		$username = $request->has('username') ? $request->username : $request->email;

		$credentials = array(
			'username' => $username,
			'password' => Input::get('password'),
		);

		if (Input::get('remember')) {
			$remember = true;
		} else {
			$remember = false;
		}


		try {

			$user = Sentinel::authenticate($credentials, $remember);

			if ($user) {	
				return redirect()->route('index');

			} 

			if ($request->has('email')) {
				return redirect('login')->with(['error' => 'Invalid email or password. Please try again']);
			}
			
			return redirect('/');
			
		} catch (\Exception $e) {
			return $msg = $e->getMessage();
		}
		
		
	}
	/*
		*	@method logout()
		*	@description Logging out the logged in user
		*	@return URL redirection
	*/
	public function logout() {
		Sentinel::logout();		
		return redirect()->to('/');

	}


     /**
     * Redirect the user to the FACEBOOK authentication page.
     *
     * @return Response
     */
    public function redirectToFacebook()
    {
        return Socialite::driver('facebook')->redirect();
    }
 	/**
     * Redirect the user to the Google authentication page.
     *
     * @return Response
     */
    public function redirectToGoogle()
    {
        return Socialite::driver('google')->redirect();
    }

    /**
     * Obtain the user information from FACEBOOK.
     *
     * @return Response
     */
    public function handleFacebookCallback()
    {
        $user = Socialite::driver('facebook')->user();
        $user_details=$user->user;        
        if(User::where('fb_id',$user_details['id'])->exists()){
        	$fbloged_user=User::where('fb_id',$user_details['id'])->get();
        	$fbloged_user=$fbloged_user[0];        	
        	$user_login = Sentinel::findById($fbloged_user->id);
			Sentinel::login($user_login);
        	return redirect('/');
        }else{
        	try {
				$registed_user=DB::transaction(function ()  use ($user_details){

					$user = Sentinel::registerAndActivate([								
						'email' =>$user_details['id'].'@fbmail.com',
						'username' => $user_details['name'],
						'password' => $user_details['id'],
						'fb_id' => $user_details['id']
					]);

					if (!$user) {
						throw new TransactionException('', 100);
					}

					$user->makeRoot();

					$role = Sentinel::findRoleById(1);
					$role->users()->attach($user);

					User::rebuild();
					return $user;
					

				});
				Sentinel::login($registed_user);
        		return redirect('/');

			} catch (TransactionException $e) {
				if ($e->getCode() == 100) {
					Log::info("Could not register user");

					return redirect('user/register')->with(['error' => true,
						'error.message' => "Could not register user",
						'error.title' => 'Ops!']);
				}
			} catch (Exception $e) {

			}
        }
        

        
       
       

        // $user->token;
    }/**
     * Obtain the user information from Google.
     *
     * @return Response
     */
    public function handleGoogleCallback()
    {	
	     $user = Socialite::driver('google')->user();
	     $user_details=$user->user;
	     // return $user_details['emails'][0]['value'];

       if(User::where('g_id',$user_details['id'])->exists()){

	    	$fbloged_user=User::where('g_id',$user_details['id'])->get();
	    	$fbloged_user=$fbloged_user[0];        	
	    	$user_login = Sentinel::findById($fbloged_user->id);
			Sentinel::login($user_login);
	    	return redirect('/');
        }else{

        	try {
				$registed_user=DB::transaction(function ()  use ($user_details){

					$user = Sentinel::registerAndActivate([								
						'email' =>$user_details['emails'][0]['value'],
						'username' => $user_details['emails'][0]['value'],
						'password' => $user_details['id'],
						'g_id' => $user_details['id']
					]);

					if (!$user) {
						throw new TransactionException('', 100);
					}

					$user->makeRoot();

					$role = Sentinel::findRoleById(1);
					$role->users()->attach($user);

					User::rebuild();
					return $user;
					

				});
				Sentinel::login($registed_user);
        		return redirect('/');

			} catch (TransactionException $e) {
				if ($e->getCode() == 100) {
					Log::info("Could not register user");

					return redirect('user/register')->with(['error' => true,
						'error.message' => "Could not register user",
						'error.title' => 'Ops!']);
				}
			} catch (Exception $e) {

			}
        }
       
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
