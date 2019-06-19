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


        <form action="{{  action('VisitController@storeDetails') }}" method="post" role="form">
            <input type="hidden" name="_token" value="{{ csrf_token() }}"/>
            <input type="hidden" name="visit_id" value="{{ $visit->id }}"/>
            <input type="hidden" name="visit_patient" value="{{ $visit->patient_id }}"/>
            <input type="hidden" name="visit_doctor" value="{{ $visit->doctor_id }}"/>


            <div class="row">
                <div class="col-12">
            <div class="form-group">
                <select name="specialist" style="width: 200px" readonly disabled>

                       <option value="{{$visit->doctor_id}}"> {{$visit->doctor->name.' '.$visit->doctor->surname}} </option>

                </select>
                <label for="specialist">Specialista</label>
            </div>

            <div class="form-group" >
                <select name="patient" style="width: 200px" readonly disabled>

                        <option value="{{$visit->patient_id }}"> {{$visit->patient->name.' '.$visit->patient->surname }}</option>

                </select>
                <label for="patient" >Pacjent</label>
            </div>
            <div class="form-group">
               <input type="date" name="date" style="width: 200px" value="{{ $visit->date }}" readonly disabled>
                <label for="date" >Data wizyty</label>
            </div>
            <div class="form-group">
                <input type="time" name="timeIn" style="width: 200px" value="{{ $visit->time_in }}" readonly disabled>
                <label for="timeIn" >Godzina rozpoczęcia</label>
            </div>
            <div class="form-group">
                <input type="time" name="timeOut" style="width: 200px" value="{{ $visit->time_out }}" readonly disabled>
                <label for="timeOut" >Godzina zakończenia</label>
            </div>
                </div>
            </div>
                <div class="row">

                <div class="col-md-6">
            <div class="form-group">
                <label for="description">Opis</label>
                <textarea class="form-control" name="description" rows="5" readonly disabled>{{$visit->description}}</textarea>
            </div>
                </div>

                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="treatments">Wykonane zabiegi</label>
                            <textarea class="form-control" name="treatments" rows="5" ></textarea>
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="drugs">Podane leki</label>
                            <textarea class="form-control" name="drugs" rows="5" ></textarea>
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="prescription">Zalecenia dla pacjenta po wizycie</label>
                            <textarea class="form-control" name="prescription" rows="5" ></textarea>
                        </div>
                    </div>

                </div>

            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="status" id="rezerwation" value="rezerwacja">
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
                <input class="form-check-input" type="radio" name="status" id="visit" value="wizyta" checked>
                <label class="form-check-label" for="visit">
                    wizyta
                </label>
            </div>
            <div class="my-3">
            <input type="submit" value="Wprowadź zmiany" class="btn-primary" />
            </div>


        </form>
    </div>
@endsection





