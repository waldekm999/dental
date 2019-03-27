<?php

namespace App\Http\Controllers;

use App\Repositories\SpecializationRepository;
use Illuminate\Http\Request;

class SpecializationController extends Controller
{
    public function index(SpecializationRepository $model)
    {
        $specializations = $model->getAll();

        return view('/admin/specializations', [
            'specializations' => $specializations,
            'title' => 'Lista specializacji'
        ]);
    }

    public function show(SpecializationRepository $model, $id)
    {
        $model->find($id);
    }


}
