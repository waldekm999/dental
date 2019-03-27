<?php
/**
 * Created by PhpStorm.
 * User: Brutus1
 * Date: 05.03.2019
 * Time: 14:20
 */

namespace App\Repositories;

use App\Models\User;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;
use function PHPSTORM_META\type;
use Illuminate\Database\Eloquent\Builder;


class UserRepository extends BaseRepository {

    public function __construct(User $model)
    {
        $this->model = $model;
    }

   public function getAllStaff($searchKey)
    {
        //return $this->model->where('type','staff')->
       //orderBy('status','asc')->orderBy('surname','asc')->get();

        return User::where('type', '=', 'staff')->orderBy($searchKey)
            ->paginate(10);

         //return DB::table('users')->where('type','=','staff')->get();
        //to był query builder - alternatywa do eloquenta
    }

    public function getAllActiveStaff()
    {
        return $this->model->where('type','staff')->
        where('status', 'active')->orderBy('surname','asc')->get();

    }

    public function getSpecializationStaff($id)
    {
        return $this->model->where('type','staff')->whereHas('specializations',
            function ($q) use($id){
                $q->where('specializations.id', $id);
            })->orderBy('name', 'asc')->get();
    }

    public function getAllPatients($searchKey)
    {
        return User::where('type', '=', 'patient')->orderBy($searchKey)
            ->paginate(10);

        //return DB::table('users')->
        //where('type', '=', 'patient')->paginate(10);
    }

    public function getPatientsForVisits()
    {
        return $this->model->where('type','patient')->
        orderBy('surname','asc')->get();
    }

}
