(function(){
"use strict";






document.addEventListener('DOMContentLoaded', function ()
{

    var action=document.getElementById("eliu");
    var btneliminar=document.getElementById("eli");
    console.log(btneliminar);
    
    btneliminar.addEventListener('click', eliminar);
    

    function eliminar(event)
    {
        
        event.preventDefault();
          
        
            swal({
                title: "Esta seguro de eliminar este registro?",
                text: "Los registros eliminados no se podran recuperar!",
                icon: "warning",
                buttons: true,
                dangerMode: true,
            })
                    .then((willDelete) => {
                        if (willDelete) {
                            swal("El registro se elimino exitosamente!", {
                                icon: "success",

                            });
                           action.submit()
                        } else {
                            swal("Se canselo la eliminacion!");
                        }
                        
                       
                        
                    });
                    
                    

                    
    }

});// DOM CONTENT LOADED
})();

