<%@page import="wyv.persistencia.Usuario"%>
<%@page import="wyv.presentacion.Salida"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="/cabecera.jsp"%>
 <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>   
        <div class="main">
        <br><br><br><br><br><br><br><br>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    
                        <center><h3 align="center"><p class="text-muted">LISTADO DE USUARIOS</p></h3> </center>    
                </div>
            </div>
            <div class="row">
                <div class="col-md-12" id="rrr">
                    <div id="tbl">
                        <div class="table-responsive table-centered">      
                <% Salida salLis=(Salida)session.getAttribute("salLis"); %>   
                <table id="datos" class="table table-hover">
                                <thead>
                                <tr class="">
                                    <th>DNI</th>
                                    <th>Nombre</th>
                                    <th>Password</th>
                                    <th>Tipo</th>
                                    <th></th>
                                    <th></th>
                                </tr> 
                                </thead>     
                                <tbody>
                                    
                                  <% for(int i=0;i<salLis.getUsuarios().size();i++){ %>
                                  <% Usuario usu=(Usuario)salLis.getUsuarios().get(i); %>
                                
                                <tr>
                                
                                <form action="BuscarUsu" method="GET">  
                                  <td><%=usu.getDni()%></td>
                                  <input type="hidden" id="dniU" name="dniU" value="<%=usu.getDni()%>" />
                                  <td><%=usu.getNom()%></td>
                                  <td><%=usu.getPass()%></td>
                                  <td><%= usu.getTipo()%></td>
                                  <td><button class="glyphicon glyphicon-edit form-control btn-primary"/></td>
                                </form>
                                <html:form action="/EliminarUsuario"  styleId="eliu" method="POST">
                                <html:hidden property="dni"  value="<%=usu.getDni()%>"/>
                                <html:hidden property="nom"  value="0" />         
                                <html:hidden property="pass"  value="0" />
                                <html:hidden property="tipo"  value="0" />
                                <td><html:submit property="eliminar" styleId="eli"  styleClass="form-control btn-danger" value="X" /></td>
                                 </html:form>
                                 </tr>
                               <% } %>
                                     
                                </tbody>
                                    
                                <tfoot>
                                    <th>DNI</th>
                                    <th>Nombre</th>
                                    <th>Cargo</th>
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

<script src="js/eliminarU.js" type="text/javascript"></script>
