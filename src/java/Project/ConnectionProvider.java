/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Project;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author HP
 */
public class ConnectionProvider {
   public static Connection getCon()
    {

        
		try
		{
			Class.forName("oracle.jdbc.OracleDriver");     
			System.out.println("Driver loaded Successfully!");
                    
                      Connection con = DriverManager.getConnection("jdbc:oracle:thin:@//LAPTOP-MTSJP1BT:1521/XE", "advjavabatch", "oracle");
			System.out.println("Connection Opened Successfully!");
                    	return con;
		}
		catch(ClassNotFoundException cnfe)                            
		{
		System.out.println("Cannot load the driver class");
                cnfe.getMessage();
		return null;
		}
		catch(SQLException ex)                                       
		{
		System.out.println("Error in DB"); 
		return null;
		}	
   }
}
