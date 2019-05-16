<?php
/**
 * Blog MANAGEMENT ROUTES
 *
 * @version 1.0.0
 * @author Praveen Chameera <praveenchameera@gmail.com>
 * @copyright 2017 Praveen Chameera
 */

/**
 * category AUTHENTICATION MIDDLEWARE
 */
Route::group(['middleware' => ['auth', 'check_permission:admin']], function()
{
  Route::group(['prefix' => 'admin/category', 'namespace' => 'CategoryManage\Http\Controllers'], function () {
    /**
     * GET Routes
     */
    Route::get('add', [
      'as' => 'category.add', 'uses' => 'CategoryController@addView'
    ]);

    Route::get('edit/{id}', [
      'as' => 'category.edit', 'uses' => 'CategoryController@editView'
    ]);

    Route::get('list', [
      'as' => 'category.list', 'uses' => 'CategoryController@listView'
    ]);

    Route::get('json/list', [
      'as' => 'category.list', 'uses' => 'CategoryController@jsonList'
    ]);

    /**
     * POST Routes
     */
    Route::post('add', [
      'as' => 'category.add', 'uses' => 'CategoryController@add'
    ]);

    Route::post('edit/{id}', [
      'as' => 'category.edit', 'uses' => 'CategoryController@edit'
    ]);

    Route::post('delete', [
      'as' => 'category.delete', 'uses' => 'CategoryController@delete'
    ]);
  });
});
