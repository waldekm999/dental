<?php

namespace App\Http\Controllers;

use App\Repositories\UserRepository;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\User;

class PatientController extends Controller
{
    public function index(UserRepository $model, $searchkey = 'id')
    {

        $users = $model->getAllPatients($searchkey);
        //$users = User::where('type', '=', 'patient')->
        //paginate(10);

        //$users = DB::table('users')->
        //where('type', '=', 'patient')->
        //paginate(10);

        return view('/admin/patients', [
           'patients_list' => $users,
           'title' => 'Lista pacjentów'
        ]);
    }

    public function create()
    {
        return view('/admin/patient_add', [
           'title' => 'Nowy pacjent'
        ]);
    }

    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required|max:255',
            'surname' => 'required|max:255',
            'email' => 'required|email|unique:users,email|max:255',
            'password' => 'required|min:5|max:255',
            'pesel' => 'required|max:11|min:11|unique:users,pesel',
            'phone' => 'required|min:9|max:255',
        ]);

        $patient = new User();

        $patient->name = $request->input('name');
        $patient->surname = $request->input('surname');
        $patient->email = $request->input('email');
        $patient->password = bcrypt($request->input('password'));
        $patient->pesel = $request->input('pesel');
        $patient->phone = $request->input('phone');
        $patient->city = $request->input('city');
        $patient->post_code = $request->input('post_code');
        $patient->address = $request->input('address');
        $patient->description = $request->input('description');
        $patient->type = 'patient';
        $patient->save();

        return redirect()->action('PatientController@index');
    }

    public function show(UserRepository $model, $id)
    {
        $user = $model->find($id);

        return view('admin/patient', [
           'patient' => $user,
           'title' => 'Szczegóły pacjenta'
        ]);

    }

    public function edit(UserRepository $model, $id)
    {
        $user = $model->find($id);

        return view('/admin/patient_edit', [
           'patient' => $user,
           'title' => 'Edycja pacjenta'
        ]);
    }

    public function editStore(Request $request, UserRepository $model)
    {
        $request->validate([
            'name' => 'required|max:255',
            'surname' => 'required|max:255',
            'email' => 'required|max:255',
            'pesel' => 'required|max:11|min:11',
            'phone' => 'required|min:9|max:255',
        ]);

        $patient = $model->find($request->input('id'));

        $patient->name = $request->input('name');
        $patient->surname = $request->input('surname');
        $patient->email = $request->input('email');
        $patient->pesel = $request->input('pesel');
        $patient->phone = $request->input('phone');
        $patient->city = $request->input('city');
        $patient->post_code = $request->input('post_code');
        $patient->address = $request->input('address');
        $patient->description = $request->input('description');
        $patient->save();

        return redirect()->action('PatientController@index');

    }
}
