<?php

namespace App\Controllers\Api;

use App\Models\TecnicoModel;
use CodeIgniter\RESTful\ResourceController;

class TecnicoController extends ResourceController{
    public function __construct() {
        $this->model = $this->setModel(new TecnicoModel());
    }

    public function getAll(){
        $tecnicos = $this->model->findAll();
        return $this->respond($tecnicos);
    }

    public function create(){
        try {
            $tecnico = $this->request->getJSON();
            return $this->respondCreated($tecnico);

            /*if($this->model->create($tecnico)){
                return $this->respondCreated($tecnico);
            }else{
                return $this->failValidationErrors($this->model->validation->listErrors());
            }*/

        } catch (\Exception $ex){
            return $this->failServerError('Error en el servidor');
        }
    }

    public function getById($id = null){
        try {
            if($id == null){
                return $this->failValidationErrors('Debe de proporcionar un ID');
            }

            $tecnico = $this->model->find($id);
            if($tecnico == null){
                return $this->failNotFound('No se ha encontrado el ID');
            }

            return $this->respond($tecnico);

        } catch (\Exception $ex){
            return $this->failServerError('Error en el servidor');
        }
    }
    
    public function update($id = null){
        try {
            if($id == null){
                return $this->failValidationErrors('Debe de proporcionar un ID');
            }

            $tecnico = $this->model->find($id);
            if($tecnico == null){
                return $this->failNotFound('No se ha encontrado el ID');
            }

            $json = $this->request->getJSON();
            if($this->model->update($id, $json)){
                $json->IdTecnico = $id;
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

            $tecnico = $this->model->find($id);
            if($tecnico == null){
                return $this->failNotFound('No se ha encontrado el ID');
            }

            if($this->model->delete($id)){
                return $this->respondDeleted($tecnico);
            }else{
                return $this->failServerError('Fallo al eliminar registro');
            }

        } catch (\Exception $ex){
            return $this->failServerError('Error en el servidor');
        }
    }

}