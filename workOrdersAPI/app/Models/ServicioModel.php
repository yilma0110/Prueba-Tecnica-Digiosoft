<?php

namespace App\Models;

use CodeIgniter\Model;

class ServicioModel extends Model{
    protected $table         = 'tbl_servicio';
    protected $primaryKey    = 'IdServicio';

    protected $returnType    = 'array';
    
    protected $allowedFields = [
        'TipoServicioId',
        'Descripcion',
    ];

    protected $useTimestamps = true;
    protected $createdField  = 'CreatedAt';
    protected $updatedField  = 'UpdatedAt';
    
    protected $validationRules = [
        'TipoServicioId'          => 'required',
        'Descripcion'             => 'required|alpha_space|min_length[2]|max_length[255]',
    ];

    protected $skipValidation = false;
}