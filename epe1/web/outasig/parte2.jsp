

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
            out.println("<h2>Asignaturas");
            sentencia = conexion.createStatement();
            String sql = "SELECT * FROM ASIGNATURA";
            resultados = sentencia.executeQuery(sql);
            out.println("<table border='5' style='margin: 0 auto;'>");
            out.println("<td rowspan = '2' ><strong>Seccion</strong></td>");
            out.println("<td colspan = '1' ><strong>Sala</strong></td>");
            out.println("<td rowspan = '2' ><strong>Asignatura</strong></td>");
            out.println("<td colspan = '1' ><strong>Departamento</strong></td>");
            out.println("<tr>");
            while(resultados.next()){
                int seccion = resultados.getInt("seccion");
                int sala = resultados.getInt("sala");
                String asignatura = resultados.getString("asignatura");
                String departamento = resultados.getString("departamento");
                 out.println("<tr>");
                    out.println("<td rowspan = '1' >" + seccion + "</td>");
               out.println("<td colspan = '1' >" + asignatura + "</td>");
               out.println("<td colspan = '1' >" + sala + "</td>");
                out.println("<td colspan = '1' >" + departamento + "</td>");
                
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