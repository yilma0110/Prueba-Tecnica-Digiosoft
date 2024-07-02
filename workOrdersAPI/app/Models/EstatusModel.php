<?php

namespace App\Models;

use CodeIgniter\Model;

class EstatusModel extends Model{
    protected $table         = 'tbl_estatus';
    protected $primaryKey    = 'IdEstatus';

    protected $returnType    = 'array';
    
    protected $allowedFields = [
        'Descripcion',
    ];
    
    protected $validationRules = [
        'Descripcion'             => 'required|alpha_space|min_length[2]|max_length[255]',
    ];

    protected $skipValidation = false;
}