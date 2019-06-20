<?php
/**
 * Created by PhpStorm.
 * User: Brutus1
 * Date: 05.03.2019
 * Time: 14:05
 */

namespace App\Repositories;

use Illuminate\Database\Eloquent\Model;

abstract class BaseRepository {
    
    protected $model;

    public function getAll($columns = array('*'))
    {
        return $this->model->get($columns);
    }

    public function create($data)
    {
        return $this->model->create($data);
    }

    public function update($id, $data)
    {
        return $this->model->where('id', '=', $id)->update($data);
    }

    public function delete($id)
    {
        return $this->model->destroy($id);

    }

    public function find($id)
    {
        return $this->model->find($id);
    }
}

