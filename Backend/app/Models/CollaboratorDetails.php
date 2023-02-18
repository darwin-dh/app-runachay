<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CollaboratorDetails extends Model
{
    use HasFactory;
    protected $table = 'collaborator_details';
    protected $primaryKey = 'id_collaborator_details';

    public function saveCollaboratorDetails(
        $birthdate,
        $address,
        $phone,
        $vaccination_status,
        $type_vaccine,
        $idcollaborator
    ) {
        $this->birthdate          = $birthdate;
        $this->address            = $address;
        $this->phone              = $phone;
        $this->vaccination_status = $vaccination_status;
        $this->type_vaccine       = $type_vaccine;
        $this->id_collaborator    = $idcollaborator;

        if ($this->save()) {
            return $this;
        } else {
            throw new \Exception('Receta no Guardada');
        }
    }
    public static function updateCollaboratorDetails(
        CollaboratorDetails $collaboratorDetails,
        $birthdate,
        $address,
        $phone,
        $vaccination_status,
        $type_vaccine,

    ) {
        $collaboratorDetails->birthdate          = $birthdate;
        $collaboratorDetails->address            = $address;
        $collaboratorDetails->phone              = $phone;
        $collaboratorDetails->vaccination_status = $vaccination_status;
        $collaboratorDetails->type_vaccine       = $type_vaccine;

        if ($collaboratorDetails->save()) {
            return $collaboratorDetails;
        } else {
            throw new \Exception('no Guardada');
        }
    }
    public function scopeFechas($query, $fechainicio, $fechafin)
    {
        if (!empty($fechainicio) && !empty($fechafin))
            return $query->whereBetween('created_at', [$fechainicio, $fechafin]);
    }
}
