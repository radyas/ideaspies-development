<?php
/**
 * Blog MANAGEMENT ROUTES
 *
 * @version 1.0.0
 * @author Praveen Chameera <praveenchameera@gmail.com>
 * @copyright 2017 Praveen Chameera
 */

/**
 * post AUTHENTICATION MIDDLEWARE
 */
Route::group(['middleware' => ['auth']], function()
{
  Route::group(['prefix' => 'admin/post', 'namespace' => 'PostManage\Http\Controllers'], function () {
    /**
     * GET Routes
     */
    Route::get('add', [
      'as' => 'post.add', 'uses' => 'PostController@addView'
    ]);

    Route::get('edit/{id}', [
      'as' => 'post.edit', 'uses' => 'PostController@editView'
    ]);

    Route::get('list', [
      'as' => 'post.list', 'uses' => 'PostController@listView'
    ]);

    Route::get('json/list', [
      'as' => 'post.list', 'uses' => 'PostController@jsonList'
    ]);
    
    Route::get('notification', [
      'as' => 'post.notification', 'uses' => 'PostController@notification'
    ]);

    /**
     * POST Routes
     */
    Route::post('add', [
      'as' => 'post.add', 'uses' => 'PostController@add'
    ]);

    Route::post('edit/{id}', [
      'as' => 'post.edit', 'uses' => 'PostController@edit'
    ]);

    Route::post('delete', [
      'as' => 'post.delete', 'uses' => 'PostController@delete'
    ]);
    
    Route::post('seen', [
      'as' => 'post.seen', 'uses' => 'PostController@seen'
    ]);
    
    Route::post('idea-of-the-week', [
      'as' => 'post.idea.of.the.week', 'uses' => 'PostController@ideaOfTheWeek'
    ]);
    
  });
});

/**
 * Route for user posts
 */

// Route::post('addPost', 'PostsController@add');

Route::group(['namespace' => 'App\Http\Controllers'], function () {
    Route::post('addPost', [
      'as' => 'user.post.add', 'uses' => 'PostsController@add'
    ]);
    
  });