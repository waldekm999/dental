<?php
/**
 * Created by PhpStorm.
 * User: Brutus1
 * Date: 05.03.2019
 * Time: 22:22
 */
?>

@extends('layouts.admin_app');

@section('content')
    <div class="container">
        <h2>Lista Specializacji</h2>

        <table class="table table-hover">
            <thead>
            <tr>
                <th>Id</th>
                <th>Nazwa specializacji</th>
            </tr>
            </thead>
            <tbody>
            @foreach($specializations as $specialization)
                <tr>
                    <td>{{ $specialization->id }}</td>
                    <td><a href="{{ route('staff.specializationStaff', [$specialization->id]) }}"> {{ $specialization->name }}</a></td>
                </tr>
            @endforeach
            </tbody>
        </table>

    </div>
    @endsection



