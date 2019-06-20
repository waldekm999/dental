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
        <a href="{{route('visit.createSpecialistSingle', ['id' => $specialistId])}}" class="btn btn-primary my-3">Dodaj wizytę</a>
        <table class="table table-hover">
            <thead>
            <tr>
                <th>#</th>
                <th>Specialista</th>
                <th>Pacjent</th>
                <th>Data</th>
                <th>Godzina</th>
                <th>Status</th>
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
                    <td><a href="{{ route('visit.visitDetails', [$visit->id])}}">Szczegóły</a></td>

                </tr>

            @endforeach
            </tbody>
        </table>
    </div>
@endsection

