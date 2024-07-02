<?php

namespace App\Models;

use CodeIgniter\Model;

class WorkorderModel extends Model {
    protected $table         = 'tbl_workorders';
    protected $primaryKey    = 'IdWorkOrder';

    protected $returnType    = 'array';
    
    protected $allowedFields = [
        'ServicioId',
        'ClienteId',
        'TecnicoId',
        'Comentario',
        'EstatusId'
    ];

    protected $useTimestamps = true;
    protected $createdField  = 'CreatedAt';
    protected $updatedField  = 'UpdatedAt';

    protected $validationRules = [
        'ServicioId'          => 'required',
        'ClienteId'           => 'required',
        'TecnicoId'           => 'required',
        'Comentario'          => 'required|max_length[255]',
        'EstatusId'           => 'required',
    ];

    /*protected $validationMessages = [
        'ServicioId'  => [
            'required'          => 'El ID de servicio es requerido', 
            'idservicio_valido' => 'El servicio indicado no existe'
        ],
        'ClienteId'  => [
            'required'          => 'El ID del cliente es requerido', 
            'idcliente_valido'  => 'El cliente indicado no existe'
        ],
        'TecnicoId'  => [
            'required'          => 'El ID del tecnico es requerido', 
            'idtecnico_valido'  => 'El tecnico indicado no existe'
        ],
    ];*/

    protected $skipValidation = false;
}