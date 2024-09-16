<?php

namespace App\Http\Controllers\API\Chart;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\WeatherData;

class WeatherDataController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        try {
            $res = WeatherData::all();
            return response()->json(['status' => true, 'data' => $res], 201);
        } catch (\Exception $e) {
            return response()->json(['message' => 'Erro ao buscar autores', 'error' => $e->getMessage()], 400);
        }
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
