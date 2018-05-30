
package modelo;

import static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author RLCR
 */
public class GestionBD {
    public final String user="root";
    public final String pass="root";

    public String getUser() {
        return user;
    }

    public String getPass() {
        return pass;
    }

    
    
    public String inasignatura(int seccion, int sala, String asignatura, String departamento){
        
        Connection conexion = null;
        Statement sentencia = null;
        String nombreBD = "colegio";
        String url = "jdbc:mysql://localhost:3306/" + nombreBD;
        String usuario = user;
        String password = pass;
        
        try{
            Class.forName("com.mysql.jdbc.Driver");
            conexion = DriverManager.getConnection(url, usuario, password);
            sentencia = conexion.createStatement();
            String SQL = "INSERT INTO ASIGNATURA (" + 
                    "seccion, sala, asignatura, departamento) "+
                    "VALUES('"+seccion+"','"+sala+"','"+asignatura+"','"+departamento+"')" ;
            sentencia.executeUpdate(SQL);
            sentencia.close();
            conexion.close();
            return "Asignatura ingresada correctamente";
        }catch(ClassNotFoundException | SQLException e){
            return "Error: "+ e.getMessage();
        }
        
        
    }
    public String inestudiante(String rut, String nombre, String apoderado, int seccion){
        
        Connection conexion = null;
        Statement sentencia = null;
        String nombreBD = "colegio";
        String url = "jdbc:mysql://localhost:3306/" + nombreBD;
        String usuario = user;
        String password = pass;
        
        try{
            Class.forName("com.mysql.jdbc.Driver");
            conexion = DriverManager.getConnection(url, usuario, password);
            sentencia = conexion.createStatement();
            String SQL = "INSERT INTO ESTUDIANTE (" + 
                    "rut, nombre, apoderado, seccion) "+
                    "VALUES('"+rut+"','"+nombre+"','"+apoderado+"','"+seccion+"')" ;
            sentencia.executeUpdate(SQL);
            sentencia.close();
            conexion.close();
            return "Estudiante ingresado correctamente";
        }catch(ClassNotFoundException | SQLException e){
            return "Error: "+ e.getMessage();
        }
        
        
    }
        public String inprofesor(String rut, String nombre, int seccion, String departamento){
        
        Connection conexion = null;
        Statement sentencia = null;
        String nombreBD = "colegio";
        String url = "jdbc:mysql://localhost:3306/" + nombreBD;
        String usuario = user;
        String password = pass;
        
        try{
            Class.forName("com.mysql.jdbc.Driver");
            conexion = DriverManager.getConnection(url, usuario, password);
            sentencia = conexion.createStatement();
            String SQL = "INSERT INTO PROFESOR (" + 
                    "rut, nombre, seccion, departamento) "+
                    "VALUES('"+rut+"','"+nombre+"','"+seccion+"','"+departamento+"')" ;
            sentencia.executeUpdate(SQL);
            sentencia.close();
            conexion.close();
            return "Profesor ingresado correctamente";
        }catch(ClassNotFoundException | SQLException e){
            return "Error: "+ e.getMessage();
        }
        
        
    }
        public String upasignatura(int seccion, int sala, String asignatura, String departamento){
        
        Connection conexion = null;
        Statement sentencia = null;
        String nombreBD = "colegio";
        String url = "jdbc:mysql://localhost:3306/" + nombreBD;
        String usuario = user;
        String password = pass;
        
        try{
            Class.forName("com.mysql.jdbc.Driver");
            conexion = DriverManager.getConnection(url, usuario, password);
            sentencia = conexion.createStatement();
            String SQL = "update asignatura set sala='"+sala+"', asignatura='"+asignatura+"', departamento='"+departamento+"'\n" +
                         "where seccion='"+seccion+"'";
            sentencia.executeUpdate(SQL);
            sentencia.close();
            conexion.close();
            return "Asignatura actualizada correctamente";
        }catch(ClassNotFoundException | SQLException e){
            return "Error: "+ e.getMessage();
        }
        
        
    }
        public String upestudiante(String rut, String nombre, String apoderado, int seccion){
        
        Connection conexion = null;
        Statement sentencia = null;
        String nombreBD = "colegio";
        String url = "jdbc:mysql://localhost:3306/" + nombreBD;
        String usuario = user;
        String password = pass;
        
        try{
            Class.forName("com.mysql.jdbc.Driver");
            conexion = DriverManager.getConnection(url, usuario, password);
            sentencia = conexion.createStatement();
            String SQL = "update estudiante set nombre='"+nombre+"', apoderado='"+apoderado+"', seccion='"+seccion+"'\n" +
                         "where rut='"+rut+"'";
            sentencia.executeUpdate(SQL);
            sentencia.close();
            conexion.close();
            return "Estudiante actualizado correctamente";
        }catch(ClassNotFoundException | SQLException e){
            return "Error: "+ e.getMessage();
        }
        
        
    }
        public String upprofesor(String rut, String nombre, int seccion ,String departamento){
        
        Connection conexion = null;
        Statement sentencia = null;
        String nombreBD = "colegio";
        String url = "jdbc:mysql://localhost:3306/" + nombreBD;
        String usuario = user;
        String password = pass;
        
        try{
            Class.forName("com.mysql.jdbc.Driver");
            conexion = DriverManager.getConnection(url, usuario, password);
            sentencia = conexion.createStatement();
            String SQL = "update profesor set nombre='"+nombre+"', seccion='"+seccion+"', departamento='"+departamento+"'\n" +
                         "where rut='"+rut+"'";
            sentencia.executeUpdate(SQL);
            sentencia.close();
            conexion.close();
            return "Profesor actualizado correctamente";
        }catch(ClassNotFoundException | SQLException e){
            return "Error: "+ e.getMessage();
        }
        
        
    }
        public String delasignatura(int seccion){
        
        Connection conexion = null;
        Statement sentencia = null;
        String nombreBD = "colegio";
        String url = "jdbc:mysql://localhost:3306/" + nombreBD;
        String usuario = user;
        String password = pass;
        
        try{
            Class.forName("com.mysql.jdbc.Driver");
            conexion = DriverManager.getConnection(url, usuario, password);
            sentencia = conexion.createStatement();
            String SQL = "delete from asignatura\n" +
                         "where seccion = '"+seccion+"'";
            sentencia.executeUpdate(SQL);
            sentencia.close();
            conexion.close();
            return "Asignatura eliminada correctamente";
        }catch(ClassNotFoundException | SQLException e){
            return "Error: "+ e.getMessage();
        }
        
        
    }
        public String delestudiante(String rut){
        
        Connection conexion = null;
        Statement sentencia = null;
        String nombreBD = "colegio";
        String url = "jdbc:mysql://localhost:3306/" + nombreBD;
        String usuario = user;
        String password = pass;
        
        try{
            Class.forName("com.mysql.jdbc.Driver");
            conexion = DriverManager.getConnection(url, usuario, password);
            sentencia = conexion.createStatement();
            String SQL = "delete from estudiante\n" +
                         "where rut = '"+rut+"'";
            sentencia.executeUpdate(SQL);
            sentencia.close();
            conexion.close();
            return "Estudiante eliminado correctamente";
        }catch(ClassNotFoundException | SQLException e){
            return "Error: "+ e.getMessage();
        }
        
        
    }
        public String delprofesor(String rut){
        
        Connection conexion = null;
        Statement sentencia = null;
        String nombreBD = "colegio";
        String url = "jdbc:mysql://localhost:3306/" + nombreBD;
        String usuario = user;
        String password = pass;
        
        try{
            Class.forName("com.mysql.jdbc.Driver");
            conexion = DriverManager.getConnection(url, usuario, password);
            sentencia = conexion.createStatement();
            String SQL = "delete from profesor\n" +
                         "where rut = '"+rut+"'";
            sentencia.executeUpdate(SQL);
            sentencia.close();
            conexion.close();
            return "Profesor eliminado correctamente";
        }catch(ClassNotFoundException | SQLException e){
            return "Error: "+ e.getMessage();
        }
        
        
    }

    
}
