<?php

namespace App\Controllers\Api;

use App\Models\ServicioModel;
use CodeIgniter\RESTful\ResourceController;

class ServicioController extends ResourceController{
    public function __construct() {
        $this->model = $this->setModel(new ServicioModel());
    }

    public function getAll(){
        $servicios = $this->model->findAll();
        return $this->respond($servicios);
    }

    public function create(){
        try {
            $servicio = $this->request->getJSON();

            if($this->model->save($servicio)){
                return $this->respondCreated($servicio);
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

            $servicio = $this->model->find($id);
            if($servicio == null){
                return $this->failNotFound('No se ha encontrado el ID');
            }

            if($this->model->delete($id)){
                return $this->respondDeleted($servicio);
            }else{
                return $this->failServerError('Fallo al eliminar registro');
            }

        } catch (\Exception $ex){
            return $this->failServerError('Error en el servidor');
        }
    }

}
