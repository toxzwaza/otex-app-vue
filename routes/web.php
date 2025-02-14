<?php

use App\Http\Controllers\CountController;
use App\Http\Controllers\MainController;
use App\Http\Controllers\MusicController;
use App\Http\Controllers\ProfileController;
use App\Http\Controllers\SchoolController;
use Illuminate\Foundation\Application;
use Illuminate\Support\Facades\Route;
use Inertia\Inertia;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/' , [MainController::class, 'index'])->name('index');
Route::post('/store' ,[MainController::class, 'store'])->name('store');

// サイネージ画面
Route::get('/signage', [MainController::class, 'signage'])->name('signage');
Route::get('/signage/analysis' , [MainController::class, 'signage_analysis'])->name('signage.analysis');




Route::get('/api/getAnswers', [MainController::class, 'getAnswers'])->name('getAnswers');

// 学校リスト作成
Route::get('/school', [SchoolController::class, 'create'])->name('school.create');
Route::post('/store/school', [SchoolController::class, 'store'])->name('store.school');

// 来場者数カウント
Route::get('/count', [CountController::class, 'index'])->name('count.index');
Route::get('/getCount', [CountController::class, 'getCount'])->name('getCount');

Route::post('/count/store', [CountController::class, "store"])->name('count.store');

// 打音検査アプリ
Route::get('/music', [MusicController::class, 'index']);

// Route::get('/', function () {
//     return Inertia::render('Welcome', [
//         'canLogin' => Route::has('login'),
//         'canRegister' => Route::has('register'),
//         'laravelVersion' => Application::VERSION,
//         'phpVersion' => PHP_VERSION,
//     ]);
// });

// Route::get('/dashboard', function () {
//     return Inertia::render('Dashboard');
// })->middleware(['auth', 'verified'])->name('dashboard');

// Route::middleware('auth')->group(function () {
//     Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
//     Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
//     Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
// });

require __DIR__.'/auth.php';
