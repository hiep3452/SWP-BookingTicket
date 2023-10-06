/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package context;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class DBContext {
public static Connection getConnection() throws ClassNotFoundException, SQLException{
        try{
            String connectionUrl = "jdbc:sqlserver://DESKTOP-CDO0SQ2\\SQLEXPRESS:1433;databaseName=BusTicketBooking;User=sa;Password=sa;encrypt=true;trustServerCertificate=true";
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            Connection con = DriverManager.getConnection(connectionUrl);
            System.out.println("da ket noi db");
            return con;
        }catch(Exception ex){
            System.out.println(ex);
        }
        return null;
}
}