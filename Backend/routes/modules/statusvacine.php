<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\API\StatusVaccineController;



//auth
Route::get('/list-status-vaccine', [StatusVaccineController::class, 'index']);

