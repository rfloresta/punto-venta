<%@page import="wyv.presentacion.Salida"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
    <body>
    <% Salida salida=(Salida)session.getAttribute("mensaje");%>
        <h1>Mensaje!</h1>
        <h2><%= salida.getMsg() %></h2>
    </body>
</html>
