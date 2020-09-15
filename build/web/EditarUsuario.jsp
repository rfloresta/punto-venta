<%@page import="wyv.presentacion.Salida"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="/cabecera.jsp" %>

<div class="main">
    <br><br> <br><br> <br><br> <br><br>
    <div class="container">
        <div class="row">

            <div class="col-md-8">  


                <center><h3 class="text-muted">Editar Usuarios</h3> </center> <br>
                    <% Salida usu = (Salida) session.getAttribute("usuario");%>


                <div class="table-responsive table-centered">   

                    <table class="table table-hover">
                        <html:form action="/EditarUsuario" method="POST">

                            <tr>
                                <td>Nombre</td>
                                <td>
                                    <html:text property="nom" styleClass="form-control" value="<%= usu.getUsuario().getNom()%>" />
                                </td>
                            </tr> 

                            <tr>
                                <td>Dni</td>
                                <td>
                                    <html:text property="dni" styleClass="form-control" value="<%= usu.getUsuario().getDni()%>" />
                                </td>
                            </tr>

                            <tr>
                                <td>Password</td>
                                <td>
                                    <html:text property="pass" styleClass="form-control" value="<%= usu.getUsuario().getPass()%>" />
                                </td>
                            </tr> 
                            
                            <tr>
                                <td>Tipo</td>
                                <td>
                                    <html:select property="tipo" styleClass="form-control" value="<%= usu.getUsuario().getTipo()%>">
                                        <html:option value="0">-----------Seleccione----------</html:option>
                                        <html:option value="1">Administrador</html:option>
                                        <html:option value="2">Vendedor</html:option>
                                    </html:select>
                                </td>
                            </tr> 
                            <tr>
                                <td colspan="3"><html:submit value="Editar" styleClass="form-control btn-primary" /></td>
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