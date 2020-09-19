<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Movie extends Model
{
    protected $hidden = ['pivot','created_at', 'updated_at'];
    protected $fillable = ['title', 'rating', 'description', 'price', 'imageUrl'];

    public function kategoris(){
        return $this->belongsToMany('App\Kategori');
    }

    public function getImageUrlAttribute($imageUrl){
        $imageUrl = 'uploads/movieImages/'.$imageUrl;
        return $imageUrl;
    }

    public function orderdetails(){
        return $this->hasMany('App\OrderDetail');
    }
    
}
