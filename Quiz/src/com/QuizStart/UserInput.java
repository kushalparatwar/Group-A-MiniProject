package com.QuizStart;

import java.util.Scanner;
import com.studentDetails.Methods;
import com.studentDetails.Student;

public class UserInput {
	
	public static void main(String[] args) {
		Methods getallquestions=new Methods();
		Scanner sc=new Scanner(System.in);
		
		System.out.println("*******[ QUIZ ]********");
		
		boolean flag=true;
		
		while (flag) {
			System.out.println("Press 1 : register and Start the Quiz");
			System.out.println("Press 2 : See all the Student Record ");
			System.out.println("press 0 : Exit");
			System.out.println("----------------------------------------");
			
			int choise=sc.nextInt();
			
			switch(choise) {
			case 1:
				System.out.println("Enter ID :");
				int id=sc.nextInt();
				System.out.println("Enter Name :");
				String name=sc.next();
				System.out.println("-----[ QUIZ STARTED ]-----");
				System.out.println("");
				
				
				int score=getallquestions.getAllQuestions();
				String grade = "" ;
				
				if(score >=8) {
					grade = "A";
				}
				else if(score >=6 && score<=7) {
					grade = "B";
				}
				else if(score ==5) {
					grade ="C";
				}
				else if(score <=4) {
					grade = "Fail";
				}
				
				Student st=new Student();
				st.setID(id);
				st.setName(name);
				st.setScore(score);
				st.setGrade(grade);
				
				getallquestions.registerintoDB(st);
				break;
				
			case 2:
				getallquestions.getResult();
				break;
				
			case 0:
				
				flag=false;
				System.out.println("---[ Thankyou ]---");
				break;
				
			}
			
		}
		
		
	}
	
}
