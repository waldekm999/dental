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
        <h2>Edycja specialisty</h2>
        <form action="{{  action('StaffController@editStore') }}" method="post" role="form">
            <input type="hidden" name="_token" value="{{ csrf_token() }}"/>
            <input type="hidden" name="id" value="{{ $employee->id }}">

            <div class="form-group">
                <label for="name">Imię</label>
                <input type="text" class="form-control" name="name" value="{{ $employee->name }}"/>
            </div>
            <div class="form-group">
                <label for="surname">Nazwisko</label>
                <input type="text" class="form-control" name="surname" value="{{ $employee->surname }}" />
            </div>
            <div class="form-group">
                <label for="email">Adres E-mail</label>
                <input type="email" class="form-control" name="email" value="{{ $employee->email }}" />
            </div>
            <div class="form-group">
                <label for="pesel">PESEL</label>
                <input type="text" class="form-control" name="pesel" value="{{ $employee->pesel }}"/>
            </div>
            <div class="form-group">
                <label for="phone">Telefon</label>
                <input type="tel" class="form-control" name="phone" value="{{ $employee->phone }}" />
            </div>
            <div class="form-group">
                <label for="city">Miasto</label>
                <input type="text" class="form-control" name="city" value="{{ $employee->city }}" />
            </div>
            <div class="form-group">
                <label for="post_code">Kod pocztowy</label>
                <input type="text" class="form-control" name="post_code" value="{{ $employee->post_code }}" />
            </div>
            <div class="form-group">
                <label for="address">Adres</label>
                <input type="text" class="form-control" name="addres" value="{{ $employee->address }}" />
            </div>

            <h6>Specializacje: </h6>
            @foreach($specializations as $specialization)
            <div class="form-check my-2">
                <input class="form-check-input" type="checkbox" value="{{ $specialization->id }}" id="specializations" name="specializations[]"
                   @if($employee->specializations->contains($specialization->id))
                    checked
                    @endif
                >
                <label class="form-check-label" for="specializations">
                    {{ $specialization->name }}
                </label>
            </div>
            @endforeach

            <div class="form-group">
                <label for="description">Opis</label>
                <input type="text" class="form-control" name="description" value="{{ $employee->description }}"/>
            </div>

            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="status" id="active" value="active"
                @if($employee->status == 'active')
                checked
                       @endif
                >
                <label class="form-check-label" for="active">
                    Specialista aktywny
                </label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="status" id="inactive" value="inactive"
                       @if($employee->status == 'inactive')
                       checked
                    @endif
                >
                <label class="form-check-label" for="inactive">
                    Specialista nieaktywny
                </label>
            </div>
            <div>
            <input type="submit" value="Zatwierdź zmiany" class="btn-primary my-3"
            onclick="return confirm('Czy na pewno chcesz wprowadzić zmiany?')"/>
            </div>
        </form>
    </div>
@endsection





