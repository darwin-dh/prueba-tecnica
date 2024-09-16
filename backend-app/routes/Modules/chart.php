
<?php

use App\Http\Controllers\Api\Autores\AutoresController;
use App\Http\Controllers\API\Chart\WeatherDataController;
use Illuminate\Support\Facades\Route;
//autores libros
Route::get('v1/list/chart',                [WeatherDataController::class, 'index']);