let UrlApi = "http://localhost:8080/api/";

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
        console.log(data);
    }catch(ex){
        console.log(ex);
    }   
};


window.addEventListener("load", async()=>{
    await listarClientes();

});