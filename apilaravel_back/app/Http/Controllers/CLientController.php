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
            'name'  => 'required|string|max:255',
            'lastname'  => 'required|string|max:255',
            'email' => 'required|email|string|max:255',
            'phone' => 'required'
        ]);

        try{
            $client = new CLient;
            $client -> name = $request -> name;
            $client -> lastname = $request -> lastname;
            $client -> email = $request -> email;
            $client -> phone = $request -> phone;
            $client -> save();

            event(new event_participantes($client));
            return response()->json(['message' => 'Cliente guardado con éxito', 'client' => $client], 200);
        }
        catch (\Exception $e){
            return response()->json(['error' => 'Error al guardar el cliente', 'message' => $e->getMessage()], 500);
        }

    
    }



    /**
     * Display the specified resource.
     *
     * @param  \App\Models\CLient  $client
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        
        try{
            $client = CLient::find($id);    
            return response()->json(['message' => 'Cliente encontrado con éxito', 'client' => $client], 200);
        }
        catch (\Exception $e){
            return response()->json(['error' => 'Error al encontrar al cliente', 'message' => $e->getMessage()], 500);
        }
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
            'name'  => 'required|string|max:255',
            'lastname'  => 'required|string|max:255',
            'email' => 'required|email|string|max:255',
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
