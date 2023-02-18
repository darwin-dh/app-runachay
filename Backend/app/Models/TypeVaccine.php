<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TypeVaccine extends Model
{
    protected $table = 'type_vaccine';
    protected $primaryKey = 'id_type_vaccine';
    use HasFactory;

}
