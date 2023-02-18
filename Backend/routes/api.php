<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
require_once __DIR__ . "/modules/auth.php";
require_once __DIR__ . "/modules/collaborator.php";
require_once __DIR__ . "/modules/typeVaccine.php";
require_once __DIR__ . "/modules/statusvacine.php";