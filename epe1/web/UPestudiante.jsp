<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Actualizacion de Estudiante</title>
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
                <center><h1 class="page-header">Actualizar Estudiante
                    <small></small>
                    <hr>
                </h1></center>
            </div>
        </div>
        <!-- /.row -->

        <!-- Portfolio Item Row -->
           <div class="text-center">                           
<form action="CUPestudiante" method="post">
    <div class="container">
    
      <form id="index" name="" action="" method="post">
        <div class="form-group row">
            <label for="rut" class="col-sm-2 form-control-label">Rut</label>
            <div class="col-sm-10">
              <input type="text" name="rut" class="form-control" placeholder="Ingresar Rut" />
            </div>
        </div>
        <div class="form-group row">
            <label for="nombre" class="col-sm-2 form-control-label">Nombre</label>
            <div class="col-sm-10">
              <input type="text" name="nombre" class="form-control" placeholder="Ingresar Nombre" />
            </div>
        </div>
        <div class="form-group row">
            <label for="apoderado" class="col-sm-2 form-control-label">Apoderado</label>
            <div class="col-sm-10">
              <input type="text" name="apoderado" class="form-control" placeholder="Ingresar Apoderado" />
            </div>
        </div>
        <div class="form-group row">
            <label for="seccion" class="col-sm-2 form-control-label">Seccion</label>
            <div class="col-sm-10">
              <input type="text" name="seccion" class="form-control" placeholder="Ingresar Seccion" />
            </div>
        </div>
                  <div class="form-group">
         <center> <input  class="btn btn-info" type="submit" name="submit" value="Ingresar"/></center>
        </div>

      </form>          
        </div>				
            </div>
        <!-- /.row -->

        <!-- Related Projects Row -->
        <div class="row">

            <div class="col-lg-12">
                <h3 class="page-header"></h3>
            </div>
        </div>
        <!-- /.row -->
        <hr>
        <!-- Footer -->
        <footer>
            <div class="row">
                <div class="col-lg-12">
                    <center><p>Copyright &copy; Colegio Stonecutters</p></center>
                </div>
            </div>
            <!-- /.row -->
        </footer>

    </div>
    <!-- /.container -->

    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>
    </body>
</html>
