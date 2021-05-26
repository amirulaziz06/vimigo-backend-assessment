<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

// Route::group(['middleware' => 'auth:api', 'prefix' => '/v2', 'namespace' => 'Api\V2', 'as' => 'api.v2.'], function () {
    // Route::apiResource('/users', 'UserController');
// });

// Route::apiResource('register', 'Api\AuthController');
Route::post('register','Api\UserController@create');
Route::get('/user', 'Api\UserController@getAll');
Route::get('/user/{id}', 'Api\UserController@getById');
Route::delete('/user/delete/{id}', 'Api\UserController@destroy');
Route::put('/user/update/{id}', 'Api\UserController@update');

Route::apiResource('/user_profile', 'API\UserProfileController')->middleware('auth:api');



Route::group(['middleware' => ['cors', 'json.response']], function () {
    Route::get('/profile', 'UserProfileController@index');
    Route::get('/profile/{id}', 'UserProfileController@show');
    Route::post('/create/profile', 'UserProfileController@store');
    Route::put('/update/profile/{id}', 'UserProfileController@update');
    Route::delete('/delete/{id}', 'UserProfileController@delete');
});