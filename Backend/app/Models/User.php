<?php

namespace App\Models;

// use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;
use Illuminate\Support\Facades\Hash;

class User extends Authenticatable
{
    use HasApiTokens, HasFactory, Notifiable;

    protected $table = 'users';
    protected $primaryKey = 'id_users';
    use HasFactory;
    public function saveUser(
        $email,
        $name,
        $last_name,
        $link,
        $password,
        $status,
    ) {
        $this->email     = $email;
        $this->name      = $name;
        $this->last_name = $last_name;
        $this->link      = $link;
        $this->password  = Hash::make($password);
        $this->status    = $status;
        if ($this->save()) {
            return $this;
        } else {
            throw new \Exception('Error al guardar');
        }
    }
}
