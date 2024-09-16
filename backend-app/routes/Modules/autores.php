
<?php

use App\Http\Controllers\Api\Autores\AutoresController;
use Illuminate\Support\Facades\Route;
/**
 * API Routes for Autores Module
 * 
 * This file defines the routes for managing autores (authors) and their libros (books).
 * 
 * Routes:
 * 
 * - GET /v1/list/autores
 *   Retrieves a list of all autores.
 *   Controller: AutoresController
 *   Method: index
 * 
 * - GET /v1/list/autores/libros
 *   Retrieves a list of autores along with their libros.
 *   Controller: AutoresController
 *   Method: autoreslibros
 * 
 * - POST /v1/add/autores
 *   Adds a new autor.
 *   Controller: AutoresController
 *   Method: store
 * 
 * - PUT /v1/edit/autores/{autores}
 *   Updates an existing autor.
 *   Controller: AutoresController
 *   Method: update
 *   Parameters:
 *     - {autores}: The ID of the autor to update.
 * 
 * - DELETE /v1/delete/autores/{autores}
 *   Deletes an existing autor.
 *   Controller: AutoresController
 *   Method: destroy
 *   Parameters:
 *     - {autores}: The ID of the autor to delete.
 */
//autores libros
Route::get('v1/list/autores',                [AutoresController::class, 'index']);
Route::get('v1/list/autores/libros',         [AutoresController::class, 'autoreslibros']);
Route::post('v1/add/autores',                [AutoresController::class, 'store']);
Route::put('v1/edit/autores/{autores}',      [AutoresController::class, 'update']);
Route::delete('v1/delete/autores/{autores}', [AutoresController::class, 'destroy']);
