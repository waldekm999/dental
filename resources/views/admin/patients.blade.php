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
        <h2>Lista Pacjentów</h2>
        <a href="{{route('patient.create')}}" class="btn btn-primary my-3">Dodaj pacjenta</a>
        <table class="table table-hover">
            <thead>
            <tr>
                <th><a href="{{ route('patient.index', ['searchKey' => 'id']) }}" >Id</a></th>
                <th><a href="{{ route('patient.index', ['searchKey' => 'surname']) }}">Nazwisko i Imię</a></th>
                <th><a href="{{ route('patient.index', ['searchKey' => 'city']) }}" >Miasto</a></th>
                <th>Wizyty</th>
            </tr>
            </thead>
            <tbody>
            @foreach($patients_list as $patient)
                <tr>
                    <td>{{ $patient->id }}</td>
                    <td><a href="{{ route('patient.show', [$patient->id]) }}">{{ $patient->surname.' '.$patient->name}}</a></td>
                    <td>{{ $patient->city }}</td>
                    <td><a href="{{ route('visit.patientVisits', [$patient->id]) }}">Wizyty</a></td>
                </tr>
            @endforeach
            </tbody>
        </table>
            {{ $patients_list->links() }}
    </div>


@endsection



