<?php
/**
 * Created by PhpStorm.
 * User: Brutus1
 * Date: 05.03.2019
 * Time: 21:44
 */

namespace App\Repositories;

use App\Models\Specialization;
use Faker\Provider\Base;
use Illuminate\Database\Eloquent\Model;

class SpecializationRepository extends BaseRepository {

    public function __construct(Specialization $model)
    {
        $this->model = $model;
    }
}
