<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="modelo.GestionBD"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menu de Usuario</title>
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
                <!-- Portfolio Item Row -->
       

           <div class="text-center">
                
               
<%
    GestionBD bd = new GestionBD();
    
        Connection conexion = null;
        Statement sentencia = null;
        ResultSet resultados = null;
        String nombreBD = "colegio";
        String url = "jdbc:mysql://localhost:3306/"+ nombreBD;
        String usuario = bd.user;
        String password = bd.pass;
        
        try{
            Class.forName("com.mysql.jdbc.Driver");
            conexion = DriverManager.getConnection(url, usuario, password);
            out.println("<h2>Asignatura, Profesor, Estudiante");
            sentencia = conexion.createStatement();
            String sql = "select asignatura.seccion,asignatura.asignatura,asignatura.sala,profesor.nombre as 'Profesor',estudiante.nombre as 'Estudiante' from asignatura inner join profesor on profesor.seccion=asignatura.seccion inner join estudiante on estudiante.seccion=asignatura.seccion order by asignatura.seccion ASC;";
            resultados = sentencia.executeQuery(sql);
            out.println("<table border='5' style='margin: 0 auto;'>");
            out.println("<td rowspan = '2' ><strong>Seccion</strong></td>");
            out.println("<td colspan = '1' ><strong>Asignatura</strong></td>");
            out.println("<td rowspan = '2' ><strong>Sala</strong></td>");
            out.println("<td colspan = '1' ><strong>Profesor</strong></td>");
             out.println("<td colspan = '1' ><strong>Estudiante</strong></td>");
            out.println("<tr>");
            while(resultados.next()){
             
                int seccion = resultados.getInt("seccion");
                String asignatura = resultados.getString("asignatura");
                int sala = resultados.getInt("sala");
                String Profesor = resultados.getString("Profesor");
                String Estudiante = resultados.getString("Estudiante");
                out.println("<tr>");
                    out.println("<td rowspan = '1' >" + seccion + "</td>");
               out.println("<td colspan = '1' >" + asignatura + "</td>");
               out.println("<td colspan = '1' >" + sala + "</td>");
                out.println("<td colspan = '1' >" + Profesor + "</td>");
                out.println("<td colspan = '1' >" + Estudiante + "</td>");
                out.println("<tr>");
             
            }
            out.println("</table>");
            sentencia.close();
            conexion.close();
        }catch(Exception e){
            out.println("<h1>Error : "+ e.getLocalizedMessage() + "</h1>");
            
        }
        %>
				
            </div>
        
       <!-- select asignatura.seccion,asignatura.asignatura,asignatura.sala,profesor.nombre as 'Profesor',estudiante.nombre as 'Estudiante' from asignatura inner join profesor on profesor.seccion=asignatura.seccion inner join estudiante on estudiante.seccion=asignatura.seccion; -->

       <!-- select asignatura,profesor.nombre,asignatura.seccion from asignatura inne r join profesor on profesor.seccion=asignatura.seccion;  -->
        <!-- /.row -->
        
    </body>
</html>
