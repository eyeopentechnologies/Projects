/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package dbConnection;

import java.sql.*;

import java.util.logging.Level;
import java.util.logging.Logger;

public class DatabaseConn {
    
    
    public static Connection  getConnection(){
        Connection con = null;
        try {
            
            String classs = "com.mysql.jdbc.Driver";
            String url = "jdbc:mysql://localhost:3306/";
            String user = "root";
            String pass = "";
            String Database = "crackingpasswordhashes";
            Class.forName(classs);
            con = DriverManager.getConnection(url+Database,user,pass);
            //System.out.println("Database Connection Success..@!");
           
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseConn.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DatabaseConn.class.getName()).log(Level.SEVERE, null, ex);
        }
         return con;
    }
    
}
