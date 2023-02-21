package com.studentRegistration.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;



public class DAOServiceImpl implements DAOServices {
	private Connection con;
	private Statement stmt;
	@Override
     public void connectionDB() {
    	 try {
    		 Class.forName("com.mysql.cj.jdbc.Driver");
    		 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/studentregistrationapp","root","test");
			 stmt=con.createStatement();
			 System.out.println(con);
		} catch (Exception e) {
			e.printStackTrace();
		}
     }
     
     
     @Override
     public boolean verifyCredentials(String email,String password) {
    	 try {
    		 ResultSet rs = stmt.executeQuery("SELECT * FROM login where email='"+email+"'and password='"+password+"'");
    		 return rs.next();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
    	    	
    	    
    	 return false;
    	 
     }
     @Override
     public void saveRegistration(String name,String city,String email,String mobile) {
    	 try {
    		 stmt.executeUpdate("insert into saveRegistration values('"+name+"','"+city+"','"+email+"','"+mobile+"')");
    		 
			
		} catch (Exception e) {
			e.printStackTrace();
		}
    	
     }
     @Override
     public ResultSet savedList() {
    	 try {
    		 ResultSet rs = stmt.executeQuery("select * from saveregistration");
    		 return rs;
			
		} catch (Exception e) {
		e.printStackTrace();
		}
    	 
		return null;
     }
     @Override
     public void deleteRecord(String email) {
    	 try {
    		 stmt.executeUpdate("DELETE FROM saveregistration WHERE email='"+email+"'");
    		 
			
		} catch (Exception e) {
			e.printStackTrace();
		}
     }


	@Override
	public void updateRecord(String email ,String mobile) {
		 try {
    		 stmt.executeUpdate("update saveregistration set mobile='"+mobile+"'WHERE email='"+email+"'");
    		 
			
		} catch (Exception e) {
			e.printStackTrace();
		}

		
	}
}
