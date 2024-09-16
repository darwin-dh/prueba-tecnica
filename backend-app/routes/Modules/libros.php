
<?php

use App\Http\Controllers\Api\Libros\LibrosController;
use Illuminate\Support\Facades\Route;

/**
 * API Routes for Libros Module
 * 
 * Route: GET v1/list/libros
 * Description: Retrieves a list of all libros.
 * Controller Method: LibrosController@index
 * 
 * Route: GET v1/list/libros/filtros
 * Description: Retrieves a list of libros based on specified filters.
 * Controller Method: LibrosController@filtros
 * 
 * Route: POST v1/add/libros
 * Description: Adds a new libro to the collection.
 * Controller Method: LibrosController@store
 * 
 * Route: PUT v1/edit/libros/{libros}
 * Description: Updates the details of an existing libro.
 * Controller Method: LibrosController@update
 * 
 * Route: DELETE v1/delete/libros/{libros}
 * Description: Deletes an existing libro from the collection.
 * Controller Method: LibrosController@destroy
 */
Route::get('v1/list/libros',                [LibrosController::class, 'index']);
Route::get('v1/list/libros/filtros',        [LibrosController::class, 'filtros']);
Route::post('v1/add/libros',                [LibrosController::class, 'store']);
Route::put('v1/edit/libros/{libros}',       [LibrosController::class, 'update']);
Route::delete('v1/delete/libros/{libros}',  [LibrosController::class, 'destroy']);
