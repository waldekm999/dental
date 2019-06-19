<?php

namespace App\Http\Controllers;

use App\Models\Visit;
use App\Repositories\UserRepository;
use App\Repositories\VisitDetailsRepository;
use App\Repositories\VisitRepository;
use App\Models\User;
use App\VisitDetails;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Mail;


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
            'menu' => 'layouts.admin_app',
            'specialistId' => $id
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
                'menu' => $menu
            ]);
        }

        $visits = $model->getPatientVisits($id, $searchKey);
        return view('admin/patient_visits', [
            'visits' => $visits,
            'title' => 'Wizyty',
            'menu' => $menu,
            'id' => $id,
            'specialistId' => $user->id,

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
            'title' =>'Dodanie wizyty',
            'menu' => 'layouts.app'
        ]);
    }

    public function createAdminPatientSingle(UserRepository $model, $id)
    {
        //$user = Auth::user();
        $userId = $id;

        $staff = $model->getAllActiveStaff();
        $patient = $model->find($userId);



        return view('visit_add', [
            'staff' => $staff,
            'patient' => $patient,
            'title' =>'Dodanie wizyty',
            'menu' => 'layouts.admin_app'
        ]);
    }

    public function createSpecialistSingle(UserRepository $model, $employeeId)
    {
        $employee = $model->find($employeeId);
        $patients = $model->getPatientsForVisits();

        return view('admin/visit_add_single_specialist', [
           'specialist' => $employee,
            'patients' => $patients,
            'title' => 'Dodanie wizyty dla specjalisty'
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

        $patient = User::find($visit->patient_id);
        $specialist = User::find($visit->doctor_id);


        Mail::send('emails_visit', ['visit' => $visit, 'patient' =>
            $patient, 'specialist' => $specialist],
            function($m) use($visit, $patient) {
            $m->to($patient->email, $patient->name)->subject('Nowa wizyta');
        });


        if($userType == 'staff') {
            return redirect()->action('VisitController@index');
        }
        else {
           return redirect('wizyty/pacjenci/0');
        }

    }

    public function visitDetails(VisitDetailsRepository $modelDetails,
                                 VisitRepository $modelVisit ,$id)
    {
        $details = $modelDetails->getVisitDetails($id);
        $visit = $modelVisit->find($id);

        return view('admin/visitdetails_edit', [
            'details' => $details,
            'visit' => $visit,
            'title' => 'Szczegóły wizyty',
            'menu' => 'layouts.admin_app'
        ]);
    }

    public function storeDetails(Request $request)
    {
        $user = Auth::user();
        $userType = $user->type;

        $visit = new Visit;
        $visit->doctor_id = $request->input('visit_doctor');
        $visit->patient_id = $request->input('visit_patient');
        $patient = User::find($visit->patient_id);
        $specialist = User::find($visit->doctor_id);


        $visitDetails = new VisitDetails;
        $visitDetails->visit_id = $request->input('visit_id');
        $visitDetails->treatments = $request->input('treatments');
        $visitDetails->drugs = $request->input('drugs');
        $visitDetails->prescription = $request->input('prescription');
        $visitDetails->save();



        Mail::send('emails_details', [
            'visit' => $visit,
            'patient' => $patient,
            'specialist' => $specialist,
            'visitDetails' => $visitDetails],
            function($m) use($visit, $patient) {
                $m->to($patient->email, $patient->name)->subject('Nowa wizyta');
            });

        return redirect()->action('VisitController@index');
    }
}
