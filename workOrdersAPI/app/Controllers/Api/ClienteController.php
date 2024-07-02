<?php

namespace App\Controllers\Api;

use App\Models\ClienteModel;
use CodeIgniter\RESTful\ResourceController;

class ClienteController extends ResourceController
{
    //Especificar el modelo que se usa en este controlador
    public function __construct() {
        $this->model = $this->setModel(new ClienteModel());
    }

    //Funcion que regresa todos los registros de clientes
    public function getAll()
    {
        $clientes = $this->model->findAll();
        return $this->respond($clientes);
    }

    //Funcion para crear un nuevo registro de cliente
    public function create()
    {
        try {
            //se recibe el cuerpo en formato json del request en el objeto de $cliente
            $cliente = $this->request->getJSON();

            if($this->model->save($cliente)){
                return $this->respondCreated($cliente);
            }else{
                return $this->failValidationErrors($this->model->validation->listErrors());
            }

        } catch (\Exception $ex){
            return $this->failServerError($ex, 'Error en el servidor');
        }
    }

    //Funcion que obtiene un registro por el id proporcionado 
    public function getById($id = null){
        try {
            if($id == null){
                return $this->failValidationErrors('Debe de proporcionar un ID');
            }

            $cliente = $this->model->find($id);
            if($cliente == null){
                return $this->failNotFound('No se ha encontrado el ID');
            }

            return $this->respond($cliente);

        } catch (\Exception $ex){
            return $this->failServerError('Error en el servidor');
        }
    }

    public function update($id = null){
        try {
            if($id == null){
                return $this->failValidationErrors('Debe de proporcionar un ID');
            }

            //Busca el cliente con el id proporcionado para validar el id
            $cliente = $this->model->find($id);
            if($cliente == null){
                return $this->failNotFound('No se ha encontrado el ID');
            }

            //Cuerpo de la peticion en json
            $json = $this->request->getJSON();
            //Actualizacion del registro
            if($this->model->update($id, $json)){
                $json->IdCliente = $id;
                return $this->respondUpdated($json);
            }else{
                return $this->failValidationErrors($this->model->validation->listErrors());
            }

        } catch (\Exception $ex){
            return $this->failServerError('Error en el servidor');
        }
    }

    public function delete($id = null){
        try {
            if($id == null){
                return $this->failValidationErrors('Debe de proporcionar un ID');
            }

            //Busca el cliente con el id proporcionado para validar el id
            $cliente = $this->model->find($id);
            if($cliente == null){
                return $this->failNotFound('No se ha encontrado el ID');
            }

            //Actualizacion del registro
            if($this->model->delete($id)){
                return $this->respondDeleted($cliente);
            }else{
                return $this->failServerError('Fallo al eliminar registro');
            }

        } catch (\Exception $ex){
            return $this->failServerError('Error en el servidor');
        }
    }
}
