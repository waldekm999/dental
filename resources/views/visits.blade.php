<?php
/**
 * Created by PhpStorm.
 * User: Brutus1
 * Date: 06.03.2019
 * Time: 21:27
 */
?>

@extends($menu)


@section('content')
    <div class="container">
        <h2>Lista Wizyt</h2>
        <a href="{{route('visit.createPatientSingle')}}"
           class="btn btn-primary my-3">Dodaj wizytę</a>
        <table class="table table-hover">
            <thead>
            <tr>
                <th><a href="{{route('visit.patientVisits',
                [ 'id' => '0', 'searchKey' => 'id'])}}">#</a></th>
                <th><a href="{{route('visit.patientVisits',
                [ 'id' => '0', 'searchKey' => 'doctor_id'])}}">Specialista</a></th>
                <th>Pacjent</th>
                <th><a href="{{route('visit.patientVisits',
                [ 'id' => '0' ,'searchKey' => 'date'])}}">Data</a></th>
                <th>Godzina</th>
                <th><a href="{{route('visit.patientVisits',
                ['id' => '0', 'searchKey' => 'status'])}}">Status</a></th>
            </tr>
            </thead>
            <tbody>
            @foreach($visits as $visit)
                <tr>
                    <td>{{ $visit->id }}</td>
                    <td>{{ $visit->doctor->surname.' '.$visit->doctor->name }} </td>
                    <td>{{ $visit->patient->surname.' '.$visit->patient->name }}</td>
                    <td>{{ $visit->date }}</td>
                    <td>{{ $visit->time_in.' -- '.$visit->time_out }}</td>
                    <td> {{ $visit->status }}</td>

                </tr>

            @endforeach
            </tbody>
        </table>
    </div>
@endsection

