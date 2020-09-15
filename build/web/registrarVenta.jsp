<%@page import="wyv.negocio.Linea"%>
<%@page import="wyv.negocio.VentaObj"%>
<%@page import="wyv.servicios.ServicioProductoImp"%>
<%@page import="wyv.presentacion.EntradaProducto"%>
<%@page import="java.util.List"%>
<%@page import="wyv.persistencia.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="wyv.persistencia.Producto"%>

<%@ include file="/cabecera.jsp"%>  
<script>
    function AgregarCarro()
    {
        document.form.action = "<%=request.getContextPath()%>/RegistrarVenta";
        document.form.method = "GET";
        document.form.op.value = "1";
        document.form.submit();
    }
    function QuitarCarro()
    {
        document.form.action = "<%=request.getContextPath()%>/RegistrarVenta";
        document.form.method = "GET";
        document.form.op.value = "2";
        document.form.submit();
    }
    function RegistrarVenta()
    {
        document.form.action = "<%=request.getContextPath()%>/RegistrarVenta";
        document.form.method = "GET";
        document.form.op.value = "3";
        document.form.submit();
    }

</script>

<form name="form" method="GET">
    <input type="hidden" name="op">
    <input type="hidden" name="usua" value="<%= sal.getDniusu()%>" />
    <br><br><br><br><br><br><br>
    <div class="main">
        <div class="container">
            <div class="row">

                <% VentaObj venObj = (VentaObj) session.getAttribute("venObj"); %>
                <div class="col-md-8">  

                    <h2 align="center">Registrar Venta</h2><br><br>
                    <div class="table-responsive table-centered" >
                        <%-- <form action="AgregarCarro" method="GET"> --%>
                        <table class="table table-hover">

                            <tr class="">
                                <th>Producto</th> 
                                <th>Nombre</th>
                                <th>Cant.</th>
                                <th>Precio</th>   
                                <th></th>
                            </tr>
                            <tr>
                                <td>
                                    <input  type="hidden" name="codPro" id="codPro"/>
                                    <span title="Seleccione un producto, por favor." class="glyphicon glyphicon-search" data-toggle="modal" data-target="#miventana"></span>
                                </td> 
                                <td>
                                    <input type="text" required="true"  name="nom" id="nom" disabled class="form-control" />
                                </td> 
                                <td>
                                    <input required="true" title="Ingrese la cantidad, por favor." id="can" type="text" name="can" class="form-control" /></td>
                                <td>
                                    <input  disabled required="true"  type="text" name="preven" id="preven" class="form-control"/>                          
                                </td>
                                <td colspan="4" style="text-align: center">
                                    <button class="btn btn-primary" onclick="AgregarCarro()" >Agregar</button>
                                </td> 
                            </tr>
                        </table> 
                        <%--  </form> --%>
                    </div>


                    <div class="table-responsive table-centered">   

                        <table class="table table-hover">
                            <tr class="">

                                <th>Nombre</th> 
                                <th>Cant.</th>
                                <th>Precio</th>  
                                <th>Descuento (%)</th>  
                                <th>Importe</th> 
                                <td>.</td>
                            </tr>
                            <% List ces = (List) venObj.getCesta(); %>
                            <% for (int i = 0; i < ces.size(); i++) { %>
                            <% Linea lin = (Linea) venObj.getCesta().get(i);%>
                            <tr>                                    


                                <td><label class="form-control" size="15"><%= lin.getProObj().getNombre()%></label></td>
                                <td><label class="form-control" size="15"><%= lin.getCan()%></label></td>
                                <td><label class="form-control" size="5"><%= String.format("%.2f", lin.getProObj().getPrecioven())%></label></td>        
                                <td><label class="form-control" size="5"><%= lin.getProObj().getDescuento()%></label></td>
                                <td><label class="form-control" size="15"><%= String.format("%.2f", lin.getImporte())%></label></td>

                            <input  type="hidden"  name="cod"  value='<%=lin.getProObj().getCodPro()%>'/>
                            <td><button onclick="QuitarCarro()" class="btn btn-danger glyphicon glyphicon-remove"></button></td>
                            </tr>                                    
                            <% }%>
                        </table>  
                   
                        
                      
                    </div>
 
                       <div class="col-md-3 derecha">
                       <div class="form-group">
                        <label path="cc">Descuentos Totales </label>
                        <input class="form-control" disabled type="text"  name="descuento" />
                       </div>
                           <div class="form-group">
                        <label path="cc">Sub Total </label>
                        <input class="form-control" disabled type="text"  name="subtotal" />
                       </div>
                           <div class="form-group">
                        <label path="cc">IGV 18% </label>
                        <input class="form-control" disabled type="text"  name="igv" />
                       </div>
                           <div class="form-group">
                        <label path="cc">Total a pagar </label>
                       <input class="form-control" disabled type="text" value="<%= String.format("%.2f", venObj.getTot())%>" />
                       </div>
                        </div>  
                </div>
                        
                       
                        
                <div class="col-md-4">       
                    <div class="table-responsive table-centered">
                        <table class="table table-hover">

                        </table>
                    </div>

                    <div class="form-group">                                                      
                        <label path="num">Cod. Venta:</label>
                        <input path="num" value="<%= venObj.getNum()%>" class="form-control" disabled />

                    </div>


                    <div class="form-group">
                        <label path="cc">Fecha: </label>
                        <input name="fecha" value="<%= venObj.getFec()%>" class="form-control" disabled  required="true"/>
                    </div>  
                    <div class="form-group">
                        <label path="cc">Cliente: </label>

                        <span class="glyphicon glyphicon-search" data-toggle="modal" data-target="#miventana2"></span>

                        <input type="hidden" id="clie" name="clie"/>        

                    </div> 
                    <div class="form-group">
                        <input placeholder="DNI" class="form-control" disabled type="text"  id="dniClie"/>

                    </div> 
                    <div class="form-group">

                        <input placeholder="Nombre" class="form-control" disabled type="text"  id="nomClie"/>
                    </div>

                    <div class="form-group">
                        <label path="fpago">Pago: </label> 
                        <input type="text" name="pago" class="form-control"/>                         
                    </div> 
                </div>
                   
            </div>
                    <div class=" col-md-4 derecha">
                     <button type="submit" class="btn btn-lg btn-danger" onclick="Cancelar()">Cancelar</button>   
                     <button type="submit" class="btn btn-lg btn-success" onclick="RegistrarVenta()">Registrar Venta</button>
                    </div>
                     <%--     Modal Producto                       --%>
            <div class="modal fade" id="miventana" tabindex="-1" role="dialog" aria-labellebdy="myModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4><b>Seleccione Producto</b></h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>

                        </div>
                        <div class="modal-body">
                            <div id="msg"></div>
                            <div class="table-responsive table-centered">
                                <div class="listastb" id="clss">
                                    <% Salida salLisP = (Salida) session.getAttribute("salLisP"); %> 
                                    <table id= "datos" class="table table-hover" >
                                        <thead>
                                            <tr>                                
                                                <th>Nro</th>
                                                <th>Nombre</th>
                                                <th>Stock</th>
                                                <th>Precio V.</th>    
                                                <th>Seleccionar</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <% for (int i = 0; i < salLisP.getProductos().size(); i++) { %>
                                            <% Producto producto = (Producto) salLisP.getProductos().get(i);%>
                                            <tr>   
                                                <td><%= producto.getCodPro()%></td>
                                                <td><%= producto.getNombre()%></td>
                                                <td><%= producto.getCantidad()%></td>
                                                <td><%= producto.getPrecioven()%></td>
                                                <td > <button class='btn btn-info glyphicon glyphicon-plus' type="button" onclick="enviarProd('<%= producto.getPrecioven()%>', '<%= producto.getNombre()%>',
                                                                '<%= producto.getCodPro()%>')"></button></td>
                                            </tr>
                                            <% } %>
                                        </tbody>
                                        <tfoot>
                                        <th>Nro</th>
                                        <th>Nombre</th>
                                        <th>Descripción</th>
                                        <th>Stock</th>
                                        <th>Precio V.</th>    
                                        <th>Seleccionar</th>
                                        </tfoot>
                                    </table>

                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-primary" data-dismiss="modal">Cerrar</button>
                        </div>
                    </div>
                </div>
            </div>
            <%--     Buscar Cliente                       --%>

            <div class="modal fade" id="miventana2" tabindex="-2" role="dialog" aria-labellebdy="myModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">                        
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            <h4><b>Seleccione Cliente</b></h4>

                        </div>                    
                        <div class="modal-body"> 
                            <div id="msgcli"></div>
                            <div class="table-responsive table-centered">
                                <div class="listastb">
                                    <% Salida salLisC = (Salida) session.getAttribute("salLisClie"); %> 
                                    <table id="data" class="table table-hover">
                                        <thead>
                                            <tr>                                
                                                <th>Codigo</th>
                                                <th>DNI</th>
                                                <th>Nombre</th>
                                                <th>Telefono</th>                                    
                                                <th>Seleccionar.?</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <% for (int i = 0; i < salLisC.getClientes().size(); i++) {
                                                    Cliente cliente = (Cliente) salLisC.getClientes().get(i);
                                            %>

                                            <tr>   
                                                <td><%= String.valueOf(cliente.getIdcli())%></td>
                                                <td><%= cliente.getDni()%></td>
                                                <td><%= cliente.getNomCli()%></td>
                                                <td><%= cliente.getTeleCli()%></td>
                                                <td><button class='btn btn-info glyphicon glyphicon-plus' type="button" onclick="enviarcliente('<%= cliente.getNomCli()%>', '<%=  String.valueOf(cliente.getIdcli())%>', '<%=  String.valueOf(cliente.getDni())%>')"/></td>
                                            </tr>
                                            <% }%>
                                        </tbody>

                                        <tfoot>
                                        <th>Codigo</th>
                                        <th>Nombre</th>
                                        <th>Telefono</th>
                                        <th>Saldo</th>                                    
                                        <th>Seleccionar.?</th>
                                        </tfoot>
                                    </table>   
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-primary" data-dismiss="modal">Cerrar</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>      
</form>       
<%@ include file="/script.jsp"%>