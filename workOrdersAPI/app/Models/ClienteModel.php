<?php

namespace App\Models;

use CodeIgniter\Model;

class ClienteModel extends Model{
    protected $table         = 'tbl_cliente';
    protected $primaryKey    = 'IdCliente';

    //el modelo regresará los resultados del mapeo de la tabla como un arreglo
    protected $returnType    = 'array';
    
    protected $allowedFields = [
        'Nombre',
        'Apellido1',
        'Apellido2',
        'Telefono',
        'Email',
        'Estatus'
    ];

    //Manejo de las fechas de creación y ultima actualizacion
    protected $useTimestamps = true;
    protected $createdField  = 'CreatedAt';
    protected $updatedField  = 'UpdatedAt';
    
    //Reglas de validacion para los datos que se recibirán
    protected $validationRules = [
        'Nombre'          => 'required|alpha_space|min_length[2]|max_length[70]',
        'Apellido1'       => 'required|alpha_space|min_length[2]|max_length[70]',
        'Apellido2'       => 'required|alpha_space|min_length[2]|max_length[70]',
        'Telefono'        => 'required|min_length[10]|max_length[10]',
        'Email'           => 'permit_empty|valid_email|max_length[100]',
    ];

    //Emejmplo de Mensaje perzonalizado para regresar en caso de romperse alguna de las reglas anteriores
    protected $validationMessages = [
        'Email'  => [
            'valid_email' => 'Por favor ingrese una direccion de email valida'
        ],
    ];

    protected $skipValidation = false;
}