<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\StatusVaccine;
use Illuminate\Http\Request;

class StatusVaccineController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $resonpse = StatusVaccine::all();
        return response()->json(['data' =>  $resonpse], 201);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\StatusVaccine  $statusVaccine
     * @return \Illuminate\Http\Response
     */
    public function show(StatusVaccine $statusVaccine)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\StatusVaccine  $statusVaccine
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, StatusVaccine $statusVaccine)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\StatusVaccine  $statusVaccine
     * @return \Illuminate\Http\Response
     */
    public function destroy(StatusVaccine $statusVaccine)
    {
        //
    }
}
