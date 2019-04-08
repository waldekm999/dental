@extends('layouts.app')

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

    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ __('Zarejestruj się') }}</div>

                <div class="card-body">

                        <form method ="POST" action="{{route('patient.store')}}">
                        @csrf
                            <input type="hidden" name="_token" value="{{ csrf_token() }}"/>
                            <div class="form-group">
                                <label for="name">Imię <span class="badge badge-secondary  badge-pill">pole obowiązkowe</span></label>
                                <input type="text" class="form-control" name="name" />
                            </div>

                            <div class="form-group">
                                <label for="surname">Nazwisko <span class="badge badge-secondary  badge-pill">pole obowiązkowe</span></label>
                                <input type="text" class="form-control" name="surname" />
                            </div>

                            <div class="form-group">
                                <label for="email">Adres E-mail <span class="badge badge-secondary  badge-pill">pole obowiązkowe</span></label>
                                <input type="email" class="form-control" name="email" />
                            </div>
                            <div class="form-group">
                                <label for="pesel">PESEL <span class="badge badge-secondary  badge-pill">pole obowiązkowe</span></label>
                                <input type="text" class="form-control" name="pesel" />
                            </div>
                            <div class="form-group">
                                <label for="phone">Telefon <span class="badge badge-secondary  badge-pill">pole obowiązkowe</span></label>
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

                        <div class="form-group row">
                            <label for="password" class="col-md-4 col-form-label text-md-right">{{ __('Hasło ') }} <span class="badge badge-secondary  badge-pill">pole obowiązkowe</span></label>

                            <div class="col-md-6">
                                <input id="password" type="password" class="form-control{{ $errors->has('password') ? ' is-invalid' : '' }}" name="password" required>

                                @if ($errors->has('password'))
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('password') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="password-confirm" class="col-md-4 col-form-label text-md-right">{{ __('Powtórz hasło ') }} <span class="badge badge-secondary  badge-pill">pole obowiązkowe</span></label>

                            <div class="col-md-6">
                                <input id="password-confirm" type="password" class="form-control" name="password_confirmation" required>
                            </div>
                        </div>

                        <div class="form-group row mb-0">
                            <div class="col-md-6 offset-md-4">
                                <button type="submit" class="btn btn-primary">
                                    {{ __('Załóż konto') }}
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
