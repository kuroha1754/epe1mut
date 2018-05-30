/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controladores;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.GestionBD;

/**
 *
 * @author Leona
 */
@WebServlet(name = "CUPasignatura", urlPatterns = {"/CUPasignatura"})
public class CUPasignatura extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        GestionBD ejecutar = new GestionBD();
        int seccion = Integer.parseInt(request.getParameter("seccion"));
        int sala = Integer.parseInt(request.getParameter("sala"));
        String asignatura = request.getParameter("asignatura"); 
        String departamento = request.getParameter("departamento");
        
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Actualizacion de Datos Exitoso</title>");
            out.println("<link rel=\"shortcut icon\" type=\"image/x-icon\" href=\"icon.png\">");
            out.println("<link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css\">");
            out.println("<style type=\"text/css\"> \n" +
                          "body { \n" +
                          "color: white; \n" +
                          "background-color: #403e39 } \n" +
                          "</style>");
            out.println("<script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js\"></script>");
            out.println("<script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js\"></script>");
            out.println("<script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js\" integrity=\"sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ\" crossorigin=\"anonymous\"></script>");
            out.println("");
            out.println("");
            
            out.println("</head>");
            out.println("<!--NAVbar-->\n" +
"    <div class=\"navbar navbar-expand-lg fixed-top navbar-dark bg-dark\">\n" +
"      <div class=\"container\">\n" +
"       <span class=\"navbar-brand mb-0 h1\">Colegio Stonecutters</span>\n" +
"        <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarResponsive\" aria-controls=\"navbarResponsive\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n" +
"          <span class=\"navbar-toggler-icon\"></span>\n" +
"        </button>\n" +
"        <div class=\"collapse navbar-collapse\" id=\"navbarResponsive\">\n" +
"          \n" +
"   <ul class=\"navbar-nav\">\n" +
"      <li class=\"nav-item active\">\n" +
"        <a class=\"nav-link\" href=\"menu.jsp\">Inicio<span class=\"sr-only\">(current)</span></a>\n" +
"      </li>\n" +
"      <li class=\"nav-item\">\n" +
"        <a class=\"nav-link\" href=\"ingresar.jsp\">Ingresar</a>\n" +
"      </li>\n" +
"      <li class=\"nav-item\">\n" +
"        <a class=\"nav-link\" href=\"verdatos.jsp\">Ver Datos</a>\n" +
"      </li>\n" +
"      <li class=\"nav-item\">\n" +
"        <a class=\"nav-link\" href=\"actualizar.jsp\">Actualizar</a>\n" +
"      </li>\n" +
"      <li class=\"nav-item\">\n" +
"        <a class=\"nav-link\" href=\"eliminar.jsp\">Eliminar</a>\n" +
"      </li>\n" +
"      <li class=\"nav-item\">\n" +
"        <a class=\"nav-link\" href=\"index.html\">Desconectar</a>\n" +
"      </li>\n" +
"    </ul>\n" +
"        </div>\n" +
"      </div>\n" +
"    </div>\n" +
"\n" +
"    <div class=\"container\">\n" +
"      <div class=\"page-header\" id=\"banner\">\n" +
"        <div class=\"row\">\n" +
"          <div class=\"col-lg-8 col-md-7 col-sm-6\">\n" +
"            <h1>Slate</h1>\n" +
"            <p class=\"lead\" style=\"color: orange\">Colegio Stonecutters</p>\n" +
"          </div>\n" +
"        </div>\n" +
"      </div>\n" +
"    </div>\n" +
"    <!--NAVbar fin-->");
            out.println("<body>");
            out.println("<center><h3>"+ejecutar.upasignatura(seccion, sala, asignatura, departamento)+"</h3></center>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
