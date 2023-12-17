<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\VehicleController;
use App\Http\Controllers\AdminAuthController;
use App\Http\Controllers\VehicleDataTransferController; 

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

Route::get('/admin', function () {
    return view('welcome');
})->name('admin');

Route::get('/', [VehicleController::class, 'index'])->name('home');
Route::get('/stock', [VehicleController::class, 'stock'])->name('stock');
Route::get('/search', [VehicleController::class, 'search'])->name('search');
Route::post('/quick_search', [VehicleController::class, 'quick_search'])->name('quick_search');
Route::post('/stock_search', [VehicleController::class, 'stock_search'])->name('stock_search');
Route::post('/advanced_search', [VehicleController::class, 'advanced_search'])->name('adv_search');

Route::get('/calculate', [VehicleController::class, 'priceCalculate'])->name('price_calculate');
Route::post('/calculate', [VehicleController::class, 'calculate'])->name('calculate');

Route::get('/profile', [VehicleController::class, 'profile'])->name('profile');
Route::get('/howto_buy', [VehicleController::class, 'howto'])->name('howto');
Route::get('/contact', [VehicleController::class, 'contact'])->name('contact');
Route::get('/review', [VehicleController::class, 'review'])->name('review');


//admin section
Route::get('/login', [AdminAuthController::class, 'login'])->name('login')->middleware('alreadyLoggedIn');
Route::post('/login-admin', [AdminAuthController::class, 'loginAdmin'])->name('login-admin');

Route::get('/register', [AdminAuthController::class, 'register'])->name('register');
Route::post('/register-admin', [AdminAuthController::class, 'registerUser'])->name('register-admin');
Route::get('/dashboard-admin', [AdminAuthController::class, 'dashboard'])->middleware('isLoggedIn');
Route::get('/logout', [AdminAuthController::class, 'logout'])->name('logout');

Route::get('/a2list', [VehicleDataTransferController::class, 'a2list'])->middleware('isLoggedIn');



// Route::controller(VehicleController::class)->group(function () {
//     Route::get('/', 'index')->name('home');
//     Route::post('/quick_search', 'quick_search')->name('qsearch');
//     Route::get('/stock', 'stock')->name('stock');
//     Route::post('/stock_search', 'search_stock')->name('search_stock');
//     Route::get('/search', 'search')->name('search');
//     Route::post('/advanced_search', 'advanced_search')->name('adv_search');
//     Route::get('/calculate', 'priceCalculate')->name('price_calculate');
//     Route::post('/calculate', 'calculate')->name('calculate');

//     Route::get('/howto_buy', 'howto')->name('howto');
//     Route::get('/contact', 'contact')->name('contact');
//     Route::get('/review', 'customer_review')->name('review');
//     Route::get('/profile', 'profile')->name('profile');
// });


Route::get('/dashboard', function () {
    return view('dashboard');})->middleware(['auth'])->name('dashboard');





// require __DIR__.'/auth.php';

// Route::middleware('auth')->group(function() {
//     Route::get('/list', [VehicleController::class, 'list'])->name('list');
//     Route::get('/transfer', [VehicleDataTransferController::class, 'TransferDataFromVehicleAoto'])->name('transfer');



//         //bellow is not my actions
//         Route::prefix('cars')->group(function() {
//         Route::get('/', [CarController::class, 'index'])->name('cars.index');
//         Route::get('/create', [CarController::class, 'create'])->name('cars.create');
//         Route::post('/store', [CarController::class, 'store'])->name('cars.store');
//         Route::get('edit/{id}', [CarController::class, 'edit'])->name('cars.edit');
//         Route::post('update/{id}', [CarController::class, 'update'])->name('cars.update');
//         Route::delete('/delete/{id}', [CarController::class, 'destroy'])->name('cars.destroy');

//         // trash Items Routes
//         Route::get('/trashlist',  [CarController::class, 'trashList'])->name('cars.trashlist');
//         Route::get('/restore/{id}', [CarController::class, 'restoreItem'])->name('cars.restore');
//         Route::delete('/force_delete/{id}', [CarController::class, 'delete'])->name('cars.delete');
//     });
// });
