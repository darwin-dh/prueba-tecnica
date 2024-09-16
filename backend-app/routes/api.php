<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
Route::group([], function () {
    require_once __DIR__ . "/Modules/autores.php";
    require_once __DIR__ . "/Modules/libros.php";
    require_once __DIR__ . "/Modules/usuarios.php";
    require_once __DIR__ . "/Modules/chart.php";
});
