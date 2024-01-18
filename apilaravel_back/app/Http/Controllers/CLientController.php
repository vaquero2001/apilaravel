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
        $client = new CLient;
        $client -> name = $request -> name;
        $client -> lastname = $request -> lastname;
        $client -> email = $request -> email;
        $client -> phone = $request -> phone;
        $client -> save();

        event(new event_participantes($client));

        return $client;
    }



    /**
     * Display the specified resource.
     *
     * @param  \App\Models\CLient  $client
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $client = CLient::find($id);
        return $client;
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\CLient  $client
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, CLient $client, $id)
    {
        $request -> validate([
            'email' => 'required',
            'phone' => 'required'
        ]);
        
        $client = CLient::find($id);
        $client -> name = $request -> name;
        $client -> lastname = $request -> lastname;
        $client -> email = $request -> email;
        $client -> phone = $request -> phone;
        $client -> update();

        return $client;
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\CLient  $client
     * @return \Illuminate\Http\Response
     */
    public function destroy(CLient $client, $id)
    {
        $client = CLient::find($id);

        if(is_null($client)){
            return response()->json('no se pudo realizar correctamente la operacion', 404);
        }
        $client -> delete();
        return response() ->noContent(); 
    }
}
