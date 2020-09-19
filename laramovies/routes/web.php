<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Auth::routes(['register'=>false, 'reset'=>false]);

Route::group(['prefix' => 'admin', 'middleware' => 'auth'], function(){
    // Route::get('/home', 'HomeController@index')->name('home');
    Route::get('/home', ['uses' => 'HomeController@index', 'as' => 'home']);
    Route::get('/movie', ['uses' => 'MoviesController@index', 'as' => 'movie']);
    Route::get('/movie/create', ['uses' => 'MoviesController@create', 'as' => 'movie.create']);
    Route::post('/movie/store', ['uses' => 'MoviesController@store', 'as' => 'movie.store']);
    Route::get('/movie/edit/{id}', ['uses' => 'MoviesController@edit', 'as' => 'movie.edit']);
    Route::post('/movie/update/{id}', ['uses' => 'MoviesController@update', 'as' => 'movie.update']);
    Route::get('/movie/delete/{id}', ['uses' => 'MoviesController@destroy', 'as' => 'movie.delete']);

    Route::get('/kategori', ['uses' => 'KategorisController@index', 'as' => 'kategori']);
    Route::get('/kategori/create', ['uses' => 'KategorisController@create', 'as' => 'kategori.create']);
    Route::post('/kategori/store', ['uses' => 'KategorisController@store', 'as' => 'kategori.store']);
    Route::get('/kategori/edit/{id}', ['uses' => 'KategorisController@edit', 'as' => 'kategori.edit']);
    Route::post('/kategori/update/{id}', ['uses' => 'KategorisController@update', 'as' => 'kategori.update']);

    Route::get('/kategori/delete/{id}', ['uses' => 'KategorisController@destroy', 'as' => 'kategori.delete']);



});




