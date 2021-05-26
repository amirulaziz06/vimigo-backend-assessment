<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\ResourceCollection;

class UserProfileResource extends ResourceCollection
{
    /**
     * Transform the resource collection into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        // return parent::toArray($request);
        return [
            'id'        => $this->id,
            'user_id'   => $this->user_id,
            'gender'    => $this->gender,
            'identification_no' => $this->identification_no,
            'phone_no' => $this->phone_no,
            'address'  => $this->address,
        ];
    }
}
