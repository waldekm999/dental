<?php

namespace App\Http\Middleware;

use Closure;


class Staff
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        if($request->user()->type != 'staff' ) {
            return redirect()->action('GlobalController@index');
        }
        //return dd($request->user());

        return $next($request);
    }
}
