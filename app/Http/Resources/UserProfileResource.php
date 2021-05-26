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
        $user = $this->first();
        return [
            'id'        => $user->id ?? '-',
            'user_id'   => $user->user_id ?? '-',
            'gender'    => $user->gender ?? '-',
            'identification_no' => $user->identification_no ?? '-',
            'phone_no' => $user->phone_no ?? '-',
            'address'  => $user->address ?? '-',
        ];
    }
}
