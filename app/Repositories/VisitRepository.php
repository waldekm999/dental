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
use Illuminate\Support\Facades\DB;
use function PHPSTORM_META\type;
use Illuminate\Database\Eloquent\Builder;

class VisitRepository extends BaseRepository {

    public function __construct(Visit $model)
    {
        $this->model = $model;
    }

    public function getAllVisits($searchKey)
    {
        //return $this->model->orderBy('date', 'asc')->get()->paginate(10);
        return Visit::where('id', '>=', '0')->orderBy($searchKey)->paginate(10);
    }

    public function getEmployeeVisits($id, $searchKey)
    {
        return $this->model->where('doctor_id', $id)->orderBy($searchKey)->get();
    }

    public function getPatientVisits($id, $searchKey)
    {
        return $this->model->where('patient_id', $id)->orderBy($searchKey)->get();
    }


}

