<?php
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\API\UserController;



//auth
Route::get('/list-user', [UserController::class, 'index']);
Route::post('/login', [UserController::class, 'login']);
Route::post('/add-user', [UserController::class, 'register']);
