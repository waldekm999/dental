<?php
/**
 * Created by PhpStorm.
 * User: Brutus1
 * Date: 12.04.2019
 * Time: 14:39
 */
?>

<h2>Dzień Dobry {{$patient->name}}</h2>
<p>Zarejestrowano nową wizytę.</p>
<h4>Dzień wizyty:</h4><p>{{$visit->date}}</p>
<h4>Godzina wizyty</h4><p>{{$visit->time_in}}</p>
<h4>Specialista:</h4><p>{{$specialist->name.' '
.$specialist->surname}}</p>

<h2>Dziękujemy i do zobaczenia!</h2>
