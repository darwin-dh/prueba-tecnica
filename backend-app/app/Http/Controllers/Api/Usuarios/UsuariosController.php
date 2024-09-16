<?php

namespace App\Http\Controllers\Api\Usuarios;

use App\Http\Controllers\Controller;
use App\Models\UsuarioRol;
use App\Models\Usuarios;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class UsuariosController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return response()->json(['status' => 'success'], 201);
    }
    public function login(Request $request)
    {
        if (empty($request->email && $request->password)) return response()->json(['message' => 'Campos requeridos'], 404);
        $request->validate([
            'email'    => 'required|string',
            'password' => 'required|string'

        ]);

        $user = Usuarios::where("email", $request->email)
            ->where('status', true)
            ->first();

        $iduser = $user->id_usuario;
        if (!$user) return response()->json(['message' => 'Usuario no encontrado'], 404);
        $rol = UsuarioRol::where('id_usuario', $iduser)
            ->withRole(true)
            ->first();

        $temp = [

            'id_usuario' => $user->id_usuario,
            'email' => $user->email,
            'rol' => $rol->rol->nombre,
            'status' => $user->status

        ];

        if ($user && Hash::check($request->password, $user->password)) {
            $temp = [

                'id_usuario' => $user->id_usuario,
                'email' => $user->email,
                'rol' => $rol->rol->nombre,
                'status' => $user->status

            ];
            return response()->json(['status' => true, 'data' => $temp], 201);
        } else {
            return response()->json(['message' => 'usuario o contraseña incorrectos/desactivado', "status" => "errors"], 404);
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
    public function show(Usuarios $usuarios)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Usuarios $usuarios)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Usuarios $usuarios)
    {
        //
    }
}
