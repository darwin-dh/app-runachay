<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class StatusVaccine extends Model
{
    protected $table      = 'status_vacine';
    protected $primaryKey = "id_status_vacine";
    use HasFactory;
}
