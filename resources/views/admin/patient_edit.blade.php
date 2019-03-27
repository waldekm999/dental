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

        <h2>Edycja pacjenta</h2>
        <form action="{{  action('PatientController@editStore') }}" method="post" role="form">
            <input type="hidden" name="_token" value="{{ csrf_token() }}"/>
            <input type="hidden" name="id" value="{{ $patient->id }}">
            <div class="form-group">
                <label for="name">Imię</label>
                <input type="text" class="form-control" name="name" value="{{ $patient->name }}"/>
            </div>
            <div class="form-group">
                <label for="surname">Nazwisko</label>
                <input type="text" class="form-control" name="surname" value="{{ $patient->surname }}"/>
            </div>
            <div class="form-group">
                <label for="email">Adres E-mail</label>
                <input type="email" class="form-control" name="email" value="{{ $patient->email }}"/>
            </div>
            <div class="form-group">
                <label for="pesel">PESEL</label>
                <input type="text" class="form-control" name="pesel" value="{{ $patient->pesel }}"/>
            </div>
            <div class="form-group">
                <label for="phone">Telefon</label>
                <input type="tel" class="form-control" name="phone" value="{{ $patient->phone }}"/>
            </div>
            <div class="form-group">
                <label for="city">Miasto</label>
                <input type="text" class="form-control" name="city" value="{{ $patient->city }}"/>
            </div>
            <div class="form-group">
                <label for="post_code">Kod pocztowy</label>
                <input type="text" class="form-control" name="post_code" value="{{ $patient->post_code }}" />
            </div>
            <div class="form-group">
                <label for="address">Adres</label>
                <input type="text" class="form-control" name="address" value="{{ $patient->address }}" />
            </div>


            <div class="form-group">
                <label for="description">Opis</label>
                <input type="text" class="form-control" name="description" rows="5" value="{{ $patient->description }}"/>
            </div>
            <input type="submit" value="Wprowadź zmiany" class="btn-primary" onclick="confirm('Czy na pewno chcesz zapisać wprowadzone zmiany?>')" />
        </form>
    </div>
@endsection





