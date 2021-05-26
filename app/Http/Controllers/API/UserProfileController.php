<?php

namespace App\Http\Controllers\API;

use Illuminate\Http\Request;
use App\UserProfile;
use App\Http\Resources\UserProfileResource;
use App\Http\Controllers\Controller;
use GuzzleHttp\Client;
use GuzzleHttp\Exception\GuzzleException;
use Exception;
use App\Http\Requests\StoreUserProfile;

class UserProfileController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        try {
            $userProfile = UserProfile::all();
            return $userProfile;
        } catch (Exception $exception){
            return $exception->getMessage();
        }
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
        // 
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreUserProfile $request)
    {
        try {
            $userProfile = UserProfile::create($request->all());
            return response([ 'profile' => new UserProfileResource($userProfile), 'message' => 'Created successfully'], 200);
        } catch (Exception $exception){
            return $exception->getMessage();
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        try {
            $userProfile = UserProfile::findOrFail($id);
            return new UserProfileResource($userProfile);
        } catch (Exception $exception){
            return $exception->getMessage();
        }
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        // 
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        try {
            $userProfile = UserProfile::where('user_id', $id)->first();
            $userProfile->update($request->all());
            return new UserProfileResource($userProfile);
        } catch (Exception $exception){
            return $exception->getMessage();
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        try {
            $userProfile = UserProfile::where('user_id', $id)->first();
            $userProfile->delete();

            $response = ['user' => $userProfile, 'message' => 'delete profile', 'status' => true];
            return response($response, 200);
        } catch (Exception $exception){
            return $exception->getMessage();
        }
    }
}
