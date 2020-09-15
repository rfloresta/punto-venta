<%@page import="wyv.persistencia.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="/cabecera.jsp" %>

    <div class="main">
        <br><br><br><br><br><br><br><br>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                     <center><h3 align="center"><p class="text-muted">LISTADO DE CLIENTES</p></h3> </center>  
                       
                            <% Salida salLisClie=(Salida)session.getAttribute("salLisClie"); %>  
                      
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div id="tbl">
                        <div class="table-responsive table-centered">                        
                            <table id="datos" class="table table-hover">
                                <thead>
                                <tr class="">
                                    <th>ID</th>
                                    <th>Nombre</th>
                                    <th>Dni</th> 
                                    <th>Telefono</th>
                                    <th>Dirección</th>
                                    <th>Email</th>
                                    <th></th>
                                    <th></th>
                                </tr> 
                                </thead>
                                <tbody>
                                 <% for(int i=0;i<salLisClie.getClientes().size();i++){ %>
                                <% Cliente cliente=(Cliente)salLisClie.getClientes().get(i); %>
                                <tr>     
                                    <form action="BuscaClie" method="GET">
                                    <td><%=String.valueOf(cliente.getIdcli())%></td>
                                    <input type="hidden" id="id" name="id" value="<%= String.valueOf(cliente.getIdcli()) %>"/> 
                                    <td><%=String.valueOf(cliente.getNomCli())%></td>
                                    <td><%=String.valueOf(cliente.getDni())%></td>
                                    <td><%=String.valueOf(cliente.getTeleCli())%></td> 
                                    <td><%=String.valueOf(cliente.getDireCli()) %></td>
                                    <td><%=String.valueOf(cliente.getEmail())%></td>
                                    <td><button class="glyphicon glyphicon-edit form-control btn-primary"/></td>
                                    </form>
                                <html:form action="/EliminarCliente" method="GET">
                                   
                                    <html:hidden property="id" value="<%= String.valueOf(cliente.getIdcli()) %>"/> 
                                    <html:hidden property="nom" value="<%=String.valueOf(cliente.getNomCli())%>"/>
                                    <html:hidden property="telf"  value="<%=String.valueOf(cliente.getTeleCli())%>"/>
                                    <html:hidden property="direcc"  value="<%=String.valueOf(cliente.getDireCli()) %>"/>
                                    <html:hidden property="email"  value="<%=String.valueOf(cliente.getEmail())%>"/>
                                    <html:hidden property="dni" value="<%=String.valueOf(cliente.getDni())%>" />
                                     <td><html:submit property="eliminar" styleClass="form-control btn-danger" value="X" /></td>
                                </html:form>
                                    </tr>
                                <% } %>
                                </tbody>
                                <tfoot>
                                <tr class="">
                                   <th>ID</th>
                                    <th>Nombre</th>
                                    <th>Dni</th> 
                                    <th>Telefono</th>
                                    <th>Dirección</th>
                                    <th>Email</th>
                                    <th></th>
                                    <th></th>
                                </tr> 
                                </tfoot>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
<%@ include file="/script.jsp"%>