
<%@page import="wyv.persistencia.Cliente"%>
<%@page import="wyv.presentacion.Salida"%>
<%@ include file="/cabecera.jsp" %>

 <div class="main">
     <br><br><br><br><br><br><br><br>
     
        <div class="container">            
            <div class="row">
                <div class="col-md-8">                    
                    <h3 align="center"><p class="text-muted">REGISTRAR CLIENTE</p></h3>                
                    
                     <html:form action="/RegistrarCliente" method="POST">       
 
                        <div class="form-group">
                            <form:label path="nom">Nombre:</form:label>
                           <html:text  property="nom" styleClass="form-control" />
                            <form:errors path="nom"/>
                        </div>
                        <div class="form-group">
                            <form:label path="dni">Dni</form:label> 
                            <html:text  property="dni" styleClass="form-control" />
                            <form:errors path="dni"/>
                        </div>
                        <div class="form-group">
                            <form:label path="telf">Telefono:</form:label> 
                            <html:text  property="telf" styleClass="form-control" />
                            <form:errors path="telf"/>
                        </div>
                        <div class="form-group">
                            <form:label path="direcc">Dirección:</form:label> 
                            <html:text  property="direcc" styleClass="form-control" />
                            <form:errors path="direcc"/>
                        </div>
                        <div class="form-group">
                            <form:label path="email">Email</form:label> 
                            <html:text  property="email" styleClass="form-control" />
                            <form:errors path="email"/>
                        </div>
                    
                            <html:submit  property="reg" value="Registrar" styleClass="btn btn-primary" />      
                             <br> 
                        <div style="color: red">
                                <html:messages id="id" >
                                    ${id}<br>
                                </html:messages>
                        </div>
                            </html:form>
                </div>
                <div class="col-md-4">                    
                    <h3 align="center"><p class="text-muted">CLIENTES</p></h3>  
                    <% Salida salLisClie=(Salida)session.getAttribute("salLisClie"); %>  
                    <div class="table-responsive table-centered">
                        <table class="table table-hover">
                            <tr class="">
                                <th>ID</th>
                                <th>Nombre</th>
                                <th>Dni</th>
                            </tr>
                              <% for(int i=0;i<salLisClie.getClientes().size();i++){ %>
                              <% Cliente cliente=(Cliente)salLisClie.getClientes().get(i); %>
                                <tr class="">
                                    <td><%=cliente.getIdcli()%> </td>
                                    <td><%=cliente.getNomCli()%> </td>
                                    <td><%=cliente.getDni()%></td>
                                </tr>
                            <% } %>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>

</html>