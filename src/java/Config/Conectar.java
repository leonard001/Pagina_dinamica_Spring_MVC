//para realizar esta conexion debes haber importado la libreria
//"mysql jdbc Driver"
package Config;

import java.sql.Connection;
import java.sql.DriverManager;
//import org.springframework.jdbc.datasource.DriverManagerDataSource;

public class Conectar {
   /* public DriverManagerDataSource Conectar(){
        DriverManagerDataSource DataSource = new DriverManagerDataSource();
        DataSource.setDriverClassName("com.mysql.jdbc.Driver");
        DataSource.setUrl("jdbc:mysql://localhost:3306/madeparq");
        DataSource.setUsername("root");
        DataSource.setPassword("");
        return DataSource;
    }*/
    Connection con;
       public Connection getConnection(){
           try {
               Class.forName("com.mysql.jdbc.Driver");
               con = DriverManager.getConnection("jdbc:mysql://localhost:3306/madeparq","root","");
           } catch (Exception e) {
               
           }
           return con;
       }

}
