<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\Collaborator;
use App\Models\CollaboratorDetails;
use App\Models\User;
use Illuminate\Http\Request;

class CollaboratorController extends Controller
{

    public function index()
    {
        $response = Collaborator::where('status', '=', 1)
            ->withUser(true)
            ->withDetails(true)
            ->get();

        if ($response->isEmpty()) return response()->json(['mensage' => 'No hay colaboradores', "status" => "error"], 201);
        return response()->json(['data' => $response, 'status' => 'success'], 201);
    }


    public function store(Request $request)
    {
        try {
            //collaborator
            $identification     = $request->identification;
            $name               = $request->name;
            $last_name          = $request->last_name;
            $email              = $request->email;
            $status             = $request->status;
            //details
            $birthdate          = $request->birthdate;
            $address            = $request->address;
            $phone              = $request->phone;
            $vaccination_status = $request->vaccination_status;
            $type_vaccine       = $request->type_vaccine;


            //existencias
            $identificationExist = Collaborator::where("identification", "=", $identification)->first();
            if ($identificationExist)  return response()->json(['mensage' => 'Cedula ya exite', 'status' => 'error'], 201);
            $userExist = User::where("email", "=", $email)->first();
            if ($userExist)  return response()->json(['mensage' => 'Usuario ya exite', 'status' => 'error'], 201);
            //validation
            if (empty($identification)) return response()->json(['status' => "400", 'mensage' => 'Falta cedula'], 201);
            if (empty($name)) return response()->json(['status' => "400", 'mensage' => 'Falta Nombre'], 201);
            if (empty($last_name)) return response()->json(['status' => "400", 'mensage' => 'Falta Apellido'], 201);
            if (empty($email)) return response()->json(['status' => "400", 'mensage' => 'Falta Email'], 201);


            //user
            $password        = $request->password;
            $link = "collaborator";
            $user = new User();
            $user->saveUser(
                $email,
                $name,
                $last_name,
                $link,
                $password,
                $status
            );
            $iduser = $user->getKey();
            $collaborator = new Collaborator();
            $collaborator->saveCollaborator(
                $identification,
                $name,
                $last_name,
                $email,
                $status,
                $iduser
            );
            $idcollaborator = $collaborator->getKey();
            $collaboratorDetails = new CollaboratorDetails();
            $collaboratorDetails->saveCollaboratorDetails(
                $birthdate,
                $address,
                $phone,
                $vaccination_status,
                $type_vaccine,
                $idcollaborator
            );
        } catch (\Exception $e) {
            return response()->json(['error' => $e->getMessage()], 201);
        }
    }


    public function filters(Request $request)
    {
        $fechainicio = $request->fechainicio;
        $fechafin = $request->fechafin;
        $estadovacuna = $request->estadovacuna;
        $tipovacuna = $request->tipovacuna;
        $query = CollaboratorDetails::where('vaccination_status', '=', $estadovacuna)
            ->where('type_vaccine', '=', $tipovacuna)
            ->Fechas($fechainicio, $fechafin)
            ->get();
        $temp = [];
        foreach ($query as $item) {
            $idcollaborator = $item->id_collaborator;
        }
        array_push($temp, $idcollaborator);
        $response = Collaborator::where('id_collaborator', '=', $idcollaborator)
            ->withDetails(true)
            ->get();
        return response()->json(['data' =>  $response], 201);
    }


    public function update(Request $request, Collaborator $collaborator)
    {
        try {
            $idcollaborator = $request->idcollaborator;
            //collaborator
            $identification     = $request->identification;
            $name               = $request->name;
            $last_name          = $request->last_name;
            $email              = $request->email;
            $status             = $request->status;
            //details
            $birthdate          = $request->birthdate;
            $address            = $request->address;
            $phone              = $request->phone;
            $vaccination_status = $request->vaccination_status;
            $type_vaccine       = $request->type_vaccine;
            if (empty($idcollaborator)) {
                return response()->json(
                    ['error' => 'Falta id del colaborador'],
                    201
                );
            }

            $idcollaborator = $request->idcollaborator;
            $collaborator = Collaborator::findOrFail($idcollaborator);
            $collaboratormod = Collaborator::updateCollaborator(
                $collaborator,
                $identification,
                $name,
                $last_name,
                $email,
                $status,
            );

            $collaboratorDetails = CollaboratorDetails::where('id_collaborator', '=', $idcollaborator)->firstOrFail();
            $collaboratorDetailsmod = CollaboratorDetails::updateCollaboratorDetails(
                $collaboratorDetails,
                $birthdate,
                $address,
                $phone,
                $vaccination_status,
                $type_vaccine
            );

            return response()->json([
                'status' => 'success',
                'data' => $collaboratormod, $collaboratorDetailsmod
            ]);
        } catch (\Exception $e) {
            return response()->json(['error' => $e->getMessage()], 201);
        }
    }


    public function destroy(Request $request)
    {
        try {
            $response = Collaborator::findOrFail($request->idCollaborator);
            $response->status = 0;
            $response->save();
            return response()->json(['status' => 'success'], 201);
        } catch (\Exception $e) {
            return response()->json(['error' => $e->getMessage()], 201);
        }
    }
}
