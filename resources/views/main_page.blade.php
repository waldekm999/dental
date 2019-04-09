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
                <h1>Przychodnia Stomatologiczna DENTAL</h1>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
            </div>
        </div>
    </div>
    <div class="container my-5">
        <div class="row">
            <div class="col-lg-4 text-center">
                <img class="rounded-circle" src="{{ asset('/images/woman2.jpg') }}" alt="Happy patient" width="180" height="180">
                <h2>Stomatologia i Chirurgia</h2>
                <p>Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh euismod ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna.</p>
                <p><a class="btn btn-primary" href="#" role="button">Zobacz więcej &raquo;</a></p>
            </div><!-- /.col-lg-4 -->
            <div class="col-lg-4 text-center">
                <img class="rounded-circle" src="{{ asset('/images/implant.jpg') }}" alt="Happy doctor and gabinet" width="180" height="180">
                <h2>Higienizacja i RTG</h2>
                <p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras mattis nisi era consectetur purus sit amet fermentum. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh.</p>
                <p><a class="btn btn-primary" href="#" role="button">Zobacz więcej&raquo;</a></p>
            </div><!-- /.col-lg-4 -->
            <div class="col-lg-4 text-center">
                <img class="rounded-circle" src="{{ asset('/images/protetyk.jpg') }}" alt="Protetyk" width="180" height="180">
                <h2>Protetyka i Implantologia</h2>
                <p>Donec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>
                <p><a class="btn btn-primary" href="#" role="button">Zobacz więcej &raquo;</a></p>
            </div><!-- /.col-lg-4 -->
        </div><!-- /.row -->
    </div>
@endsection



