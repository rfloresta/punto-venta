<%@page import="wyv.persistencia.Producto"%>
<%@page import="wyv.presentacion.Salida"%>

<%@ include file="/cabecera.jsp" %>

 <div class="main">
     <br><br><br><br><br><br><br><br>
     
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    
                          <center><h3 align="center"><p class="text-muted">LISTADO DE PRODUCTOS</p></h3> </center>  
                           <a href="registrarProducto.jsp" class="btn btn-primary">Registrar <i class="glyphicon glyphicon-plus"></i></a><br><br>
                          <% Salida salLisP=(Salida)session.getAttribute("salLisP"); %> 
                            
                   
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div id="tbl">
                        <div class="table-responsive table-centered">
                            <table id="datos" class="table table-hover">
                                <thead>
                                    <tr class="">
                                    <th>Código</th>
                                    <th>Nombre</th>
                                    <th>Cantidad</th>
                                    <th>Proveedor</th>
                                    <th>Precio V.</th>
                                    <th>Precio C.</th>
                                    <th>Categoria</th>
                                    <th></th>
                                    <th></th>
                                </tr> 
                                </thead>
                                <tbody>
                                <% for(int i=0;i<salLisP.getProductos().size();i++){ %>
                                <% Producto producto=(Producto)salLisP.getProductos().get(i); %>
                                
                                    <tr>
                                <form action="BuscarProducto" method="POST">
                                    <td><%= String.valueOf(producto.getCodPro())%></td>
                                    <input  type="hidden" name="cod"  value="<%= String.valueOf(producto.getCodPro())%>"/> 
                                    <td><%= String.valueOf(producto.getNombre())%></td>
                                    <td><%= String.valueOf(producto.getCantidad())%></td>
                                    <td><%= String.valueOf(producto.getProveedor())%></td>
                                    <td><%= String.valueOf(producto.getPreciocom())%></td>
                                    <td><%= String.valueOf(producto.getPrecioven())%></td>
                                    <td><%= String.valueOf(producto.getCodigocat().getNombre())%></td>
                                    <td><button class="glyphicon glyphicon-edit form-control btn-primary"/></td>
                                </form>
                                <html:form action="/EliminarProducto" method="POST">
                                    <td><html:submit property="eliminar" styleClass="form-control btn-danger" value="X" /></td>
                                    <html:hidden property="cod"  value="<%= String.valueOf(producto.getCodPro())%>"/> 
                                    <html:hidden property="nom"  value="<%= String.valueOf(producto.getNombre())%>"/>
                                    <html:hidden property="cantidad"  value="<%= String.valueOf(producto.getCantidad())%>"/>
                                    <html:hidden property="proveedor"  value="<%= String.valueOf(producto.getProveedor())%>"/>
                                    <html:hidden property="preco"  value="<%= String.valueOf(producto.getPreciocom())%>"/>
                                    <html:hidden property="preven"  value="<%= String.valueOf(producto.getPrecioven())%>"/>
                                    <html:hidden property="descuento"  value="<%= String.valueOf(producto.getDescuento())%>"/>
                                    <html:hidden property="codigocat"  value="<%= String.valueOf(producto.getCodigocat())%>"/>
                                </html:form> 
                            </tr>
                               
                                 <% } %>
                                </tbody>
                                <tfoot>
                                     <th>Código</th>
                                    <th>Nombre</th>
                                    <th>Cantidad</th>
                                    <th>Proveedor</th>
                                    <th>Precio V.</th>
                                    <th>Precio C.</th>
                                    <th>Categoria</th>
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