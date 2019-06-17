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

Route::get('/specjalizacje', 'GlobalController@specializations')->name('global.specializations');

//Route::get('/pacjenci','GlobalController@index')->name('global.index2');

Route::get(/**
 *
 */
    '/pacjenci', function () {
    echo '<h1 style="color: red">Błąd 404 - nie ma takiej strony</h1>';
} );

Route::post('/pacjenci', 'PatientController@store')->name('patient.store');

Route::get('/wizyty/pacjenci/{id?}/{searchKey?}', 'VisitController@patientVisits')->where('id', '[0-9]+')->name('visit.patientVisits')->middleware('auth');
Route::get('/wizyty/dodanie', 'VisitController@createPatientSingle')->name('visit.createPatientSingle')->middleware('auth');
Route::get('wizyty/dodanie/{id?}', 'VisitController@createPatientSingle')->name('visit.createPatientSingle')->middleware('auth');
Route::post('wizyty/', 'VisitController@store')->name('visit.store')->middleware('auth');
Route::get('wizyty/dodanie_lekarz/{id}', 'VisitController@createPatientSpecialistSingle')->where('id', '[0-9]+')->name('visit.createPatientSpecialistSingle')->middleware('auth');

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
    Route::get('wizyty/dodaj/{id?}', 'VisitController@createSpecialistSingle')->name('visit.createSpecialistSingle');
    Route::get('wizyty/dodanie/{id?}', 'VisitController@createAdminPatientSingle')->name('visit.createAdminPatientSingle');
    Route::get('/wizyty/{searchKey?}', 'VisitController@index')->name('visit.index');
    Route::get('/wizyty/lekarze/{id}/{searchKey?}', 'VisitController@staffVisits')->name('visit.staffVisits');
    Route::get('/pacjenci/dodaj', 'PatientController@create')->name('patient.create');
    Route::post('pacjenci/edytuj', 'PatientController@editStore')->name('patient.editStore');
    Route::get('pacjenci/edytuj/{id}', 'PatientController@edit')->name('patient.edit');
    Route::get('/pacjenci/{searchkey?}', 'PatientController@index')->where('searchkey', '[A-Za-z]+')->name('patient.index');
    Route::get('/pacjenci/{id}', 'PatientController@show')->where('id', '[0-9]+')->name('patient.show');
});



Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
