<?php
/**
 * Created by PhpStorm.
 * User: Brutus1
 * Date: 17.06.2019
 * Time: 22:18
 */

namespace App\Repositories;

use App\VisitDetails;
use Faker\Provider\Base;
use Illuminate\Database\Eloquent\Model;


class VisitDetailsRepository extends BaseRepository
{
    public function __construct(VisitDetails $model)
    {
        $this->model = $model;
    }

    public function getVisitDetails($id)
    {
        return $this->model->where('visit_id', $id)->get();
    }


}
