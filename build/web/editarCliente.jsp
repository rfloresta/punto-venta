<%@ include file="/cabecera.jsp" %>

<div class="main">
    <br><br><br><br><br><br><br><br>
        <div class="container">
            <div class="row">
                                                      
                <div class="col-md-8">  

                    
                    <center><h3 class="text-muted">Editar Clientes</h3> </center> <br>
                    <% Salida clie=(Salida)session.getAttribute("cliente"); %>
                   
             
        <div class="table-responsive table-centered">   
                        
                        <table class="table table-hover">
                            <html:form action="/EditarCliente" method="POST">
                           
                                <tr>
                                    <td>Nombre</td>
                                    <td>
                                        <html:hidden property="id" value="<%= String.valueOf(clie.getCliente().getIdcli()) %>"/>
                                        <html:text property="nom" styleClass="form-control" value="<%= clie.getCliente().getNomCli()%>" />
                                    </td>
                                
                                </tr> 
                                <tr>
                                    <td>Dni </td>
                                    <td>
                                        <html:text property="dni" styleClass="form-control" value="<%= clie.getCliente().getDni()%>" />
                                    </td>
                                </tr> 
                                 <tr>
                                    <td>Telefono</td>
                                    <td>
                                        <html:text property="telf" styleClass="form-control" value="<%= clie.getCliente().getTeleCli() %>" />
                                    </td>
                                
                                </tr> 
                                 <tr>
                                    <td>Direccion</td>
                                    <td>
                                        <html:text property="direcc" styleClass="form-control" value="<%= clie.getCliente().getDireCli()%>" />
                                    </td>
                                
                                </tr> 
                                <tr>
                                    <td>Email</td>
                                    <td>
                                        <html:text property="email" styleClass="form-control" value="<%= String.valueOf(clie.getCliente().getEmail()) %>" />
                                    </td>
                                
                                </tr> 
                                
                                <tr>
                                    <td colspan="3"><html:submit value="Modificar" styleClass="form-control btn-primary" /></td>
                                    
                                </tr>
                                
                              <div style="color: red" >
                                <html:messages id="dni" >
                                   ${dni}<br>
                                 </html:messages>
                              </div>
                          
                            </html:form>
                                                                 
                            
                        </table>  
                        
                    </div>
                </div>
</div>
            </div>
    </div>