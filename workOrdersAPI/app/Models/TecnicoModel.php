<?php

namespace App\Models;

use CodeIgniter\Model;

class TecnicoModel extends Model {
    protected $table         = 'tbl_tecnico';
    protected $primaryKey    = 'IdTecnico';

    protected $returnType    = 'array';
    
    protected $allowedFields = [
        'Nombre',
        'Apellido1',
        'Apellido2',
        'Telefono',
        'Email',
        'Estatus'
    ];

    protected $useTimestamps = true;
    protected $createdField  = 'CreatedAt';
    protected $updatedField  = 'UpdatedAt';

    protected $validationRules = [
        'Nombre'          => 'required|alpha_space|min_length[2]|max_length[70]',
        'Apellido1'       => 'required|alpha_space|min_length[2]|max_length[70]',
        'Apellido2'       => 'required|alpha_space|min_length[2]|max_length[70]',
        'Telefono'        => 'required|min_length[10]|max_length[10]',
        'Email'           => 'permit_empty|valid_email|max_length[100]',
    ];

    protected $skipValidation = false;
}