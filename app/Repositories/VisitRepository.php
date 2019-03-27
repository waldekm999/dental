<?php
/**
 * Created by PhpStorm.
 * User: Brutus1
 * Date: 05.03.2019
 * Time: 21:39
 */

namespace App\Repositories;

use App\Models\Visit;
use Illuminate\Database\Eloquent\Model;

class VisitRepository extends BaseRepository {

    public function __construct(Visit $model)
    {
        $this->model = $model;
    }

    public function getAllVisits()
    {
        return $this->model->orderBy('date', 'asc')->get();
    }

    public function getEmployeeVisits($id)
    {
        return $this->model->where('doctor_id', $id)->orderBy('date', 'asc')->get();
    }

    public function getPatientVisits($id)
    {
        return $this->model->where('patient_id', $id)->orderBy('date', 'asc')->get();
    }
}

