<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::get('stock-obat', function () {
    return view('stock');
});

Route::get('add-obat', function () {
    return view('add_obat');
});

Route::get('dokter-peresep', function () {
  return view('dokter');
});

Route::post('dokter-peresep-action', [
  'uses' => 'DokterController@inputDokter'
]);

Route::post('add-obat-action', [
    'uses' => 'ObatController@inputObat'
]);
