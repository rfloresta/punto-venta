<%@page import="wyv.persistencia.Categoria"%>
<%@page import="wyv.persistencia.Producto"%>
<%@page import="wyv.presentacion.Salida"%>
<%@ include file="/cabecera.jsp" %>

<div class="main">
    <br><br><br><br><br><br><br><br>
    <div class="container">
        <div class="row">
            <div class="col-md-8">
                <h3 align="center"><p class="text-muted">REGISTRAR PRODUCTO</p></h3>

                <html:form action="/RegistrarProducto" method="POST" >
              
                    <div class="form-group">
                        <form:label path="nombre">Nombre:</form:label>
                            <html:text property="nom" styleClass="form-control" />
                        <form:errors path="nombre"/>
                    </div>
                    
                    <div class="form-group">
                        <form:label path="stock">Stock:</form:label> 
                            <html:text property="cantidad" styleClass="form-control" />
                        <form:errors path="stock"/>
                    </div>
                    <div class="form-group">
                        <form:label path="nit">Proveedor:</form:label> 
                            <html:text property="proveedor" styleClass="form-control" />
                        <form:errors path="nit"/>
                    </div>
                    <div class="form-group">
                        <form:label path="precioc">Precio Compra:</form:label> 
                            <html:text property="preco" styleClass="form-control" />
                        <form:errors path="precioc"/>
                    </div>
  
                    <div class="form-group">
                        <form:label path="preciov">Precio Venta:</form:label> 
                            <html:text property="preven" styleClass="form-control" />
                        <form:errors path="preciov"/>
                    </div>
                   
                    <div class="form-group">
                        <form:label path="descuento">Descuento (%)</form:label>
                        <html:text property="descuento" styleClass="form-control" />
                        <form:errors path="desc"/>
                    </div>
                        
                    <% Salida salLisCate=(Salida)session.getAttribute("salLisCate"); %>
                    <div class="form-group">
                        <form:label path="codigocat">Categoria:</form:label> 
                          
                        <html:select property="codigocat" styleClass="form-control">
                              <html:option value="">-------Seleccione--------</html:option>

                            <% for(int i=0;i<salLisCate.getCategorias().size();i++){ %>
                            <% Categoria categoria=(Categoria)salLisCate.getCategorias().get(i); %>
                            <html:option value="<%= String.valueOf(categoria.getCodigo())%>"><%= String.valueOf(categoria.getNombre())%></html:option>

                            <% } %>

                        </html:select>

                    </div>

                    <html:submit property="grabar" value="Registrar" styleClass="btn btn-primary" />      
                    <br> 
                    <div style="color: red">
                        <html:messages id="cod" >
                            ${cod}<br>
                        </html:messages>
                    </div>   
                </html:form>
            </div>

            <div class="col-md-4">
                <h3 align="center"><p class="text-muted">PRODUCTOS</p></h3>
                <% Salida salLisP=(Salida)session.getAttribute("salLisP"); %>  
                <div class="table-responsive table-centered">
                    <div class="listastb">
                        <table class="table table-hover">
                            <tr class="">
                                <th>Nro</th>
                                <th>Nombre</th>
                                <th>Stock</th>
                            </tr>
                            <% for(int i=0;i<salLisP.getProductos().size();i++){ %>
                            <% Producto producto=(Producto)salLisP.getProductos().get(i); %>
                            <tr class="">
                                <td><%= producto.getCodPro()%></td>
                                <td><%= producto.getNombre()%></td>
                                <td><%= producto.getCantidad()%></td>
                            </tr>
                            <% } %>
                        </table>                        
                    </div>

                </div>
            </div>           

        </div>
    </div>
