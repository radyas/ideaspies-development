<?php
/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/
Route::get('error', function(){
      return view('front.404');
    });
/**
 * USER AUTHENTICATION MIDDLEWARE
 */

/*DONT USE THIS ROUTE FOR OTHER USAGE ----ONLY FOR THIS */
Route::group(['middleware' => ['auth']], function()
{
    Route::get('admin', [
      'as' => 'dashboard', 'uses' => 'WelcomeController@index'
    ]);
    Route::post('post-comment', 'WebController@comment');
});

Route::get('notify', 'WebController@notifications');

Route::get('notifications', function(){
  if(Sentinel::check())
  {
	return redirect('notify');
  }
  else
  {
    return abort(404);
  }
});

Route::get('my-posts', 'WebController@myPosts');
Route::get('search', 'WebController@search');
Route::get('sort/{id}', 'WebController@sort');
Route::get('share/{id}/{type}', 'WebController@share_count');

Route::group([], function()
{
    Route::get('/', [
      'as' => 'index', 'uses' => 'WebController@index'
    ]);

    // related to posts
    Route::get('post/{id}', 'WebController@postView');
    Route::get('post/{id}/edit', 'WebController@editComment');

    // Route::get('login', 'AuthController@registerLoginView')->name('login');
    Route::get('register', 'FrontEndController@register');
    Route::get('reset', 'FrontEndController@forget');

    Route::post('reset', 'FrontEndController@forget');

    Route::get('about-us','FrontEndController@about');
    Route::get('privacy','FrontEndController@privacy');
    Route::get('terms-of-use','FrontEndController@terms');
    Route::get('guidelines','FrontEndController@guidelines');
    Route::get('top-tips','FrontEndController@tips');
    Route::get('enterprise','FrontEndController@enterprise');
    Route::get('contact-us','FrontEndController@contact');
    Route::get('login','FrontEndController@login')->name('login');
    
    Route::group(['middleware' => 'auth_front'], function() {
        Route::get('post-with-image','PostsController@viewImage');
        Route::get('post-with-video','PostsController@viewVideo');
        Route::get('post-with-url','PostsController@viewUrl');
    });


});
// posts
    Route::post('post-rate', 'WebController@ratePost');

/**
 * USER REGISTRATION & LOGIN
 */

Route::get('user/login', [
  'as' => 'user.login', 'uses' => 'AuthController@loginView'
]);
Route::post('user/login', [
  'as' => 'user.login', 'uses' => 'AuthController@login'
]);
Route::post('login', [
  'as' => 'front.login', 'uses' => 'AuthController@login_front'
]);

Route::get('user/logout', [
  'as' => 'user.logout', 'uses' => 'AuthController@logout'
]);

Route::post('user/register', [
  'as' => 'user.register', 'uses' => 'AuthController@userRegister'
]);
Route::get('user/varifiedEmail/{email}/{token}', [
  'as' => 'user.varifiedEmail', 'uses' => 'AuthController@varifiedEmail'
]);

/**
 * USER LOGIN VIA FACEBOOK/GOOGLE/TWITTER/LINKDIN ETC
 */

Route::get('auth/facebook', 'AuthController@redirectToFacebook');
Route::get('auth/facebook/callback', 'AuthController@handleFacebookCallback');

Route::get('auth/google', 'AuthController@redirectToGoogle');
Route::get('auth/google/callback', 'AuthController@handleGoogleCallback');
Route::post('contactus', 'WebController@contact');
