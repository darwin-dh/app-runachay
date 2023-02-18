<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\User;
use App\Models\Collaborator;
use Illuminate\Http\Request;

class UserController extends Controller
{
    public function index()
    {
        //
        $response = User::all();
        return response()->json(['data' => $response]);
    }
    public function login(Request $request)
    {
        $request->validate([
            'email'    => 'required|string',
            'password' => 'required|string'

        ]);
        $user = User::where("email", "=", $request->email)->first();
        if (isset($user)) {
            if (password_verify($request->password, $user->password)) {
                $user->token = $user->createToken('token')->plainTextToken;
                $user->save();
                return response()->json([
                    'status' => "success",
                    'token' => $user->token,
                    'data' =>  $user
                ], 201);
            } else {
                return response()->json(['status' => 'error', 'mensage' => 'Contraseña incorrecta'], 201);
            }
        } else {
            return response()->json(['status' => 'error', 'mensage' => 'Usuario no existe'], 201);
        }
        return response()->json(['status' =>  "success"], 201);
    }


    public function register(Request $request)
    {
        $email     = $request->email;
        $name      = $request->name;
        $last_name = $request->last_name;
        $password  = $request->password;
        $status    = $request->status;
        $link      = "";
        if (empty($email)) return response()->json(['error' => 'Correo Obligatorio'], 201);
        if (empty($password)) return response()->json(['error' => 'password Obligatorio'], 201);
        $user = User::where("email", "=", $email)->first();
        if ($user)  return response()->json(['mensage' => 'Usuario ya exite', 'status' => 'error'], 201);

        $user = new User();
        $user->saveUser(
            $email,
            $name,
            $last_name,
            $link,
            $password,
            $status
        );
        return response()->json([
            'status' => 'success',
            'data' => $user
        ]);
    }


    public function show(User $user)
    {
        //
    }


    public function update(Request $request, User $user)
    {
    }


    public function destroy(User $user)
    {
    }
}
