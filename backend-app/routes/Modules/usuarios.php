
<?php

use App\Http\Controllers\Api\Libros\LibrosController;
use App\Http\Controllers\Api\Usuarios\UsuariosController;
use Illuminate\Support\Facades\Route;


/**
 * @api {post} /v1/login User Login
 * @apiName UserLogin
 * @apiGroup Usuarios
 * @apiVersion 1.0.0
 * 
 * @apiDescription This endpoint allows users to log in by providing their credentials.
 * 
 * @apiParam {String} username The username of the user.
 * @apiParam {String} password The password of the user.
 * 
 * @apiSuccess {String} token The JWT token for the authenticated user.
 * @apiSuccess {String} message Success message.
 * 
 * @apiError {String} message Error message.
 * @apiError {String} error Detailed error information.
 * 
 * @apiExample {json} Request-Example:
 *     {
 *       "username": "john_doe",
 *       "password": "securepassword123"
 *     }
 * 
 * @apiSuccessExample {json} Success-Response:
 *     HTTP/1.1 200 OK
 *     {
 *       "token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9...",
 *       "message": "Login successful"
 *     }
 * 
 * @apiErrorExample {json} Error-Response:
 *     HTTP/1.1 401 Unauthorized
 *     {
 *       "message": "Invalid credentials",
 *       "error": "Unauthorized"
 *     }
 */
Route::post('/v1/login',                                  [UsuariosController::class, 'login']);
Route::get('v1/list/usuarios',                            [UsuariosController::class, 'index']);
Route::post('v1/add/usuarios',                            [UsuariosController::class, 'store']);
Route::patch('v1/edit/usuarios/{usuario}',                [UsuariosController::class, 'update']);
Route::delete('v1/delete/usuarios/{usuario}',             [UsuariosController::class, 'destroy']);
