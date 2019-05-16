<?php

namespace App\Providers;

use Illuminate\Support\Facades\View;
use Illuminate\Support\ServiceProvider;
use Request;

use SettingManage\Models\Setting;
use App\Models\Category;

use Session;

class ViewComposerServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap the application services.
     *
     * @return void
     */
    public function boot()
    {
        $cart_array=[];
        view()->composer('*', function ($view)
        {
            $links = Setting::find(1);
            $categories = Category::all();
            $view->with(['media'=>$links,'data'=>$categories]);
        });
    }

    /**
     * Register the application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }
}