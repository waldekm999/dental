<?php

namespace App;

use App\Models\Visit;
use Illuminate\Database\Eloquent\Model;

class VisitDetails extends Model
{
    protected $fillable = [
      'visit_id', 'prescription','treatments', 'drugs', 'expense'
    ];

    public function visit()
    {
        return $this->belongsTo(Visit::class, 'visit_id');
    }
}
