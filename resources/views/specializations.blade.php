<?php
/**
 * Created by PhpStorm.
 * User: Brutus1
 * Date: 26.02.2019
 * Time: 15:18
 */
?>

@extends('layouts.app')

@section('content')
    <div class="container-Fluid">
        <div class="jumbotron jumbotron-fluid my-0">
            <div class="container">
                <h1>Jak możemy Ci pomóc w naszej przychodni ?</h1>
                <p>Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit,
                    sed quia non numquam
                </p>
            </div>
        </div>
    </div>
    <div class="container my-5">
        <!-- START THE FEATURETTES -->

        <hr class="featurette-divider">

        <div class="row featurette" id="stomatologia">
            <div class="col-md-7 py-5">
                <h2 class="featurette-heading ">Stomatologia i Hirurgia. <span class="text-muted">Komfortowe leczenie.</span></h2>
                <p class="lead">Donec ullamcorper nulla non metus auctor fringilla.
                    Vestibulum id ligula porta felis euismod semper.
                    Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus,
                    tellus ac cursus commodo. In dictum porta ante, in porta sapien interdum et. Vivamus ligula leo,
                    viverra et sapien vel, tincidunt rutrum elit. Vestibulum placerat lacinia condimentum.
                    Curabitur suscipit, orci ut consectetur eleifend, </p>
                <a href="{{route('global.personnel')}}" class="btn btn-primary stretched-link">Umów się na wizytę</a>
            </div>
            <div class="col-md-5">
                <img class="featurette-image img-fluid mx-auto" src="images/child.jpg" alt="Generic placeholder image">
            </div>
        </div>

        <hr class="featurette-divider">

        <div class="row featurette" id="higienizacja">
            <div class="col-md-7 order-md-2 py-5">
                <h2 class="featurette-heading">Higienizacja i RTG. <span class="text-muted">Piekny uśmiech i profilaktyka.</span></h2>
                <p class="lead">Donec ullamcorper nulla non metus auctor fringilla.
                    Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna,
                    vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.
                    Nulla commodo porttitor eros eget convallis. Vestibulum blandit non diam eu cursus.
                    Nullam ut nulla elementum, tempus enim a, viverra turpis.
                </p>
                <a href="{{route('global.personnel')}}" class="btn btn-primary stretched-link">Umów się na wizytę</a>
            </div>
            <div class="col-md-5 order-md-1">
                <img class="featurette-image img-fluid mx-auto" src="images/higienizacja1.jpg" alt="Generic placeholder image">
            </div>

        </div>

        <hr class="featurette-divider">

        <div class="row featurette" id="protetyka">
            <div class="col-md-7 py-5">
                <h2 class="featurette-heading">Protetyka i Implantologia. <span class="text-muted">Powrót do zdrowia.</span></h2>
                <p class="lead">Donec ullamcorper nulla non metus auctor fringilla.
                    Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna,
                    vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo. Suspendisse posuere
                    aliquet ex eu ultricies. Suspendisse ac velit et ipsum rutrum luctus ac placerat velit.
                    Morbi id dui vitae massa mollis convallis</p>
                <a href="{{route('global.personnel')}}" class="btn btn-primary stretched-link">Umów się na wizytę</a>
            </div>
            <div class="col-md-5">
                <img class="featurette-image img-fluid mx-auto" src="images/implanty.jpg" alt="Generic placeholder image">
            </div>

        </div>

        <hr class="featurette-divider">

        <!-- /END THE FEATURETTES -->

    </div>
@endsection



