<?php
/**
 * Created by PhpStorm.
 * User: Brutus1
 * Date: 12.04.2019
 * Time: 14:39
 */
?>



<h2 class="text-primary">Dzień Dobry {{$patient->name}}</h2>
<p class="text-primary">Dziękujemy za wizytę w naszej placówce</p>

<h4 class="text-primary">Specialista:</h4><p class="text-primary">{{$specialist->name.' '
.$specialist->surname}}</p>
<h4 class="text-primary">Wykonane zabiegi</h4><p class="text-primary">{{ $visitDetails->treatments }}</p>
<h4 class="text-primary">Podane leki</h4><p class="text-primary">{{ $visitDetails->drugs }}</p>
<h4 class="text-primary">Zalecenia dla pacjenta:</h4><p class="text-primary font-weight-bold">{{ $visitDetails->prescription }}</p>

<h2 class="text-primary">Do zobaczenia!</h2>
