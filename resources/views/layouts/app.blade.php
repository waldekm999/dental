<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ 'Stomatologia Dental'}}</title>

    <!-- Scripts -->
    <script src="{{ asset('js/app.js') }}" defer></script>

    <!-- Fonts -->
    <link rel="dns-prefetch" href="//fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet" type="text/css">

    <!-- Styles -->
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
    <link href="{{ asset('css/style.css') }}" rel="stylesheet">
</head>
<body>
<div id="app">
    <nav class="navbar navbar-expand-md navbar-light navbar-laravel position-sticky fixed-top">
        <div class="container-fluid">
            <a class="navbar-brand" href="{{ url('/') }}">
                <img class="img-responsive" src="{{ asset('/images/dental_example.png') }}" alt="Logo przychodni"
                     height="50" width="120">
            </a>


            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="{{ __('Toggle navigation') }}">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <!-- Left Side Of Navbar -->
                <ul class="navbar-nav mr-auto">
                    <a class="navbar-brand" href="{{ url('/') }}">
                        {{ __('Nasze specjalizacje') }}
                    </a>
                    <a class="navbar-brand" href="{{ route('global.personnel') }}">
                        {{ __('Nasi specjaliści') }}
                    </a>
                    <a class="navbar-brand" href="{{ url('/') }}">
                        {{ __('Umów wizytę') }}
                    </a>
                    <a class="navbar-brand" href="{{ url('/') }}">
                        {{ __('Jak dojechać') }}
                    </a>
                </ul>

                <!-- Right Side Of Navbar -->
                <ul class="navbar-nav ml-auto">


                    <!-- Authentication Links -->
                    @guest
                        <li class="nav-item">
                            <a class="nav-link" href="{{ route('login') }}">{{ __('Zaloguj sie') }}</a>
                        </li>

                        @if (Route::has('register'))
                            <li class="nav-item">
                                <a class="nav-link" href="{{ route('register') }}">{{ __('Zarejestruj się') }}</a>
                            </li>
                        @endif
                    @else
                        <li class="nav-item dropdown">
                            <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                                {{ Auth::user()->name }} <span class="caret"></span>
                            </a>

                            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="{{ route('logout') }}"
                                   onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                    {{ __('Wyloguj się') }}
                                </a>

                                <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                    @csrf
                                </form>
                            </div>
                        </li>
                    @endguest
                </ul>
            </div>
        </div>
    </nav>

    <main class="py-4 myContainer">
        @yield('content')
    </main>
    <div class="footer jumbotron text-center bg-primary" >
        <p>&copy; Copyright 2019</p>
        <p>Designed by: Waldemar Małecki</p>
        <p>Powered by: freepik.com</p>
    </div>
</div>
</body>
</html>
