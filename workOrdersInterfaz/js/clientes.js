let UrlApi = "http://localhost:8080/api/";
let dataTable;
let dataTableIsInitialized;

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
        /*const resp = await fetch(UrlApi + "clientes", options);
        const data = await resp.json();
        console.log(data);*/
        let content = ``;

        content += `<tr>
                        <td>1</td>
                        <td>Yilma Lizbeth Ruiz Elizalde</td>
                        <td>6682717811</td>
                        <td>ylrelizalde4@gmail.com</td>
                        <td>Ayer</td>
                        <td>Hoy</td>
                        <td> <i class="fa-solid fa-circle-check" style="color:green"> </i> </td>
                        <td> 
                            <button class="btn btn-sm btn-primary"> <i class="fa-solid fa-pencil"></i> </button>
                            <button class="btn btn-sm btn-warning"> <i class="fa-solid fa-ban"></i> </button>
                            <button class="btn btn-sm btn-danger"> <i class="fa-solid fa-trash-can"></i> </button>
                        </td>
                    </tr>`;

        tableBody_clientes.innerHTML = content;
    }catch(ex){
        console.log(ex);
    }   
};


window.addEventListener("load", async()=>{
    await initDataTable();

});