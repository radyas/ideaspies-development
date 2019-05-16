<?php namespace App\Http\Middleware;

use App\Classes\DynamicMenu;
use Closure;
use Request;
use Route;
use MenuManage\Models\Menu;
use Permissions\Models\Permission;
use Sentinel;
use Session;

class AuthenticateFront {

	/**
	 * Handle an incoming request.
	 *
	 * @param  \Illuminate\Http\Request  $request
	 * @param  \Closure  $next
	 * @return mixed
	 */
	public function handle($request, Closure $next) {
		try {
			if (!Sentinel::check()) {
				Session::put('loginRedirect', $request->url());
				return redirect()->route('login');
			} else {
				$user = Sentinel::getUser();
				$action = Route::currentRouteName();
				$permissions = Permission::whereIn('name', [$action, 'admin', 'user'])->where('status', '=', 1)->lists('name');
				if (!$user->hasAnyAccess($permissions)) {
					return response()->view('front.errors.404');
				}
			}
		} catch (\Exception $e) {
			Session::put('loginRedirect', $request->url());
			return redirect()->route('login');
		}

		view()->share('user', $user);

		return $next($request);
	}

}
