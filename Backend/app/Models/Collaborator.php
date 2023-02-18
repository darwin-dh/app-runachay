<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Collaborator extends Model
{
    protected $table      = 'collaborator';
    protected $primaryKey = "id_collaborator";
    use HasFactory;

    //save
    public function saveCollaborator(
        $identification,
        $name,
        $last_name,
        $email,
        $status,
        $iduser
    ) {
        $this->identification  = $identification;
        $this->name            = $name;
        $this->last_name       = $last_name;
        $this->email           = $email;
        $this->status          = $status;
        $this->id_user         = $iduser;
        if ($this->save()) {
            return $this;
        } else {
            throw new \Exception('No se pudo guardar');
        }
    }
    public static function updateCollaborator(
        Collaborator $collaborator,
        $identification,
        $name,
        $last_name,
        $email,
        $status,
    ) {
        $collaborator->identification  = $identification;
        $collaborator->name            = $name;
        $collaborator->last_name       = $last_name;
        $collaborator->email           = $email;
        $collaborator->status          = $status;
        if ($collaborator->save()) {
            return $collaborator;
        } else {
            throw new \Exception('no Guardada');
        }
    }
    public function User()
    {
        return $this->hasOne(User::class, 'id_users', 'id_user');
    }
    public function scopeWithUser($query, $op)
    {
        if ($op)
            return $query->with(['User']);
    }

    public function Details()
    {
        return $this->hasOne(CollaboratorDetails::class, 'id_collaborator', 'id_collaborator');
    }
    public function scopeWithDetails($query, $op)
    {
        if ($op)
            return $query->with(['Details']);
    }
    //filters
    public function scopeFechas($query, $fechainicio, $fechafin)
    {
        if (!empty($fechainicio) && !empty($fechafin))
            return $query->whereBetween('fechas', [$fechainicio, $fechafin]);
    }
}
