
<%@page import="wyv.persistencia.Categoria"%>
<%@page import="wyv.presentacion.Salida"%>
<%@ include file="/cabecera.jsp" %>

 <div class="main">
     <br><br><br><br><br><br><br><br>
     
        <div class="container">            
            <div class="row">
                <div class="col-md-8">                    
                    <h3 align="center"><p class="text-muted">REGISTRAR CATEGORIA</p></h3>               
                    <html:form action="/RegistrarCategoria" method="POST">
                        
                        <div class="form-group">
                            <form:label path="nombre">Nombre:</form:label>
                           <html:text  property="nombre" styleClass="form-control" />
                            <form:errors path="nombre"/>
                        </div>
                        <div class="form-group">
                            <form:label path="descripcion">Descripción</form:label> 
                            <html:textarea  property="descripcion" styleClass="form-control" />
                            <form:errors path="descripcion"/>
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
                    <h3 align="center"><p class="text-muted">CATEGORIAS</p></h3>  
                    <% Salida salLisCate=(Salida)session.getAttribute("salLisCate"); %>  
                    <div class="table-responsive table-centered">
                        <table class="table table-hover">
                            <tr class="">
                                <th>ID</th>
                                <th>Nombre</th>
                                <th>Descripción</th>
                            </tr>
                              <% for(int i=0;i<salLisCate.getCategorias().size();i++){ %>
                              <% Categoria categoria=(Categoria)salLisCate.getCategorias().get(i); %>
                                <tr class="">
                                    <td><%=categoria.getCodigo()%> </td>
                                    <td><%=categoria.getNombre()%> </td>
                                    <td><%=categoria.getDescripcion()%></td>
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