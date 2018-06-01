

        <!-- Portfolio Item Row -->
           <div class="text-center">                           
		<%
        Connection conexion = null;
        Statement sentencia = null;
        ResultSet resultados = null;
        String nombreBD = "colegio";
        String url = "jdbc:mysql://localhost:3306/"+ nombreBD;
        String usuario = "root";
        String password = "root";
        
        try{
            Class.forName("com.mysql.jdbc.Driver");
            conexion = DriverManager.getConnection(url, usuario, password);
            out.println("<h2>Estudiantes");
            sentencia = conexion.createStatement();
            String sql = "SELECT * FROM ESTUDIANTE";
            resultados = sentencia.executeQuery(sql);
            out.println("<table border='5' style='margin: 0 auto;'>");
            out.println("<td rowspan = '2' ><strong>Rut</strong></td>");
            out.println("<td colspan = '1' ><strong>Nombre</strong></td>");
            out.println("<td rowspan = '2' ><strong>Apoderado</strong></td>");
            out.println("<td colspan = '1' ><strong>Seccion</strong></td>");
            out.println("<tr>");
            while(resultados.next()){
                
                String rut = resultados.getString("rut");
                String nombre = resultados.getString("nombre");
                String apoderado = resultados.getString("apoderado");
                int seccion = resultados.getInt("seccion");
                 out.println("<tr>");
                    out.println("<td rowspan = '1' >" + rut + "</td>");
               out.println("<td colspan = '1' >" + nombre + "</td>");
               out.println("<td colspan = '1' >" + apoderado + "</td>");
                out.println("<td colspan = '1' >" + seccion + "</td>");
                
                out.println("<tr>");
                
            }
            out.println("</table>");
            sentencia.close();
            conexion.close();
        }catch(Exception e){
            out.println("<h1>Error : "+ e.getLocalizedMessage() + "</h1>");
            
        }
        %>		
        <a href="verdatos.jsp" class="btn btn-primary btn-lg btn-block">Volver</a>
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
                    <center><p>Copyright &copy; Colegio Stonecutters </p></center>
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