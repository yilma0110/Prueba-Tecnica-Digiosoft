<?php

namespace App\Models;

use CodeIgniter\Model;

class TipoServicioModel extends Model{
    protected $table         = 'tbl_tiposervicio';
    protected $primaryKey    = 'IdTipoServicio';

    protected $returnType    = 'array';
    
    protected $allowedFields = [
        'Descripcion',
    ];
    
    protected $validationRules = [
        'Descripcion'             => 'required|alpha_space|min_length[2]|max_length[255]',
    ];

    protected $skipValidation = false;
}