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

Route::middleware('customerauth')->group(function(){
    Route::get('customers/show/{id}', ['uses' => 'CustomerApi\CustomersController@show', 'as' => 'customer.show']);
});

Route::resource('kategoris', 'KategoriApi\KategorisController',['only'=>'index']);
Route::resource('movies', 'MovieApi\MoviesController',['only'=>'index']);
Route::get('movies/show/{id}', ['uses' => 'MovieApi\MoviesController@show', 'as' => 'movie.show']);
Route::get('movies/showbykat/{id}', ['uses' => 'MovieApi\MoviesController@showByKat', 'as' => 'movie.showbykat']);

Route::post('customers/store', ['uses' => 'CustomerApi\CustomersController@store', 'as' => 'customer.store']);
Route::post('customerslogin/store', ['uses' => 'CustomerApi\CustomersLoginController@store', 'as' => 'customerlogin.store']);

Route::post('orders/store', ['uses' => 'OrderApi\OrdersController@store', 'as' => 'order.store']);
