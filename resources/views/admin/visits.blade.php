<?php
/**
 * Created by PhpStorm.
 * User: Brutus1
 * Date: 06.03.2019
 * Time: 21:27
 */
?>

@extends('layouts.admin_app')


@section('content')
    <div class="container">
        <h2>Lista Wizyt</h2>
        <a href="{{route('visit.create')}}" class="btn btn-primary my-3">Dodaj wizytę</a>
        <table class="table table-hover">
            <thead>
            <tr>
                <th><a href="{{route('visit.index', ['searchKey' => 'id'])}}">#</a></th>
                <th><a href="{{route('visit.index', ['searchKey' => 'doctor_id'])}}">Specialista</a></th>
                <th><a href="{{route('visit.index', ['searchKey' => 'patient_id'])}}">Pacjent</a></th>
                <th><a href="{{route('visit.index', ['searchKey' => 'date'])}}">Data</a></th>
                <th>Godzina</th>
                <th><a href="{{route('visit.index', ['searchKey' => 'status'])}}">Status</a></th>

            </tr>
            </thead>
            <tbody>
        @foreach($visits as $visit)
        <tr>
            <td>{{ $visit->id }}</td>
            <td>{{ $visit->doctor->surname.' '.$visit->doctor->name }}</td>
            <td>{{ $visit->patient->surname.' '.$visit->patient->name }}</td>
            <td>{{ $visit->date }}</td>
            <td>{{ $visit->time_in.' -- '.$visit->time_out }}</td>
            <td>{{ $visit->status }}</td>
            <td><a href="{{ route('visit.visitDetails', [$visit->id])}}">Szczegóły</a></td>

        </tr>

        @endforeach
            </tbody>
        </table>
        {{ $visits->links() }}
    </div>
    @endsection
