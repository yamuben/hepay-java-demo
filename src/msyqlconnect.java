/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author CYIZA Thadee
 */
import java.sql.*;
import java.sql.DriverManager;
import javax.swing.*;

public class msyqlconnect {
   public static String db_status = new String();
    
   private static Connection conn =null;
    public static Connection ConnectDb (){
    try{
        
           String url = new String();
           String user = new String();
           String password = new String();
           url = "jdbc:mysql://localhost:3306/hepay";
           user = "root";
           password = "Yamu2845@";
           
           DriverManager.registerDriver(new com.mysql.jdbc.Driver());
           conn = DriverManager.getConnection(url,user,password);
//           JOptionPane.showMessageDialog(null,conn);
            db_status = "Connected To DB";
    }
    catch(Exception e){
    JOptionPane.showMessageDialog(null, "Connection Failed....."+ e);
    }
    return conn;
    }
    
}
