<%@page import="wyv.presentacion.Salida"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="/cabecera.jsp" %>

<div class="main">
    <br><br> <br><br> <br><br> <br><br>
        <div class="container">
            <div class="row">
                <div class="col-md-8">  
                    <center><h3 class="text-muted">Editar Categoria</h3> </center> <br>
                        <% Salida cate=(Salida)session.getAttribute("categoria"); %>
                <div class="table-responsive table-centered">   
                    <html:form action="/EditarCategoria" method="POST">
                    <table class="table table-hover">
                       <tr>
                                <td>Nombre</td>
                                <td>
                                    <html:hidden property="codigo" value="<%=String.valueOf(cate.getCategoria().getCodigo())%>"/>
                                    <html:text property="nombre" styleClass="form-control" value="<%= cate.getCategoria().getNombre() %>" />
                                </td>
                            <tr> 
                            <tr>
                                <td>Descripcion</td>
                                <td>
                                    <html:textarea property="descripcion" styleClass="form-control" value="<%= cate.getCategoria().getDescripcion()%>"></html:textarea>
                                </td>
                            </tr> 
                            <tr>
                                <td colspan="3"><html:submit value="Editar" styleClass="form-control btn-primary" /></td>                                  
                            </tr>
                     <br>         
                            <div style="color: red">
                                <html:messages id="id" >
                                    ${id}<br>
                                </html:messages>
                            </div>
                        </html:form>
                    </table>  
                </div>
            </div>
        </div>
    </div>
</div>