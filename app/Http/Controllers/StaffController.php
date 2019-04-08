<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Repositories\UserRepository;
use App\Repositories\SpecializationRepository;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;


class StaffController extends Controller
{
    public function index(UserRepository $model, $searchKey = 'id')
    {
       $staff_users = $model->getAllStaff($searchKey);
        //$staff_users = User::where('type', '=', 'staff')->
        //paginate(10);

       return view('/admin/staff', [
          'personnel_list'=>$staff_users,
           'title' => 'Lista specialistów'
       ]);
    }

    public function specializationStaff(UserRepository $model, $id)
    {
        $staff_users = $model->getSpecializationStaff($id);

        return view('/admin/specialization_staff', [
           'personnel_list'=>$staff_users,
           'title' => 'Lista specialistów'
        ]);
    }


    public function create(SpecializationRepository $model)
    {
        $specializations =  $model->getAll();

        return view('/admin/employee_add', [
            'specializations' => $specializations,
            'title' => 'Nowy specialista'
        ]);
    }

    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required|max:255',
            'surname' => 'required|max:255',
            'email' => 'required|max:255',
            'password' => 'required|min:5|max:255',
            'pesel' => 'required|max:11|min:11|unique:users,pesel',
            'phone' => 'required|min:9|max:255',
        ]);

        $employee = new User();
        $employee->name = $request->input('name');
        $employee->surname = $request->input('surname');
        $employee->email = $request->input('email');
        $employee->password = bcrypt($request->input('password'));
        $employee->pesel = $request->input('pesel');
        $employee->phone = $request->input('phone');
        $employee->city = $request->input('city');
        $employee->post_code = $request->input('post_code');
        $employee->address = $request->input('address');
        $employee->description = $request->input('description');
        $employee->type = 'staff';
        $employee->status = 'active';
        $employee->save();

        $employee->specializations()->sync($request->input('specializations'));

        return redirect()->action('StaffController@index');
    }

    public function show(UserRepository $model, $id)
    {
        $staff_user = $model->find($id);

        return view('/admin/employee', [
            'employee'=>$staff_user,
            'title' => 'Szczegóły specjalisty'
        ]);
    }

    public function edit(UserRepository $model, $id, SpecializationRepository $modelSpec)
    {
        $staff_user = $model->find($id);
        $specializations = $modelSpec->getAll();

        return view('/admin/employee_edit', [
           'employee' => $staff_user,
            'specializations' => $specializations,
            'title' => 'Edycja lekarza'
        ]);

    }

    public function editStore(Request $request, UserRepository $model)
    {
        $request->validate([
            'name' => 'required|max:255',
            'surname' => 'required|max:255',
            'email' => 'required|email|max:255',
            'pesel' => 'required|max:11|min:11',
            'phone' => 'required|min:9|max:255',
        ]);

        $employee = $model->find($request->input('id'));

        $employee->name = $request->input('name');
        $employee->surname = $request->input('surname');
        $employee->email = $request->input('email');
        $employee->pesel = $request->input('pesel');
        $employee->phone = $request->input('phone');
        $employee->city = $request->input('city');
        $employee->post_code = $request->input('post_code');
        $employee->address = $request->input('address');
        $employee->description = $request->input('description');
        $employee->status = $request->input('status');
        $employee->save();

        $employee->specializations()->sync($request->input('specializations'));

       return redirect('admin/lekarze');
    }
    
    

    //public function delete(UserRepository $model, $id)
    //{
        //$model->delete($id);
        //return redirect('/admin/lekarze');
   // }

}
