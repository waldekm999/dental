<?php

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

//Route::get('/', function () {
  //  return view('welcome');
//});

Route::get('/', 'GlobalController@index')->name('global.index');

Route::get('/lekarze', 'GlobalController@personnel')->name('global.personnel');

//Route::prefix('admin')->group(function (){
Route::group([
    'prefix' =>'admin',
    'middleware' => [
        'auth',
        'staff'
    ],
], function () {
    Route::get('/lekarze/dodaj', 'StaffController@create')->name('staff.create');
    Route::post('/lekarze/edytuj', 'StaffController@editStore')->name('staff.editStore');
    Route::get('/lekarze/edytuj/{id}', 'StaffController@edit')->name('staff.edit');
    Route::get('/lekarze/{searchkey?}', 'StaffController@index')->where('searchkey', '[A-Za-z]+')->name('staff.index');
    Route::post('/lekarze/', 'StaffController@store')->name('staff.store');
    Route::get('/lekarze/{id}', 'StaffController@show')->where('id', '[0-9]+')->name('staff.show');
    Route::get('/specializacje', 'SpecializationController@index')->name('specialization.index');
    Route::get('/specializacje/{id}', 'StaffController@specializationStaff')->name('staff.specializationStaff');
    Route::get('wizyty/dodaj', 'VisitController@create')->name('visit.create');
    Route::get('/wizyty', 'VisitController@index')->name('visit.index');
    Route::post('wizyty/', 'VisitController@store')->name('visit.store');
    Route::get('/wizyty/lekarze/{id}', 'VisitController@staffVisits')->name('visit.staffVisits');
    Route::get('/wizyty/pacjenci/{id}', 'VisitController@patientVisits')->name('visit.patientVisits');
    Route::get('/pacjenci/dodaj', 'PatientController@create')->name('patient.create');
    Route::post('pacjenci/edytuj', 'PatientController@editStore')->name('patient.editStore');
    Route::get('pacjenci/edytuj/{id}', 'PatientController@edit')->name('patient.edit');
    Route::get('/pacjenci/{searchkey?}', 'PatientController@index')->where('searchkey', '[A-Za-z]+')->name('patient.index');
    Route::post('/pacjenci/', 'PatientController@store')->name('patient.store');
    Route::get('/pacjenci/{id}', 'PatientController@show')->where('id', '[0-9]+')->name('patient.show');//->middleware('auth', 'staff');
});


Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
