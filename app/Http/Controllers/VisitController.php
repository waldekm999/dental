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
    public function index(VisitRepository $model)
    {
        $visits = $model->getAllVisits();

        return view('/admin/visits', [
           'visits' => $visits,
           'title' => 'Wizyty'
        ]);
    }

    public function staffVisits(VisitRepository $model, $id)
    {
        $visits = $model->getEmployeeVisits($id);

        return view('admin/employee_visits', [
           'visits' => $visits,
           'title' => 'Wizyty'
        ]);
    }

    public function patientVisits(VisitRepository $model, $id)
    {
        $user = Auth::user();
        $type = $user->type;
        $menu = 'layouts.admin_app';

        if($type == 'patient') {
            $id = $user->id;
            $menu = 'layouts.app';
        }


        $visits = $model->getPatientVisits($id);
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

    public function store(Request $request)
    {
        $visit = new Visit;
        $visit->doctor_id = $request->input('specialist');
        $visit->patient_id = $request->input('patient');
        $visit->date = $request->input('date');
        $visit->time_in = $request->input('timeIn');
        $visit->time_out = $request->input('timeOut');
        $visit->description = $request->input('description');
        $visit->status = $request->input('status');
        $visit->save();

        return redirect()->action('VisitController@index');
    }
}
