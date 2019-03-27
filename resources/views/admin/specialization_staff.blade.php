<?php
/**
 * Created by PhpStorm.
 * User: Brutus1
 * Date: 03.03.2019
 * Time: 16:54
 */
?>
@extends('layouts.admin_app')

@section('content')
    <div class="container">
        <h2>Lista Specialistów </h2>

        <table class="table table-hover">
            <thead>
            <tr>
                <th>Id</th>
                <th>Nazwisko i Imię</th>
                <th>Status</th>
                <th>Specjalności</th>
                <th>Wizyty</th>
            </tr>
            </thead>
            <tbody>
            @foreach($personnel_list as $employee)
                <tr>
                    <td>{{ $employee->id }}</td>
                    <td><a href="{{ route('staff.show', [$employee->id]) }}">{{ $employee->surname.' '.$employee->name}}</a></td>
                    <td>{{ $employee->status }}</td>
                    <td>
                        @foreach ( $employee->specializations  as $specialization)
                            {{ $specialization->name }},
                        @endforeach
                    </td>
                    <td><a href="{{ route('visit.staffVisits', [$employee->id]) }}">{{ 'wizyty'}}</a></td>
                </tr>

            @endforeach

            </tbody>
        </table>
        <a href="{{ route('specialization.index') }}" class="btn btn-primary"><< Powrót</a>
    </div>
@endsection


