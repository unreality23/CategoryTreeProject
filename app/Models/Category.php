<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Category extends Model
{

    public function categories() {
        return $this->hasMany(self::class, 'parent_id');
    }

    public function subCategories() {
        return $this->hasMany(self::class, 'parent_id')->with('subCategories');
    }

    public function parent() {
        return $this->belongsTo(Category::class, 'parent_id')->with('parent');;
    }

}
