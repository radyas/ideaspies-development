<?php
/**
 * Blog MANAGEMENT ROUTES
 *
 * @version 1.0.0
 * @author Praveen Chameera <praveenchameera@gmail.com>
 * @copyright 2017 Praveen Chameera
 */

/**
 * USER AUTHENTICATION MIDDLEWARE
 */
Route::group(['middleware' => ['auth']], function()
{
    Route::group(['prefix' => 'admin/setting', 'namespace' => 'SettingManage\Http\Controllers'], function(){
      /**
       * GET Routes
       */
      Route::get('all', [
        'as' => 'setting.all', 'uses' => 'SettingController@addView'
      ]);



      /**
       * POST Routes
       */
      Route::post('all', [
        'as' => 'setting.all', 'uses' => 'SettingController@add'
      ]);



    });
});
