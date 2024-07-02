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

    //Método para regresar la informacion de las work orders uniendo la informacion de las tablas que se relacionan
    public function WorksRelation($tecnicoId = null){
        $builder = $this->db->table('tbl_workorders');

        $builder->select('tbl_workorders.IdWorkOrder, tbl_workOrders.Comentario, tbl_tiposervicio.Descripcion AS TipoServicio
                        , tbl_servicio.Descripcion AS Servicio, tbl_workorders.CreatedAt AS FechaCreacion, tbl_workorders.UpdatedAt AS UltimaModificacion');

        $builder->select("CONCAT(tbl_tecnico.Nombre, ' ', tbl_tecnico.Apellido1, ' ', tbl_tecnico.Apellido2) AS NombreTecnico");
        $builder->select("CONCAT(tbl_cliente.Nombre, ' ', tbl_cliente.Apellido1, ' ', tbl_cliente.Apellido2) AS NombreCliente");

        $builder->select('tbl_estatus.Descripcion AS Estatus');

        $builder->join('tbl_tecnico', 'tbl_workorders.TecnicoId = tbl_tecnico.IdTecnico');
        $builder->join('tbl_cliente', 'tbl_workorders.ClienteId = tbl_cliente.IdCliente');
        $builder->join('tbl_servicio', 'tbl_workorders.ServicioId = tbl_servicio.IdServicio');
        $builder->join('tbl_tiposervicio', 'tbl_servicio.TipoServicioId = tbl_tiposervicio.IdTipoServicio');
        $builder->join('tbl_estatus', 'tbl_workorders.EstatusId = tbl_estatus.IdEstatus');

        if($tecnicoId != null){
            $builder->where('tbl_workorders.TecnicoId', $tecnicoId);
        }

        $query = $builder->get();
        return $query->getResult();
    }
}