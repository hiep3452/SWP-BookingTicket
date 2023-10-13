/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import entity.Account;
import entity.Route;
import entity.Trip;
import entity.Vehicle;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.SplittableRandom;
import sun.font.TrueTypeFont;

/**
 *
 * @author Admin
 */
public class DAO {
    Connection conn = null;
    PreparedStatement ps  = null;
    ResultSet rs = null;
    public Account checkLogin(String email, String password){
        String query = "SELECT * FROM Users WHERE email = ? AND password = ?";
        
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, email);
            ps.setString(2, password);
            rs = ps.executeQuery();
            while(rs.next()){
              return new Account(rs.getInt(1),
                         rs.getString(2),
                         rs.getString(3),
                         rs.getString(4),
                         rs.getString(5),
                         rs.getString(6),
                         rs.getString(7),
                         rs.getString(8),
                         rs.getString(9),
                         rs.getString(10));
            }
        } catch (Exception e) {
        }
        return null;
    }
    public Account checkExistAccount(String email){
        String query = "SELECT * FROM Users WHERE email = ? ";
         try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, email);
            rs = ps.executeQuery();
            while(rs.next()){
               return new Account(rs.getInt(1),
                         rs.getString(2),
                         rs.getString(3),
                         rs.getString(4),
                         rs.getString(5),
                         rs.getString(6),
                         rs.getString(7),
                         rs.getString(8),
                         rs.getString(9),
                         rs.getString(10));
                          
            }
        } catch (Exception e) {
        }
        return null;
    }
    public void signup(String name, String email, String password){
        String query = "INSERT INTO Users (user_id ,name, email, password) \n" +
"VALUES (CONCAT('0123', CAST(RAND()*10 AS INT)), ? , ? , ?);";
        try { 
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, email);
            ps.setString(3, password);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
  public void update(String phone, String name, String address, String gender, String image , String email) {
    String query = "UPDATE Users SET phone = ?, name = ?, address = ?, gender = ?, image = ? WHERE email = ?";
  
    try {
        conn = new DBContext().getConnection();
        ps = conn.prepareStatement(query);
        ps.setString(1, phone);
        ps.setString(2, name);
        ps.setString(3, address);
        ps.setString(4, gender);
        ps.setString(5, image);
        ps.setString(6, email);
        ps.executeUpdate();
    } catch (Exception e) {
         e.printStackTrace();
    }
}
 public void changePassword( String password, String email) {
    String query = "UPDATE Users SET Password = ? WHERE email = ?";
      
    try {
        conn = new DBContext().getConnection();
        ps = conn.prepareStatement(query);
        ps.setString(1, password);
        ps.setString(2, email);
        ps.executeUpdate();
      
    } catch (Exception e) {
        e.printStackTrace();
    }
}
  
  
    public List<Route> getAllRoute(){
        List<Route> list = new ArrayList<>();
        
        String query = "select * from Route";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()){
               list.add(new Route(rs.getInt(1),
                       rs.getString(2),
                       rs.getString(3),
                       rs.getFloat(4),
                       rs.getFloat(5),
                       rs.getFloat(6),
                       rs.getString(7),
                       rs.getString(8)));
            }
        } catch (Exception e) {
        }
        return list;
    }     
    public static void Route() {
        DAO dao = new DAO();
        List<Route> list = dao.getAllRoute();
        for (Route o : list){
            System.out.println(o);
        }
    }
    
    public List<Vehicle> getAllVehicle(){
        List<Vehicle> list = new ArrayList<>();
        
        String query = "select * from Vehicle";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()){
               list.add(new Vehicle(rs.getInt(1),
                       rs.getString(2),
                       rs.getString(3),
                       rs.getString(4),
                       rs.getInt(5),
                       rs.getString(6)));
            }
        } catch (Exception e) {
        }
        return list;
    }     
    public static void Vehicle(){
        DAO dao = new DAO();
        List<Vehicle> list = dao.getAllVehicle();
        for (Vehicle o : list){
            System.out.println(o);
        }
    }
    
    public List<Trip> getAllTrip(){
        List<Trip> list = new ArrayList<>();
        
        String query = "select * from Trip";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()){
               list.add(new Trip(rs.getInt(1),
                       rs.getInt(2),
                       rs.getString(3),
                       rs.getString(4),
                       rs.getInt(5),
                       rs.getString(6),
                       rs.getString(7),
                       rs.getString(8),
                       rs.getInt(9)));
                      
            }
        } catch (Exception e) {
        }
        return list;
    }     
    public static void Trip(){
        DAO dao = new DAO();
        List<Trip> list = dao.getAllTrip();
        for (Trip o : list){
            System.out.println(o);
        }
    }
    public Trip checkExistTicket(String tripId){
        String query = "SELECT * FROM Trip WHERE trip_id = ? ";
         try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, tripId);
            rs = ps.executeQuery();
            while(rs.next()){
               return new Trip(rs.getInt(1),
                       rs.getInt(2),
                       rs.getString(3),
                       rs.getString(4),
                       rs.getInt(5),
                       rs.getString(6),
                       rs.getString(7),
                       rs.getString(8),
                       rs.getInt(9));
            }
        } catch (Exception e) {
        }
        return null;
    }
    
}
