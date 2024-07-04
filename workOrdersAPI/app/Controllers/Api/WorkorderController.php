<?php

namespace App\Controllers\Api;

use App\Models\WorkorderModel;
use App\Models\TecnicoModel;
use CodeIgniter\RESTful\ResourceController;

class WorkorderController extends ResourceController{
    public function __construct() {
        $this->model = $this->setModel(new WorkorderModel());
    }

    public function getAll(){
        $workOrders = $this->model->WorksRelation();
        return $this->respond($workOrders);
    }

    public function create(){
        try {
            $work = $this->request->getJSON();

            if($this->model->save($work)){
                return $this->respondCreated($work);
            }else{
                return $this->failValidationErrors('Ha ocurrido un error ', $this->model->validation->listErrors());
            }

        } catch (\Exception $ex){
            return $this->failServerError('Error en el servidor');
        }
    }

    public function getById($id = null){
        try {
            if($id == null){
                return $this->failValidationErrors('Debe de proporcionar un ID');
            }

            $work = $this->model->find($id);

            if($work == null){
                return $this->failNotFound('No se ha encontrado el ID');
            }

            return $this->respond($work);

        } catch (\Exception $ex){
            return $this->failServerError('Error en el servidor');
        }
    }
    
    public function update($id = null){
        try {
            if($id == null){
                return $this->failValidationErrors('Debe de proporcionar un ID');
            }

            $works = $this->model->find($id);
            if($works == null){
                return $this->failNotFound('No se ha encontrado el ID');
            }

            $json = $this->request->getJSON();
            if($this->model->update($id, $json)){
                $json->IdWorkOrder = $id;
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

            $work = $this->model->find($id);
            if($work == null){
                return $this->failNotFound('No se ha encontrado el ID');
            }

            if($this->model->delete($id)){
                return $this->respondDeleted($work);
            }else{
                return $this->failServerError('Fallo al eliminar registro');
            }

        } catch (\Exception $ex){
            return $this->failServerError('Error en el servidor');
        }
    }

    //Método que regresa la infromación de las work Orders asignadas a un cliente indicado por el $id que recibe 
    public function getWorksByTecnico($id = null){
        try {
            $modelTecnico = new TecnicoModel();

            if($id == null){
                return $this->failValidationErrors('Debe de proporcionar un ID');
            }

            $tecnico = $modelTecnico->find($id);

            if($tecnico == null){
                return $this->failNotFound('No se ha encontrado el ID');
            }

            //Ejecuta el método del modelo que relaciona la tabla de workorders con técnicos
            $workOrders = $this->model->WorksRelation($id);
            return $this->respond($workOrders);

        } catch (\Exception $ex){
            return $this->failServerError($ex, 'Error en el servidor');
        }
    }
}