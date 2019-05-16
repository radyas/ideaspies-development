<?php namespace App\Providers;

use Validator;
use Schema;
use Illuminate\Support\ServiceProvider;
use App\Validators\ReCaptcha;
use PostManage\Models\Post;
use View;
use Hash;
use Sentinel;

class AppServiceProvider extends ServiceProvider {

	/**
	 * Bootstrap any application services.
	 *
	 * @return void
	 */
	public function boot()
	{
		view()->composer('layouts.back.master', function ($view) {
			$unseenPost = Post::unseenPosts();

			$view->with('unseenPosts', $unseenPost);
			$view->with('unseenPostsCount', $unseenPost->count());
			$view->with('unseenPostsCountShow', $unseenPost->count() >= 100 ? "99+" : $unseenPost->count());
			$view->with('unseenPostsLimited', $unseenPost->slice(1,4));
		});

		Validator::extend('recaptcha','App\\Validators\\ReCaptcha@validate');
		
		Validator::extend('old_password', function($attribute, $value, $parameters)
		{
			$user =  Sentinel::getUser();			
			return Hash::check($value,$user->password);
		});
	}

	/**
	 * Register any application services.
	 *
	 * @return void
	 */
	public function register()
	{
		//
	}

}
