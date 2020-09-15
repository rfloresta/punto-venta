(function(){
"use strict";

var usuario=document.getElementById("dni");
var passw=document.getElementById("pass");
var acceso=document.getElementById("acc");




document.addEventListener('DOMContentLoaded', function ()
{

    var btnacceso=document.getElementById("btnreg");
    

    
    btnacceso.addEventListener('click', login);
    

    function login(event)
    {
        
        event.preventDefault();
             if(passw.value=='')
             {
                  swal({
                    title: "Error !",
                    text: "Por favor complete el password del usuario",
                    icon: "error",
                    button: "Aceptar",
                    });
                     if(usuario.value=='')
          {
                swal({
                    title: "Error !",
                    text: "Por favor complete el dni del usuario",
                    icon: "error",
                    button: "Aceptar",
                    });
             }
                    
          }else
          {
              
              acceso.submit();

          }
    }

});// DOM CONTENT LOADED
})();




