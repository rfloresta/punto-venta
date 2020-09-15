<%@page import="wyv.persistencia.Categoria"%>
<%@page import="wyv.presentacion.Salida"%>

<%@ include file="/cabecera.jsp" %>

 <div class="main">
     <br><br><br><br><br><br><br><br>
     
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    
                          <center><h3 align="center"><p class="text-muted">LISTADO DE CATEGORIAS</p></h3> </center>  
                          <a href="registrarCategoria.jsp" class="btn btn-primary">Registrar <i class="glyphicon glyphicon-plus"></i></a><br><br>
                          
                              <% Salida salLisCate=(Salida)session.getAttribute("salLisCate"); %> 

                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div id="tbl">
                        <div class="table-responsive table-centered">
                            <table id="datos" class="table table-hover">
                                <thead>
                                   <th>Código</th>
                                    <th>Nombre</th>
                                    <th>Descripcion</th>
                                    <th></th>
                                    <th></th>
                                </thead>
                                <tbody>
                                <% for(int i=0;i<salLisCate.getCategorias().size();i++){ %>
                                <% Categoria categoria=(Categoria)salLisCate.getCategorias().get(i); %>
                            <tr>
                                <form action="BuscarCategoria" method="POST">
                                    <td><%= String.valueOf(categoria.getCodigo())%></td>
                                    <input  type="hidden" name="codigo"  value="<%= String.valueOf(categoria.getCodigo())%>"/> 
                                    <td><%= String.valueOf(categoria.getNombre())%></td>
                                    <td><%= String.valueOf(categoria.getDescripcion())%></td>
                                    <td><button class="glyphicon glyphicon-edit form-control btn-primary"/></td>
                                </form>
                                    
                                <html:form action="/EliminarCategoria" method="POST">
                                    <td><html:submit property="eliminar" styleClass="form-control btn-danger" value="X" /></td>
                                    <html:hidden property="codigo"  value="<%= String.valueOf(categoria.getCodigo())%>"/> 
                                    <html:hidden property="nombre"  value="<%= String.valueOf(categoria.getNombre())%>"/>
                                    <html:hidden property="descripcion"  value="<%= String.valueOf(categoria.getDescripcion())%>"/>
                                </html:form> 
                            </tr>
                                 <% } %>
                                </tbody>
                                <tfoot>
                                    <th>Código</th>
                                    <th>Nombre</th>
                                    <th>Descripcion</th>
                                    <th></th>
                                    <th></th>
                                </tfoot>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
<%@ include file="/script.jsp"%>