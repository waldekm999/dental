<?php
/**
 * Created by PhpStorm.
 * User: Brutus1
 * Date: 03.03.2019
 * Time: 17:32
 */
?>

@extends('layouts.admin_app')

@section('content')
    <div class="container">
        <div class="card">
            <div class="card-body">
                <div class="card-header">
                    <h4 class="card-subtitle">{{ $patient->name.' '.$patient->surname }}</h4>
                </div>
                <div class="card-body">
                    <table class="table table-hover">
                        <tr>
                            <th>Id pacjenta</th>
                            <td>{{ $patient->id }}</td>
                        </tr>
                        <tr>
                            <th>Imię</th>
                            <td>{{ $patient->name }}</td>
                        </tr>
                        <tr>
                            <th>Nazwisko</th>
                            <td>{{ $patient->surname }}</td>
                        </tr>
                        <tr>
                        </tr>
                        <tr>
                            <th>Telefon</th>
                            <td>{{ $patient->phone }}</td>
                        </tr>
                        <tr>
                            <th>E-mail</th>
                            <td>{{ $patient->email }}</td>
                        </tr>
                        <tr>
                            <th>PESEL</th>
                            <td>{{ $patient->pesel }}</td>
                        </tr>
                        <tr>
                            <th>Adres zamieszkania</th>
                            <td>{{ 'ul. '.$patient->address.', '.$patient->post_code.' '.$patient->city}}</td>
                        </tr>
                        <tr>
                            <th>Status</th>
                            <td>{{ $patient->status }}</td>
                        </tr>
                    </table>
                    <h4 class="card-subtitle my-3">Opis:</h4>
                    <p>{{ $patient->description }}</p>
                </div>
                <a href="{{ route('patient.index') }}" class="btn btn-primary"><< Powrót</a>
                <a href="{{ route('patient.edit', ['id' => $patient->id]) }}" class="btn btn-primary mx-4">Edytuj >></a>



    </div>
@endsection

