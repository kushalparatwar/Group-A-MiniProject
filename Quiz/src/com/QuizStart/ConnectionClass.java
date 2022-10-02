package com.QuizStart;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionClass {
	
	public Connection conn = null;
	
	public Connection getDBConnection() {
		
		 try {
			
			 Class.forName("com.mysql.jdbc.Driver");
			 
			 conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/miniproject","root","Krishna@7798");
		} catch (Exception e) {
			e.printStackTrace();
		}
		 
		 return conn;
	}
}

