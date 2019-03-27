<?php

namespace App\Models;

use Illuminate\Notifications\Notifiable;
use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Foundation\Auth\User as Authenticatable;

class User extends Authenticatable
{
    use Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'email', 'password', 'surname', 'pesel', 'phone',
        'type', 'city', 'post_code',
        'adress', 'description', 'status'
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    public function doctorVisits()
    {
        return $this->hasMany(Visit::class, 'doctor_id');
    }

    public function patientVisits()
    {
        return $this->hasMany(Visit::class, 'patient_id');
    }

    public function specializations()
    {
        return $this->belongsToMany(Specialization::class, 'specializations_has_user')->withTimestamps();
    }

    public function roles()
    {
        return $this->belongsToMany(Role::class, 'roles_has_user')->withTimestamps();
    }

}
