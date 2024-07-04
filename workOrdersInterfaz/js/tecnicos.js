let UrlApi = "http://localhost:8080/api/";
let dataTable;
let dataTableIsInitialized;

//Inicializa la tabla de tecnicos como dataTable
const initDataTable = async () =>{
    if(dataTableIsInitialized){
        dataTable.destroy();
    }

    await listar();

    dataTable=$("#dataTable_tecnicos").dataTable({
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

//Ejecuta la petición fetch  para obtener todos los tecnicos y los inserta en la tabla
async function listar(){
    try{
        let options = {
            method:"GET",
            headers: {
                "Content-Type":"application/json;charset=utf-8"
            },
        };
        const resp = await fetch(UrlApi + "tecnicos", options);
        const data = await resp.json();
        
        let content = ``;
        data.forEach(element => {
            content += `<tr>
                        <td>${element.IdTecnico}</td>
                        <td>${element.Nombre}</td>
                        <td>${element.Apellido1}</td>
                        <td>${element.Apellido2}</td>
                        <td>${element.Telefono}</td>
                        <td>${element.Email}</td>
                        <td>${element.CreatedAt}</td>
                        <td>${element.UpdatedAt}</td>
                        <td>${element.Estatus == '1'? element.Estatus = 'Activo' : element.Estatus = 'Inactivo' } </td>
                        <td> 
                            <button name="editar" class="btn btn-sm btn-warning" data-bs-toggle="modal" data-bs-target="#mi-modal" > <i class="fa-solid fa-pencil"></i> </button>
                            <button class="btn btn-sm btn-danger"> <i class="fa-solid fa-trash-can"></i> </button>
                        </td>
                    </tr>`;
        });

        tableBody_tecnicos.innerHTML = content;
    }catch(ex){
        console.log(ex);
    }   
};

//Ejecuta la petición para Agregar nuevo tecnico
async function agregar(){
    try{
        let options = {
            method:"POST",
            headers: {
                "Content-Type":"application/json;charset=utf-8"
            },
            body: JSON.stringify({
                Nombre: nombre.value,
                Apellido1: apellido1.value,
                Apellido2: apellido2.value,
                Telefono: telefono.value,
                Email: email.value,
                Estatus: "1"
            })
        };

        const resp = await fetch(UrlApi + "tecnicos/crear", options);
        console.log(resp)
        
        if(resp.ok){
            $('#mi-modal').modal('hide')
            Swal.fire({
                title: "Correcto!",
                text: "Tecnico registrado con éxito",
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

//Ejecuta la petición para Modificar un tecnico existente
async function editar(){
    try{
        let options = {
            method:"PUT",
            headers: {
                "Content-Type":"application/json;charset=utf-8"
            },
            body: JSON.stringify({
                Nombre: nombre.value,
                Apellido1: apellido1.value,
                Apellido2: apellido2.value,
                Telefono: telefono.value,
                Email: email.value,
                Estatus: estatus.value
            })
        };

        const resp = await fetch(UrlApi + "tecnicos/editar/" + id.innerHTML, options);
        console.log(resp)
        
        if(resp.ok){
            $('#mi-modal').modal('hide')
            Swal.fire({
                title: "Correcto!",
                text: "Tecnico modificado con éxito",
                icon: "success",
                timer: 5000,
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

window.addEventListener("load", async()=>{
    await initDataTable();

});

//Evento para controlar el click a un botón de opciones en la tabla
dataTable_tecnicos.addEventListener("click", (e)=>{
    e.stopPropagation();
    //Toma los datos de la fila donde se encuentra el botón al que se le dio click
    let clienteSelected = (e.target.parentElement.parentElement.children);
    if(e.target.name == 'editar'){
        createForm('editar');
        fillData(clienteSelected);
    }
});

btn_agregar.addEventListener("click", (e) =>{
    e.stopPropagation();
    createForm('agregar');
})

//Llena el formulario del modal con la información del cliente seleccionado
const fillData = (data) =>{
    id.innerHTML = data[0].textContent;
    nombre.value = data[1].textContent;
    apellido1.value = data[2].textContent;
    apellido2.value = data[3].textContent;
    telefono.value = data[4].textContent;
    email.value = data[5].textContent;
    data[8].innerText == 'Activo' ? estatus.value = 1 : estatus.value = 2
}

//Crear formulario para el modal, recibe el tipo de modal: editar o agregar
const createForm =(mode)=>{
    ResetForm(document.getElementById('form'))

    let content = ``;
    if(mode == 'editar'){
        content += `<div class="row mb-2">
                                <label class="col-3 col-form-label">Id Cliente: </label>
                                <label class="col-9 col-form-label" id="id">idCliente</label>
                            </div>`;
    }

    content += `<div class="row mb-2">
                                <label class="col-3 col-form-label" for="nombre">Nombre: </label>
                                <div class="col-9">
                                    <input type="text" name="" id="nombre" class="form-control" required>
                                    <div class="valid-feedback">
                                        Valido
                                    </div>
                                    <div class="invalid-feedback">
                                        Por favor ingrese su nombre
                                    </div>
                                </div>
                                
                            </div>

                            <div class="row mb-2">
                                <label class="col-3 col-form-label" for="apellido1">Apellido 1: </label>
                                <div class="col-3">
                                    <input type="text" name="" id="apellido1" class="form-control" required>
                                    <div class="valid-feedback">
                                        Valido
                                    </div>
                                    <div class="invalid-feedback">
                                        Por favor ingrese su primer apellido
                                    </div>
                                </div>
                                
                                <label class="col-3 col-form-label" for="apellido2">Apellido 2: </label>
                                <div class="col-3">
                                    <input type="text" name="" id="apellido2" class="form-control">
                                </div>
                            </div>

                            <div class="row mb-2">
                                <label class="col-3 col-form-label" for="email">E-mail: </label>
                                <div class="col-9">
                                    <input type="text" name="" id="email" class="form-control">
                                </div>
                            </div>

                            <div class="row mb-2">
                                <label class="col-3 col-form-label" for="telefono">Tel: </label>
                                <div class="col-9">
                                    <input type="text" name="" id="telefono" class="form-control" required>
                                    <div class="valid-feedback">
                                        Valido
                                    </div>
                                    <div class="invalid-feedback">
                                        Por favor ingrese su número de teléfono
                                    </div>
                                </div>
                            </div>
                            `;
    if(mode == 'editar'){
        content += `<div class="row mb-3">
                        <label class="col-3 col-form-label" for="estatus">Estatus: </label>
                        <div class="col-4">
                            <select class="form-select" aria-label="Default select example" id="estatus">
                                <option value="1">Activo</option>
                                <option value="2">Inactivo</option>
                            </select>
                        </div>
                    </div>`;
    }

    content += `<div class="row mb-3 position-relative">
                    <button type="button"  data-bs-dismiss="modal" class="btn btn-secondary col-3 position-absolute start-50">Cancelar</button>
                    <button type="submit" class="btn btn-success col-3 position-absolute end-0" onclick="btnGuardar()">Guardar</button>
                </div>`;
    
    //Inserta los componentes HTML al formulario del modal
    form.innerHTML = content;

    //Agrega el titulo dependiendo si la operación a realizar es editar o modificar
    mode == 'agregar' ?  title_modal.innerHTML = 'Agregar nuevo tecnico' : title_modal.innerHTML = 'Modificar tecnico existente';
}

//Evento click con el método que realiza el botón Guardar dentro del modal
function btnGuardar(){
    if(title_modal.innerHTML == 'Agregar nuevo tecnico'){
        if(form.checkValidity()){
            agregar();
        }
        
    }else if(title_modal.innerHTML == 'Modificar tecnico existente'){
        if(form.checkValidity()){
            console.log(id.innerHTML)
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
