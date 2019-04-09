<?php
/**
 * Created by PhpStorm.
 * User: Brutus1
 * Date: 28.02.2019
 * Time: 15:02
 */
?>

@extends('layouts.app')

@section('content')
    <div class="container-Fluid">
        <div class="jumbotron jumbotron-fluid my-0">
            <div class="container">
                <h1>Nasz zespół jest do Twojej dyspozycji</h1>
                <p>Donec vehicula, quam vel dapibus malesuada, est arcu egestas ex, ornare auctor lectus ex in nisl. Suspendisse in consectetur erat.</p>
            </div>
        </div>
    </div>
    <div class="container ">
        <div class= "row">
            @foreach($personnel_list as $employee)
                <div class="col-md-4 my-5">
                    <div class="card">
                        <img class="card-img-top" src="images/stuff_portraits/{{ $employee->id }}.jpg" alt="Card image" style="width:100%">
                        <div class="card-body">
                            <h4 class="card-title">{{ $employee->name }} {{ $employee->surname }}</h4>
                            <p class="card-text">{{ $employee->description }}</p>
                            <p class="card-footer">
                                Specialności:
                                @foreach ( $employee->specializations  as $specialization)
                                    {{ $specialization->name }},
                                @endforeach

                            </p>
                            <a href="#" class="btn btn-primary stretched-link">Umów się na wizytę</a>
                        </div>
                    </div>
                </div>
            @endforeach
        </div>
    </div>
@endsection

