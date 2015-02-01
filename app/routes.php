<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the Closure to execute when that URI is requested.
|
*/

Route::get("home", "HomeController@index");

Route::get("user", "UserController");

Route::get("user/{username}", "UserController@view");


Route::get("login", "UserController@login");

Route::get("validate_login", "UserController@validate_login");

Route::get("logout", "UserController@logout");

Route::get("upload-photo", "UserController@upload_photo");

Route::post("submit-album", "UserController@submit_album");


Route::get("video/{id}", ['uses' =>'VideoController@index']);

	

// Route::resource('user', 'UserController');

