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

        @if($errors->any())
        <div class="alert alert-danger">
            <ul>
                @foreach($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
        @endif

        <h2>Dodawanie pacjenta</h2>
        <form action="{{  action('PatientController@store') }}" method="post" role="form">
            <input type="hidden" name="_token" value="{{ csrf_token() }}"/>
            <div class="form-group">
                <label for="name">Imię</label>
                <input type="text" class="form-control" name="name" />
            </div>
            <div class="form-group">
                <label for="surname">Nazwisko</label>
                <input type="text" class="form-control" name="surname" />
            </div>
            <div class="form-group">
                <label for="email">Adres E-mail</label>
                <input type="email" class="form-control" name="email" />
            </div>
            <div class="form-group">
                <label for="password">Hasło</label>
                <input type="password" class="form-control" name="password" />
            </div>
            <div class="form-group">
                <label for="pesel">PESEL</label>
                <input type="text" class="form-control" name="pesel" />
            </div>
            <div class="form-group">
                <label for="phone">Telefon</label>
                <input type="tel" class="form-control" name="phone" />
            </div>
            <div class="form-group">
                <label for="city">Miasto</label>
                <input type="text" class="form-control" name="city" />
            </div>
            <div class="form-group">
                <label for="post_code">Kod pocztowy</label>
                <input type="text" class="form-control" name="post_code" />
            </div>
            <div class="form-group">
                <label for="address">Adres</label>
                <input type="text" class="form-control" name="addres" />
            </div>



            <div class="form-group">
                <label for="description">Opis</label>
                <textarea class="form-control" name="description" rows="5"></textarea>
            </div>
            <input type="submit" value="Dodaj" class="btn-primary" />
        </form>
    </div>
@endsection





