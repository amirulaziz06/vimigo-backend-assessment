<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class UserProfile extends Model
{
    protected $fillable = [
        'user_id', 'gender', 'identification_no', 'phone_no', 'address', 'created_at', 'updated_at'
    ];

    public function User(){
        return $this->belongsTo(User::class);
    }
    
}
