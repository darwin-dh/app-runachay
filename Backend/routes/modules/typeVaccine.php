<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\API\TypeVaccineController;



//auth
Route::get('/list-typevaccine', [TypeVaccineController::class, 'index']);

