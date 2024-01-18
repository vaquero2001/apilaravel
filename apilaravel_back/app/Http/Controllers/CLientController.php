<?php

namespace App\Http\Controllers;

use App\Models\CLient;
use Illuminate\Http\Request;
use App\Events\event_participantes;

class CLientController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return CLient::all();
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request -> validate([
            'email' => 'required',
            'phone' => 'required'
        ]);
        $cLient = new CLient;
        $cLient -> name = $request -> name;
        $cLient -> lastname = $request -> lastname;
        $cLient -> email = $request -> email;
        $cLient -> phone = $request -> phone;
        $cLient -> save();

        event_participantes::dispatch();

        return $cLient;
    }



    /**
     * Display the specified resource.
     *
     * @param  \App\Models\CLient  $cLient
     * @return \Illuminate\Http\Response
     */
    public function show(CLient $cLient)
    {
        return $cLient;
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\CLient  $cLient
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, CLient $cLient)
    {
        $request -> validate([
            'email' => 'required',
            'phone' => 'required'
        ]);
        
        $cLient -> name = $request -> name;
        $cLient -> lastname = $request -> lastname;
        $cLient -> email = $request -> email;
        $cLient -> phone = $request -> phone;
        $cLient -> update();

        return $cLient;
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\CLient  $cLient
     * @return \Illuminate\Http\Response
     */
    public function destroy(CLient $cLient)
    {
        $cLient -> delete();
        return response() ->noContent(); 
    }
}
