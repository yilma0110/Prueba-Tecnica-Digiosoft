<?php

namespace App\Models\ValidationRules;

use App\Models\ClienteModel;
use App\Models\ServicioModel;
use App\Models\TecnicoModel;

//Clase con reglas perzonalizadas creadas para la validacion de algunos datos
class MyCustomRules {
    //verifica si el id de servicio recibido existe en los registros
    public function idservicio_valido(int $id): bool{
        $model = new ServicioModel();
        $servicio = $model->find($id);
        
        return $servicio == null? false : true;
    }

    //verifica si el id de cliente recibido existe 
    public function idcliente_valido(int $id): bool{
        $model = new ClienteModel();
        $cliente = $model->find($id);
        
        return $cliente == null? false : true;
    }

    //verifica si el id de cliente recibido existe 
    public function idtecnico_valido(int $id): bool{
        $model = new TecnicoModel();
        $tecnico = $model->find($id);
        
        return $tecnico == null? false : true;
    }
}