package com.studentDetails;

public class Student {
		private int ID;
		private String Name;
		private int Score;
		private String Grade ;
		public Student() {
			super();
		}
		public Student(int iD, String name, int score,String grade) {
		
			ID = iD;
			Name = name;
			Score = score;
			Grade=grade;
		}
		public int getID() {
			return ID;
		}
		public void setID(int iD) {
			ID = iD;
		}
		public String getName() {
			return Name;
		}
		public void setName(String name) {
			Name = name;
		}
		public int getScore() {
			return Score;
		}
		public void setScore(int score) {
			Score = score;
		}
		public String getGrade() {
			return Grade;
		}
		public void setGrade(String grade) {
		     Grade=grade;
        }
		@Override
		public String toString() {
			return "Student [ID=" + ID + ", Name=" + Name + ", Score=" + Score +", Grade=" + Grade + "]";
		}
	
		
		
		
		

	}



