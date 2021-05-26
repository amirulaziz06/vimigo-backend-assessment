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

// Route::middleware('auth:api')->get('/user', function (Request $request) {
//     return $request->user();
// });

Route::group(['middleware' => ['cors', 'json.response']], function () {
    // public route
    Route::post('/login', 'Auth\ApiAuthController@login')->name('login.api');
    Route::post('/register', 'Auth\ApiAuthController@register')->name('register.api');

});

Route::middleware('auth:api')->group(function () {
    // protected route
    Route::post('/logout', 'Auth\ApiAuthController@logout')->name('logout.api');

    Route::get('/profile', 'API\UserProfileController@index');
    Route::get('/profile/{id}', 'API\UserProfileController@show');
    Route::post('/create/profile', 'API\UserProfileController@store');
    Route::put('/update/profile/{user_id}', 'API\UserProfileController@update');
    Route::delete('/delete/{id}', 'API\UserProfileController@destroy');
});