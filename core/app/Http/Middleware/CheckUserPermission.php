<?php

namespace App\Http\Middleware;

use Closure;
use Sentinel;

class CheckUserPermission
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next, $permission)
    {
        $user = Sentinel::getUser();

        if ($user->hasAnyAccess([$permission])) {
            # code...
            return $next($request);
        }
        return redirect('/');
    }
}
