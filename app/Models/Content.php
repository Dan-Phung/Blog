<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Content extends Model
{
    use HasFactory;

    protected $fillable = ['title', 'description', 'image', 'customer_id', ];


    public function cus(){
        return $this->hasOne(Customer::class, 'id', 'customer_id');
    }
    public function comments()
    {
        return $this->hasMany(Comment::class);
    }
}
