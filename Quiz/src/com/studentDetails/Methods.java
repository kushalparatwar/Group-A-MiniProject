package com.studentDetails;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Scanner;
import com.QuizStart.ConnectionClass;

public class Methods {
	
	ConnectionClass con=new ConnectionClass();
	Connection connection1 = con.getDBConnection();
	
	public int getAllQuestions() {
		int count=0;
		try {
			
			PreparedStatement ps = connection1.prepareStatement("select* from questions");
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				System.out.println(rs.getInt(1)+") "+rs.getString(2));
				System.out.println(rs.getString(4));
				System.out.println(rs.getString(5));
				System.out.println(rs.getString(6));
				System.out.println(rs.getString(7));
				
				Scanner scanner=new Scanner(System.in);
				System.out.print("Choose Option :");
				String opt=scanner.next();
				System.out.println("");
				
				if(opt.equalsIgnoreCase(rs.getString(3))) {
					count++;
				}
				
			}
			
		}catch(Exception e) {
			System.out.println(e);
		}
		return count;
		
	}
	
	public void registerintoDB(Student student) {
		
		try {
			PreparedStatement register = connection1.prepareStatement("insert into student(ID,NAME,SCORE,GRADE)VALUES(?,?,?,?)");
            register.setInt(1,student.getID());
            register.setString(2,student.getName());
            register.setInt(3, student.getScore());
			register.setString(4,student.getGrade());
			
            register.executeUpdate();
            
		}catch(Exception e) {
			System.out.println(e);
		}
	}
		public void getResult() {
			
			try {
		PreparedStatement result = connection1.prepareStatement("select* from student");
		ResultSet rs1 = result.executeQuery();
		
		while(rs1.next()) {
		System.out.println("ID : "+rs1.getInt(1)+" Name : "+rs1.getString(2)+" Score : "+rs1.getInt(3)+" Grade : "+rs1.getString(4));
		}
			}catch(Exception e) {
				System.out.println(e);
			}
		}
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

