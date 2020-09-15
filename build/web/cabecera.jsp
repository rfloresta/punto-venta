
<%@page import="wyv.presentacion.Salida"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<html >
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Tienda</title>     
    <link href="resources/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="resources/css/bootstrap.css" rel="stylesheet" type="text/css"/>
    <link href="resources/css/pro.css" rel="stylesheet" type="text/css"/>
    <link href="css/estilos.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/dt/dt-1.10.18/datatables.min.css"/>
    <link rel="stylesheet" href="https://cdn.datatables.net/responsive/2.2.1/css/responsive.dataTables.min.css">
    <script src="resources/js/jquery-1.9.1.min.js" type="text/javascript"></script>
    <script src="resources/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="resources/js/func.js" type="text/javascript"></script>

<script type="text/javascript" src="https://cdn.datatables.net/v/dt/dt-1.10.18/datatables.min.js"></script>
<script src="https://cdn.datatables.net/responsive/2.2.1/js/dataTables.responsive.min.js"></script>

</head>
<body>

  <nav class=" navbar navbar-static-top ">
      <div class="logo">
          <img src="imagenes/nego.png" alt="" class="imglogo" />
      </div>
         <% Salida sal=(Salida)session.getAttribute("sal"); %>
         
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-sidebar-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>
            <div class="collapse navbar-collapse" id="bs-sidebar-navbar-collapse-1">
                <ul class="nav navbar-nav ">
                    <li><a href="Principal.jsp">Home<span class="pull-right hidden-xs showopacity glyphicon glyphicon-home"></span></a></li>
                    <li class="dropdown"><!-- Clientes -->
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Clientes<span class="caret"></span><span class="pull-right hidden-xs showopacity glyphicon glyphicon-user"></span></a>
                        <ul class="dropdown-menu forAnimate" role="menu">                        
                            <li><a href="registrarCliente.jsp"> - Registrar<span class="pull-right hidden-xs showopacity glyphicon glyphicon-plus"></span></a></li>
                            <li class="divider"></li>                            
                            <li><a href="ListarClie"> - Listar<span class="pull-right hidden-xs showopacity glyphicon glyphicon-list"></span></a></li>
                            <li class="divider"></li>                            
                            <li><a href="#"> - Abonar<span class="pull-right hidden-xs showopacity glyphicon glyphicon-usd"></span></a></li>
                        </ul>
                    </li>
                    
                    <li class="dropdown"><!-- Ventas -->
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Ventas<span class="caret"></span><span class="pull-right hidden-xs showopacity glyphicon glyphicon-shopping-cart"></span></a>
                        <ul class="dropdown-menu forAnimate" role="menu">
                            <li><a href="RedireccionVentas"> - Registrar Venta <span class="pull-right hidden-xs showopacity glyphicon glyphicon-plus"></span></a></li>
                            <li class="divider"></li>
                            <li><a href="#"> - Consultas<span class="pull-right hidden-xs showopacity glyphicon glyphicon-tasks"></span></a></li>
                        </ul>
                    </li>
                    <li class="dropdown"> <!-- Inventario -->
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Almacen<span class="caret"></span><span class="pull-right hidden-xs showopacity glyphicon glyphicon-credit-card"></span></a>
                        <ul class="dropdown-menu forAnimate" role="menu">
                            <li><a href="ListarProducto">Producto<span class="pull-right hidden-xs showopacity glyphicon glyphicon-plus"></span></a></li>
                            <li class="divider"></li>
                            <li><a href="ListarCategoria">Categoria <span class="pull-right hidden-xs showopacity glyphicon glyphicon-log-in"></span></a></li>
                        </ul>
                    </li>
                    <% if(sal.getTipo().equals("1")){ %>
                    <li class="dropdown"> <!-- Inventario -->
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Usuario<span class="caret"></span><span class="pull-right hidden-xs showopacity glyphicon glyphicon-user"></span></a>
                        <ul class="dropdown-menu forAnimate" role="menu">
                            <li><a href="RegistrarUsuario.jsp"> - Registrar Usuario<span class="pull-right hidden-xs showopacity glyphicon glyphicon-plus"></span></a></li>
                            <li class="divider"></li>
                            <li><a href="Listarusuario"> - Listar Usuario<span class="pull-right hidden-xs showopacity glyphicon glyphicon-list"></span></a></li>
                        </ul>
                    </li>
                    <% } %>
                    <li class="dropdown"> <!-- Conf -->
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><%= sal.getMsg()%><span class="caret"></span><span class="pull-right hidden-xs showopacity glyphicon glyphicon-cog"></span></a>
                        <input type="hidden" name="usuario" value="<%= sal.getMsg()%>"/>
                        <input type="hidden" name="cod" value="<%= sal.getDniusu()%>"/>
                         <ul class="dropdown-menu forAnimate" role="menu">
                            <li><a href="Login.jsp"> - Cerrar Sesion<span class="pull-right hidden-xs showopacity glyphicon glyphicon-log-in"></span></a></li>
                        </ul>
                    </li>

                </ul>
            </div>
        </div>
    </nav>         
                               
                       