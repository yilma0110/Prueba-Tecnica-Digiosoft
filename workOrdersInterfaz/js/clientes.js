let UrlApi = "http://localhost:8080/api/";
let dataTable;
let dataTableIsInitialized;
const inputs = document.querySelectorAll('input');

const initDataTable = async () =>{
    if(dataTableIsInitialized){
        dataTable.destroy();
    }

    await listarClientes();

    dataTable=$("#dataTable_clientes").dataTable({
        language: {
            "url": "https://cdn.datatables.net/plug-ins/1.13.1/i18n/es-ES.json"
        },
        pageLength : 5,
        lengthMenu: [[5, 10, 15, 20, -1], [5, 10, 15, 20, 'Todos']],
        columnDefs:[
            {
                className: "centered", 
                targets:[1,2,3,4,5,6]  
            }
        ]
    });

    dataTableIsInitialized = true;
    
}

async function listarClientes(){
    try{
        let options = {
            method:"GET",
            headers: {
                "Content-Type":"application/json;charset=utf-8"
            },
            mode:'cors'
        };
        const resp = await fetch(UrlApi + "clientes", options);
        const data = await resp.json();

        let content = ``;
        data.forEach(element => {
            content += `<tr>
                        <td>${element.IdCliente}</td>
                        <td>${element.Nombre}</td>
                        <td>${element.Apellido1}</td>
                        <td>${element.Apellido2}</td>
                        <td>${element.Telefono}</td>
                        <td>${element.Email}</td>
                        <td>${element.CreatedAt}</td>
                        <td>${element.UpdatedAt}</td>
                        <td>${element.Estatus == '1'? element.Estatus = 'Activo' : element.Estatus = 'Inactivo' } </td>
                        <td> 
                            <button class="btn btn-sm btn-warning" data-bs-toggle="modal" data-bs-target="#mi-modal" > <i class="fa-solid fa-pencil"></i> </button>
                            <button class="btn btn-sm btn-danger"> <i class="fa-solid fa-trash-can"></i> </button>
                        </td>
                    </tr>`;
        });

        tableBody_clientes.innerHTML = content;
    }catch(ex){
        console.log(ex);
    }   
};


window.addEventListener("load", async()=>{
    await initDataTable();

});

dataTable_clientes.addEventListener("click", (e)=>{
    e.stopPropagation();
    console.log(inputs)
    //toma los datos de la fila donde se encuentra el botón al que se le dio click
    let clienteSelected = (e.target.parentElement.parentElement.children);
    btnModificar(clienteSelected)

});

const btnModificar = (data) =>{
    console.log(data);
    //Llena el formulario del modal con la información del cliente seleccionado
    id.innerHTML = data[0].textContent;
    nombre.value = data[1].textContent;
    apellido1.value = data[2].textContent;
    apellido2.value = data[3].textContent;
    telefono.value = data[4].textContent;
    email.value = data[5].textContent;
    data[8].innerText == 'Activo' ? estatus.value = 1 : estatus.value = 2
}