<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\API\CollaboratorController;



//auth
Route::get('/list-collaborator', [CollaboratorController::class, 'index']);
Route::post('/add-collaborator', [CollaboratorController::class, 'store']);
Route::post('/delete-collaborator', [CollaboratorController::class, 'destroy']);
Route::post('/update-collaborator', [CollaboratorController::class, 'update']);
Route::post('/filter-collaborators', [CollaboratorController::class, 'filters']);
