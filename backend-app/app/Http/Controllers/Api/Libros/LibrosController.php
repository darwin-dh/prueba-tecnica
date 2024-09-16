<?php

namespace App\Http\Controllers\Api\Libros;

use App\Http\Controllers\Controller;
use App\Models\Libros;
use Illuminate\Http\Request;

class LibrosController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        try {
            $libros = Libros::where('status', true)
                ->withAutor(true)
                ->orderBY('id_libro', 'desc')
                ->get();
            return response()->json(['status' => true, 'data' => $libros], 201);
        } catch (\Exception $e) {
            return response()->json(['message' => 'Erro ao buscar libros', 'error' => $e->getMessage()], 400);
        }
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        if (empty($request->id_autor)) return response()->json(['message' => 'Error falta un campo', 'status' => 'error'], 500);
        try {
            $libros = new Libros();
            $libros->guardar(
                $libros->status      = $request->status ?? true,
                $libros->titulo      = $request->titulo ?? null,
                $libros->ayer        = $request->ayer ?? null,
                $libros->genero      = $request->genero ?? null,
                $libros->idioma      = $request->idioma ?? null,
                $libros->descripcion = $request->descripcion ?? null,
                $libros->id_autor    = $request->id_autor,
            );
            return response()->json(['status' => true, 'message' => 'Libro guardado con éxito'], 201);
        } catch (\Exception $e) {
            return response()->json(['status' => false, 'message' => 'Erro al guardar libro', 'error' => $e->getMessage()], 400);
        }
    }

    /**
     * Display the specified resource.
     */
    public function filtros(Request $request)
    {
        try {
            $libros = Libros::filtrar($request)
                ->orderBY('id_libro', 'desc')
                ->get();
            return response()->json(['status' => true, 'data' => $libros], 201);
        } catch (\Exception $e) {
            return response()->json(['message' => 'Erro ao buscar libros', 'error' => $e->getMessage()], 400);
        }
    }


    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Libros $libros)
    {

        try {
            $libros = Libros::findOrFail($libros->id_libro);
            $librosMod = Libros::modificar(
                $libros,
                $libros->status      = $request->status ?? true,
                $libros->titulo      = $request->titulo ?? null,
                $libros->ayer        = $request->ayer ?? null,
                $libros->genero      = $request->genero ?? null,
                $libros->idioma      = $request->idioma ?? null,
                $libros->descripcion = $request->descripcion ?? null,
                $libros->id_autor    = $request->id_autor,
            );
            return response()->json(['status' => true, 'message' => 'Libro modificado con éxito', 'data' => $librosMod], 201);
        } catch (\Exception $e) {
            return response()->json(['status' => false, 'message' => 'Erro al modificar libro', 'error' => $e->getMessage()], 400);
        }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Libros $Libros)
    {
        try {
            $borrar =  Libros::where('id_libro', $Libros->id_libro)
                ->update(['status' => 0]);

            return response()->json(['status' => true, 'message' => 'libro borrado con éxito', 'data' => $borrar], 200);
        } catch (\Exception $e) {
            return response()->json(['status' => false, 'message' => 'Erro al borrar autor', 'error' => $e->getMessage()], 400);
        }
    }
}
