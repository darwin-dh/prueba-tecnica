<?php

namespace App\Http\Controllers\Api\Autores;

use App\Http\Controllers\Controller;
use App\Models\Autores;
use Illuminate\Http\Request;

class AutoresController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        try {
            $autores = Autores::where('status', true)->get();
            return response()->json(['status' => true, 'data' => $autores], 201);
        } catch (\Exception $e) {
            return response()->json(['message' => 'Erro ao buscar autores', 'error' => $e->getMessage()], 400);
        }
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        if (empty($request->nombre)) return response()->json(['message' => 'Error falta un campo', 'status' => 'error'], 500);
        try {
            $autores = new Autores();
            $autores->guardar(
                $request->nombre,
                $request->status ?? true,
                $request->fecha_de_nacimiento ?? null,
                $request->libros_escritos ?? null
            );
            return response()->json(['status' => true, 'message' => 'Autor guardado con éxito'], 201);
        } catch (\Exception $e) {
            return response()->json(['status' => false, 'message' => 'Erro al guardar autor', 'error' => $e->getMessage()], 400);
        }
    }

    /**
     * Display the specified resource.
     */
    public function autoreslibros(Autores $autores)
    {
        try {
            $autores = Autores::withAutoresLibros(true)->get();
            return response()->json(['status' => true, 'data' => $autores], 201);
        } catch (\Exception $e) {
            return response()->json(['message' => 'Erro ao buscar autores', 'error' => $e->getMessage()], 400);
        }
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Autores $autores)
    {
        try {
            $autores = Autores::findOrFail($autores->id_autor);
            $autoresMod = Autores::modificar(
                $autores,
                $request->nombre,
                $request->status ?? true,
                $request->fecha_de_nacimiento ?? null,
                $request->libros_escritos ?? null
            );
            return response()->json([
                'status' => true,
                'data' => $autoresMod
            ], 200);
        } catch (\Exception $e) {
            return response()->json(['status' => false, 'message' => 'Erro al guardar autor', 'error' => $e->getMessage()], 400);
        }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Autores $autores)
    {
        try {
            $borrar =  Autores::where('id_autor', $autores->id_autor)
                ->update(['status' => false]);

            return response()->json(['status' => true, 'message' => 'Autor borrado con éxito', 'data' => $borrar], 200);
        } catch (\Exception $e) {
            return response()->json(['status' => false, 'message' => 'Erro al borrar autor', 'error' => $e->getMessage()], 400);
        }
    }
}
