let UrlApi = "http://localhost:8080/api/";
let dataTable;
let dataTableIsInitialized;

//Inicializa la tabla de las ordenes como dataTable
const initDataTable = async () =>{
    if(dataTableIsInitialized){
        dataTable.destroy();
    }

    await listar();

    dataTable=$("#dataTable_works").dataTable({
        language: {
            "url": "https://cdn.datatables.net/plug-ins/1.13.1/i18n/es-ES.json"
        },
        pageLength : 5,
        lengthMenu: [[5, 10, 15, 20, -1], [5, 10, 15, 20, 'Todos']],
        columnDefs:[
            {
                className: "centered", 
                targets:[0,1,2,3,4,5,6]  
            }
        ]
    });

    dataTableIsInitialized = true;
    
}

//Ejecuta la petición fetch para obtener todos los registros y los inserta en la tabla
async function listar(){
    try{
        let options = {
            method:"GET",
            headers: {
                "Content-Type":"application/json;charset=utf-8"
            },
        };
        const resp = await fetch(UrlApi + "works", options);
        const data = await resp.json();
        
        let content = ``;
        data.forEach(element => {
            content += `<tr>
                        <td>${element.IdWorkOrder}</td>
                        <td>${element.Comentario}</td>
                        <td>${element.TipoServicio}</td>
                        <td>${element.Servicio}</td>
                        <td>${element.NombreTecnico}</td>
                        <td>${element.NombreCliente}</td>
                        <td>${element.FechaCreacion}</td>
                        <td>${element.UltimaModificacion}</td>
                        <td>${element.Estatus}</td>
                        <td> 
                            <button name="editar" class="btn btn-sm btn-warning" data-bs-toggle="modal" data-bs-target="#mi-modal" > <i class="fa-solid fa-pencil"></i> </button>
                            <button name="eliminar" class="btn btn-sm btn-danger"> <i class="fa-solid fa-trash-can"></i> </button>
                        </td>
                    </tr>`;
        });

        tableBody_works.innerHTML = content;
    }catch(ex){
        console.log(ex);
    }   
};

//Ejecuta la petición para Agregar nuevo registro
async function agregar(){
    try{
        let options = {
            method:"POST",
            headers: {
                "Content-Type":"application/json;charset=utf-8"
            },
            body: JSON.stringify({
                ServicioId: servicio.value,
                ClienteId: cliente.value,
                TecnicoId: tecnico.value,
                Comentario: comentario.value,
                EstatusId: "1" //Nuevo registro
            })
        };

        const resp = await fetch(UrlApi + "works/crear", options);
        console.log(resp)
        
        if(resp.ok){
            $('#mi-modal').modal('hide')
            Swal.fire({
                title: "Correcto!",
                text: "Orden registrada con éxito",
                icon: "success",
                timer: 3000,
                timerProgressBar: true,
                didClose: () => {
                    // Recarga la página después de que la alerta se cierre
                    location.reload();
                }
            });
            
        }else if(resp.status == 500){
            Swal.fire({
                title: "Error!",
                text: "Ha ocurrido un error",
                icon: "error"
            });
        }else{
            Swal.fire({
                title: "Error!",
                text: "Verifique que sus datos sean correctos",
                icon: "error"
            });
        }
        
    }catch(ex){
        console.log(ex);
    }   
};

//Ejecuta la petición para editar el comentario y/o estatus de un registro
async function editar(){
    try{
        let options = {
            method:"PUT",
            headers: {
                "Content-Type":"application/json;charset=utf-8"
            },
            body: JSON.stringify({
                Comentario: comentario.value,
                EstatusId: estatus.value
            })
        };

        const resp = await fetch(UrlApi + "works/editar/" + id.innerHTML, options);
        
        if(resp.ok){
            $('#mi-modal').modal('hide')
            Swal.fire({
                title: "Correcto!",
                text: "Orden modificada con éxito",
                icon: "success",
                timer: 3000,
                timerProgressBar: true,
                didClose: () => {
                    // Recarga la página después de que la alerta se cierre
                    location.reload();
                }
            });
            
        }else if(resp.status == 500){
            Swal.fire({
                title: "Error!",
                text: "Ha ocurrido un error",
                icon: "error"
            });
        }else{
            Swal.fire({
                title: "Error!",
                text: "Verifique que sus datos sean correctos",
                icon: "error"
            });
        }
        
    }catch(ex){
        console.log(ex);
    }   
};

//Peticion para eliminar un registro seleccionado
async function eliminar(idSelected){
    try{
        let options = {
            method:"DELETE",
            headers: {
                "Content-Type":"application/json;charset=utf-8"
            }
        };
        const resp = await fetch(UrlApi + "works/eliminar/" + idSelected, options);

        if(resp.ok){
            $('#mi-modal').modal('hide')
            Swal.fire({
                title: "Correcto!",
                text: "Orden eliminada con éxito",
                icon: "success",
                timer: 3000,
                timerProgressBar: true,
                didClose: () => {
                    // Recarga la página después de que la alerta se cierre
                    location.reload();
                }
            });
            
        }else if(resp.status == 500){
            Swal.fire({
                title: "Error!",
                text: "Ha ocurrido un error",
                icon: "error"
            });
        }else{
            Swal.fire({
                title: "Error!",
                text: "Verifique que sus datos sean correctos",
                icon: "error"
            });
        }
    }catch(ex){
        console.log(ex);
    }   
}

//Ejecuta la petición fetch  para obtener todos los clientes y los inserta en el select del modal
async function listarClientes(){
    try{
        let options = {
            method:"GET",
            headers: {
                "Content-Type":"application/json;charset=utf-8"
            },
        };
        const resp = await fetch(UrlApi + "clientes", options);
        const data = await resp.json();

        let content = ``;
        data.forEach(element => {
            content += `<option value=${element.IdCliente}>${element.Nombre} ${element.Apellido1} ${element.Apellido2}</option>`;
        });

        cliente.innerHTML = content;

    }catch(ex){
        console.log(ex);
    }   
};

//Ejecuta la petición fetch  para obtener todos los tecnicos
async function listarTecnicos() {
    try {
        let options = {
            method: "GET",
            headers: {
                "Content-Type": "application/json;charset=utf-8"
            },
        };
        const resp = await fetch(UrlApi + "tecnicos", options);
        const data = await resp.json();

        let content = ``;
        data.forEach(element => {
            content += `<option value=${element.IdTecnico}>${element.Nombre} ${element.Apellido1} ${element.Apellido2}</option>`;
        });

        tecnico.innerHTML = content;
    } catch (ex) {
        console.log(ex);
    }
};

//Ejecuta la petición fetch  para obtener todos los servicios
async function listarServicios() {
    try {
        let options = {
            method: "GET",
            headers: {
                "Content-Type": "application/json;charset=utf-8"
            },
        };
        const resp = await fetch(UrlApi + "servicios", options);
        const data = await resp.json();

        let content = ``;
        data.forEach(element => {
            content += `<option value=${element.IdServicio}>${element.Descripcion}</option>`;
        });

        servicio.innerHTML = content;
    } catch (ex) {
        console.log(ex);
    }
};

window.addEventListener("load", async()=>{
    await initDataTable();

});

//Llena el formulario del modal con la información del cliente seleccionado
const fillData = (data) => {
    id.innerHTML = data[0].textContent;
    comentario.value = data[1].textContent;
    if(data[8].textContent == 'Nuevo'){
        estatus.value = 1;
    }else if(data[8].textContent == 'En proceso'){
        estatus.value = 2;
    }
    else if(data[8].textContent == 'Cerrado'){
        estatus.value = 3;
    }
}

//Evento para controlar el click a un botón de opciones en la tabla
dataTable_works.addEventListener("click", (e)=>{
    e.stopPropagation();
    //Toma los datos de la fila donde se encuentra el botón al que se le dio click
    let workSelected = (e.target.parentElement.parentElement.children);
    console.log(workSelected);
    if(e.target.name == 'editar'){
        createForm('editar');
        fillData(workSelected);
    }else if(e.target.name == 'eliminar'){
        //Pedir confirmacion antes de proceder a eliminar registro
        let idSelected = workSelected[0].textContent;

        Swal.fire({
            title: `¿Estás seguro de eliminar la orden con ID ${idSelected} ?`,
            text: "Esta acción no se puede deshacer",
            icon: "warning",
            showCancelButton: true,
            confirmButtonColor: "#3085d6",
            cancelButtonColor: "#d33",
            confirmButtonText: "SÍ, continuar",
            cancelButtonText:"NO, cancelar"
        }).then((result) => {
            if (result.isConfirmed) {
              eliminar(idSelected)
            }
        });
    }
});

//Botón para agregar nuevo registro (azul)
btn_agregar.addEventListener("click", (e) =>{
    e.stopPropagation();
    createForm('agregar');
    listarServicios();
    listarClientes();
    listarTecnicos();
    
})

//Crear formulario para el modal, recibe el tipo de modal: editar o agregar
const createForm =(mode)=>{
    ResetForm(document.getElementById('form'))

    let content = '';
    if (mode == 'editar') {
        content += `<div class="row mb-2">
                        <label class="col-3 col-form-label">Id Orden: </label>
                        <label class="col-9 col-form-label" id="id">idOrden</label>
                    </div>`;
    }

    if(mode == 'agregar'){
        content += `<div class="row mb-3">
                        <label class="col-3 col-form-label" for="servicio">Servicio: </label>
                        <div class="col-9">
                            <select class="form-select" aria-label="Default select example" id="servicio" required></select>
                            <div class="valid-feedback">Valido</div>
                            <div class="invalid-feedback">Por favor seleccione el servicio</div>
                        </div>
                    </div>

                    <div class="row mb-3">
                        <label class="col-3 col-form-label" for="cliente">Cliente: </label>
                        <div class="col-9">
                            <select class="form-select" aria-label="Default select example" id="cliente" required></select>
                            <div class="valid-feedback">Valido</div>
                            <div class="invalid-feedback">Por favor seleccione un cliente</div>
                        </div>
                    </div>
                
                    <div class="row mb-3">
                        <label class="col-3 col-form-label" for="tecnico">Tecnico: </label>
                        <div class="col-9">
                            <select class="form-select" aria-label="Default select example" id="tecnico" required></select>
                            <div class="valid-feedback">Valido</div>
                            <div class="invalid-feedback">Por favor seleccione un tecnico</div>
                        </div>
                    </div>`
    }

    content += `<div class="row mb-2">
                        <label class="col-3 col-form-label" for="comentario">Comentario: </label>
                        <div class="col-9">
                            <input type="text" name="" id="comentario" class="form-control" required>
                            <div class="valid-feedback">Valido</div>
                            <div class="invalid-feedback">Por favor ingrese un comentario</div>
                        </div> 
                    </div>

                    <div class="row mb-2">
                        <label class="col-3 col-form-label" for="estatus">Estatus: </label>
                        <div class="col-9">
                            <select class="form-select" aria-label="Default select example" id="estatus" required>
                                <option value="1">Nuevo</option>
                                <option value="2">En proceso</option>
                                <option value="3">Cerrado</option>
                            </select>
                            <div class="valid-feedback">Valido</div>
                            <div class="invalid-feedback">Por favor seleccione un estatus</div>
                        </div> 
                    </div>`;

    //Botones para guardar o cancelar
    content += `<div class="row mb-3 position-relative">
                    <button type="button"  data-bs-dismiss="modal" class="btn btn-secondary col-3 position-absolute start-50">Cancelar</button>
                    <button type="submit" class="btn btn-success col-3 position-absolute end-0" onclick="btnGuardar()">Guardar</button>
                </div>`;
    
    //Inserta los componentes HTML al formulario del modal
    form.innerHTML = content;

    //Agrega el titulo dependiendo si la operación a realizar es editar o modificar
    mode == 'agregar' ?  title_modal.innerHTML = 'Agregar nueva orden' : title_modal.innerHTML = 'Modificar orden existente';
}

//Función para el botón Guardar dentro del modal
function btnGuardar() {
    if (title_modal.innerHTML == 'Agregar nueva orden') {
        if (form.checkValidity()) {
            agregar();
        }
    }else if (title_modal.innerHTML == 'Modificar orden existente') {
        if (form.checkValidity()) {
            editar();
        }
    }
}

//Validacion de los campos del formulario en el modal
(function () {
    'use strict'

    // Fetch all the forms we want to apply custom Bootstrap validation styles to
    var forms = document.querySelectorAll('.needs-validation')

    // Loop over them and prevent submission
    Array.prototype.slice.call(forms)
        .forEach(function (form) {
            form.addEventListener('submit', function (event) {
                event.preventDefault()
                event.stopPropagation()
                form.classList.add('was-validated')
            }, false)
        })
})()


function ResetForm(form) {
    form.classList.remove('was-validated');
    form.querySelectorAll(".is-invalid").forEach(el => el.classList.remove('is-invalid'));

    form.reset();
}
