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
        <h2>Lista Specialistów</h2>
        <a href="{{route('staff.create')}}" class="btn btn-primary my-3">Dodaj specialistę</a>
        <table class="table table-hover">
            <thead>
            <tr>
                <th><a href="{{ route('staff.index', ['searchKey' => 'id'] ) }}" >Id</a></th>
                <th><a href="{{ route('staff.index', ['searchKey' => 'surname']) }}" >Nazwisko i Imię</a></th>
                <th><a href="{{ route('staff.index', ['searchKey' => 'status']) }}" >Status</a></th>
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
                    <td><a href="{{ route('visit.staffVisits', [$employee->id])}}">Wizyty</a></td>
                </tr>

    @endforeach

            </tbody>
        </table>
    {{ $personnel_list->links() }}
    </div>
    @endsection

