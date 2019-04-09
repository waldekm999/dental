<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use App\Repositories\UserRepository;

class GlobalController extends Controller
{
    public function index()
    {
        return view('main_page', [
            'title' => 'Stomatologia Dental'
        ]);
    }

    public function personnel(UserRepository $model)
    {
        $staff_users = $model->getAllActiveStaff();

        //return dd($staff_users);
        return view('staff', [
           'personnel_list'=>$staff_users,
            'title' => 'Nasi specialiści'
       ]);
    }

    public function specializations()
    {

        return view('specializations', [
           'title' => 'Nasze specializacje'
        ]);
    }
}
