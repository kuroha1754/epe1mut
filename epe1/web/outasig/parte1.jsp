<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="modelo.GestionBD"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Datos Asignatura</title>
                <link rel="shortcut icon" type="image/x-icon" href="icon.png">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">
    <style type="text/css"> 
body { 
color: white; 
background-color: #403e39 } 
</style>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>
   
    </head>
<!--NAVbar-->
    <div class="navbar navbar-expand-lg fixed-top navbar-dark bg-dark">
      <div class="container">
       <span class="navbar-brand mb-0 h1">Colegio Stonecutters</span>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          
   <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="menu.jsp">Inicio<span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="ingresar.jsp">Ingresar</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="verdatos.jsp">Ver Datos</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="actualizar.jsp">Actualizar</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="eliminar.jsp">Eliminar</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="index.html">Desconectar</a>
      </li>
    </ul>
        </div>
      </div>
    </div>

    <div class="container">
      <div class="page-header" id="banner">
        <div class="row">
          <div class="col-lg-8 col-md-7 col-sm-6">
            <h1>Slate</h1>
            <p class="lead" style="color: orange">Colegio Stonecutters</p>
          </div>
        </div>
      </div>
    </div>
    <!--NAVbar fin-->
    <body>
           <!-- Page Content -->
    <div class="container">
        <!-- Portfolio Item Heading -->
        <div class="row">
            <div class="col-lg-12">
               <hr>
                <center><h1 class="page-header">Datos Asignaturas
                    <small></small>
                    <hr>
                </h1></center>
            </div>
        </div>
        <!-- /.row -->