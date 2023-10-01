<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PagesController;

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


Route::get('/',[PagesController::class, 'welcome'])->name('welcome');
Route::get('/landing',[PagesController::class, 'landing'])->name('landing');
Route::post('processlogin',[PagesController::class, 'processlogin'])->name('processlogin');
Route::get('userdashboard',[PagesController::class, 'dashboard'])->name('userdashbaord');
Route::get('/profile',[PagesController::class, 'profile'])->name('profile');
Route::get('/transfer',[PagesController::class, 'transfer'])->name('transfer');
Route::get('/confirmdetails',[PagesController::class, 'confirmdetails'])->name('confirmdetails');
Route::get('/reconfirmdetail',[PagesController::class, 'reconfirmdetail'])->name('reconfirmdetail');
Route::post('/processtransfer',[PagesController::class, 'processtransfer'])->name('processtransfer');
Route::post('processeditprofile',[PagesController::class, 'processeditprofile'])->name('processeditprofile');
Route::post('processconfirmdetails',[PagesController::class, 'processconfirmdetails'])->name('processconfirmdetails');
Route::post('processreconfirmdetail',[PagesController::class, 'processreconfirmdetail'])->name('processreconfirmdetail');
Route::post('pulluser',[PagesController::class, 'pulluser'])->name('pulluser');
Route::get('/creditall',[PagesController::class, 'creditall'])->name('creditall');
Route::get('/logout',[PagesController::class, 'logout'])->name('logout');
Route::get('/dailysent',[PagesController::class, 'dailysent'])->name('dailysent');
Route::get('/dailyreceive',[PagesController::class, 'dailyreceive'])->name('dailyreceive');
Route::get('/alltransfer',[PagesController::class, 'alltransfer'])->name('alltransfer');
Route::get('/download',[PagesController::class, 'download'])->name('download');
Route::get('/acceptoken',[PagesController::class, 'acceptoken'])->name('acceptoken');


Route::post('/inputoken', [PagesController::class,'inputoken'])->name('inputoken');

Route::post('/goback',[PagesController::class, 'goback'])->name('goback');