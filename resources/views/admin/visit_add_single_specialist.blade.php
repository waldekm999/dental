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
        <h2>Dodawanie wizyty</h2>
        <form action="{{  action('VisitController@store') }}" method="post" role="form">
            <input type="hidden" name="_token" value="{{ csrf_token() }}"/>

            <div class="form-group">
                <select name="specialist" style="width: 200px">

                       <option value="{{ $specialist->id }}"> {{ $specialist->surname.' '.$specialist->name }}</option>

                </select>
                <label for="specialist">Specialista</label>
            </div>

            <div class="form-group">
                <select name="patient" style="width: 200px">
                    @foreach($patients as $patient)
                        <option value="{{ $patient->id }}"> {{ $patient->surname.' '.$patient->name }}</option>
                    @endforeach
                </select>
                <label for="patient" >Pacjent</label>
            </div>
            <div class="form-group">
               <input type="date" name="date" style="width: 200px">
                <label for="date" >Data wizyty</label>
            </div>
            <div class="form-group">
                <input type="time" name="timeIn" style="width: 200px">
                <label for="timeIn" >Godzina rozpoczęcia</label>
            </div>
            <div class="form-group">
                <input type="time" name="timeOut" style="width: 200px">
                <label for="timeOut" >Godzina zakończenia</label>
            </div>
            <div class="form-group">
                <label for="description">Opis</label >
                <textarea class="form-control" name="description" rows="5"></textarea>
            </div>

            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="status" id="rezerwation" value="rezerwacja" checked>
                <label class="form-check-label" for="rezerwation">
                    rezerwacja
                </label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="status" id="cancelled" value="odwołana" >
                <label class="form-check-label" for="cancelled">
                    odwołana
                </label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="status" id="visit" value="wizyta">
                <label class="form-check-label" for="visit">
                    wizyta
                </label>
            </div>
            <div class="my-3">
            <input type="submit" value="Dodaj" class="btn-primary" />
            </div>
        </form>
    </div>
@endsection





