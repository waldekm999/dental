<?php

namespace App\Http\Controllers;

use App\Models\Visit;
use App\Repositories\UserRepository;
use App\Repositories\VisitRepository;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;


class VisitController extends Controller
{
    public function index(VisitRepository $model, $searchKey = 'date')
    {
        $visits = $model->getAllVisits($searchKey);

        return view('/admin/visits', [
           'visits' => $visits,
           'title' => 'Wizyty',
            'menu' => 'layouts.admin_app'
        ]);
    }

    public function staffVisits(VisitRepository $model, $id, $searchKey = 'date')
    {
        $visits = $model->getEmployeeVisits($id, $searchKey);

        return view('admin/employee_visits', [
           'visits' => $visits,
           'title' => 'Wizyty',
            'menu' => 'layouts.admin_app'
        ]);
    }

    public function patientVisits(VisitRepository $model, $id, $searchKey = 'date')
    {
        $user = Auth::user();
        $type = $user->type;
        $menu = 'layouts.admin_app';

        if($type == 'patient') {
            $id = $user->id;
            $menu = 'layouts.app';

            $visits = $model->getPatientVisits($id, $searchKey);
            return view('visits', [
                'visits' => $visits,
                'title' => 'Wizyty',
                'menu' => $menu,
                'id' => $user->id
            ]);
        }


        $visits = $model->getPatientVisits($id, $searchKey);
        return view('admin/employee_visits', [
            'visits' => $visits,
            'title' => 'Wizyty',
            'menu' => $menu,
            'id' => $user->id
        ]);
    }





    public function create(UserRepository $model)
    {
        $staff = $model->getAllActiveStaff();
        $patients = $model->getPatientsForVisits();

        return view('admin/visit_add', [
            'staff' => $staff,
           'patients' => $patients,
           'title' =>'Dodanie wizyty'
        ]);
    }

    public function createPatientSingle(UserRepository $model)
    {
        $user = Auth::user();
        $userId = $user->id;
        $staff = $model->getAllActiveStaff();
        $patient = $model->find($userId);

        //echo $patient->id;
        //die;

        return view('visit_add', [
            'staff' => $staff,
            'patient' => $patient,
            'title' =>'Dodanie wizyty'
        ]);
    }

    public function createPatientSpecialistSingle(UserRepository $model, $employeeId)
    {
        $user = Auth::user();
        $userId = $user->id;
        $employee = $model->find($employeeId);
        $patient = $model->find($userId);



        return view('visit_single_specialist_add', [
            'specialist' => $employee,
            'patient' => $patient,
            'title' =>'Dodanie wizyty'
        ]);
    }

    public function store(Request $request)
    {
        $user = Auth::user();
        $userType = $user->type;

        $visit = new Visit;
        $visit->doctor_id = $request->input('specialist');
        $visit->patient_id = $request->input('patient');
        $visit->date = $request->input('date');
        $visit->time_in = $request->input('timeIn');
        $visit->time_out = $request->input('timeOut');
        $visit->description = $request->input('description');
        $visit->status = $request->input('status');
        $visit->save();


        if($userType == 'staff') {
            return redirect()->action('VisitController@index');
        }
        else {
           return redirect('wizyty/pacjenci/0');
        }
    }
}
