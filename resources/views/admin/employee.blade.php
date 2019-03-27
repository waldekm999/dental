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
                <h4 class="card-subtitle">{{ $employee->name.' '.$employee->surname }}</h4>
                </div>
                <div class="card-body">
                <table class="table table-hover">
                    <tr>
                        <th>Id pracownika</th>
                        <td>{{ $employee->id }}</td>
                    </tr>
                    <tr>
                        <th>Imię</th>
                        <td>{{ $employee->name }}</td>
                    </tr>
                    <tr>
                        <th>Nazwisko</th>
                        <td>{{ $employee->surname }}</td>
                    </tr>
                    <tr>
                        <th>Specjalności</th>
                        <td>
                            @foreach($employee->specializations as $specialization)
                                {{ $specialization->name }},
                                @endforeach
                        </td>
                    </tr>
                    <tr>
                        <th>Telefon</th>
                        <td>{{ $employee->phone }}</td>
                    </tr>
                    <tr>
                        <th>E-mail</th>
                        <td>{{ $employee->email }}</td>
                    </tr>
                    <tr>
                        <th>PESEL</th>
                        <td>{{ $employee->pesel }}</td>
                    </tr>
                    <tr>
                        <th>Adres zamieszkania</th>
                        <td>{{ 'ul. '.$employee->address.', '.$employee->post_code.' '.$employee->city}}</td>
                    </tr>
                    <tr>
                        <th>Status</th>
                        <td>{{ $employee->status }}</td>
                    </tr>
                </table>
                    <h4 class="card-subtitle my-3">Opis:</h4>
                    <p>{{ $employee->description }}</p>
                </div>
                <a href="{{ route('staff.index') }}" class="btn btn-primary"><< Powrót</a>
                <a href="{{ route('staff.edit', ['id' => $employee->id]) }}" class="btn btn-primary mx-4">Edytuj >></a>
            </div>
            <img class="card-img-bottom" src="{{ asset('/images/stuff_portraits/'.$employee->id.'.jpg') }}" alt="Card image" style="width:100%">
        </div>


    </div>
    @endsection
