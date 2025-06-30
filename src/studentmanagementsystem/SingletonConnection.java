/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package studentmanagementsystem;
import java.sql.*;
import java.util.*;

public class SingletonConnection {
    
    private static SingletonConnection instance ;
    private Connection connection;
    
    private SingletonConnection(){
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/managemetstudent","root","");
        }catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        
    }
    
    public static SingletonConnection getInstance(){
            if(instance == null){
            instance = new SingletonConnection();
            
            }
            return instance;
        }
    public Connection getConnection() {
        return connection;
    }
}
