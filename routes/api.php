<?php

use App\Http\Controllers\API\PostCategoryController;
use App\Http\Controllers\API\PostController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

// POST Api resources route
Route::apiResource('posts', PostController::class);

// Post Category resource route
Route::get('categories',[PostCategoryController::class, 'index'])->name('postcategory.index');
