<%-- 
    Document   : Login
    Created on : 06-nov-2018, 10:21:43
    Author     : AUTONOMA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login de Acceso</title>
        <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="css/my-login.css">
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

    </head>
    <body class="my-login-page">

        <section class="h-100">
            <div class="container h-100">
                <div class="row justify-content-md-center h-100">
                    <div class="card-wrapper">
                        <div class="brand">
                            <img src="img/logo.jpg">
                        </div>
                        <div class="card fat">
                            <div class="card-body">
                                <h4 class="card-title">Login</h4>

                                <html:form action="/Acceso" styleId="acc" method="POST">


                                    <div class="form-group">
                                        <label for="dni">Dni</label>

                                        <html:text property="dni" styleId="dni" styleClass="form-control"  />
                                    </div>

                                    <html:hidden property="nom" value="0"/>
                                    <html:hidden property="tipo" value="0"/>

                                    <div class="form-group">
                                        <label for="password">Password
                                        </label>
                                        <html:password property="pass" styleId="pass" styleClass="form-control"  />
                                    </div>

                                    <div class="form-group no-margin">
                                        <html:submit property="ini" styleId="btnreg" styleClass="btn btn-primary btn-block" 
                                                     value="Iniciar Sesion">

                                        </html:submit>
                                        <div style="color: red; position: relative; left: 4em">
                                            <% String msg = (String) session.getAttribute("errorLogin");
                                                if (msg == null) {
                                                    msg = "";
                                                }
                                            %>
                                            <%=msg%>                                                                   </div>
                                    </div>
                                </div>
                            </html:form>                   
                        </div>
                    </div>
                </div>
            </div>

        </section>


        <script src="js/main.js" type="text/javascript"></script>
    </body>
</html>
