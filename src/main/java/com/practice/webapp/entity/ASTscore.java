package com.practice.webapp.entity;
import com.practice.webapp.entity.TestRoom;
public class ASTscore {
	 private int id;
	 private int testnumber;
	 private TestRoom testroom;
	 private int Chinese;
	 private int English;
	 private int MathA;
	 private int MathB;
	 private int History;
	 private int Geography;
	 private int Civics;
	 private int Physics;
	 private int Chemistry;
	 private int Biology;
	 private String examineeID;
	 private int isPayed;
	 private String subject;
	 
	 public void setID(int id){
		 this.id=id;
	 }
	 public int getID(){
		 return id;
	 }
	 
	 public void setTestnumber(int testnumber){
		 this.testnumber = testnumber;
	 }
	 public int getTestnumber(){
		 return testnumber;
	 }
	 
	 
	 public void setTestroom(TestRoom testroom){
		 this.testroom = testroom;
	 }
	 
	 public TestRoom getTestroom(){

		 
		 return testroom;
	 }
	public int getChinese() {
		return Chinese;
	}
	public void setChinese(int chinese) {
		Chinese = chinese;
	}
	public int getEnglish() {
		return English;
	}
	public void setEnglish(int english) {
		English = english;
	}
	public int getMathA() {
		return MathA;
	}
	public void setMathA(int mathA) {
		MathA = mathA;
	}
	public int getMathB() {
		return MathB;
	}
	public void setMathB(int mathB) {
		MathB = mathB;
	}
	public int getHistory() {
		return History;
	}
	public void setHistory(int history) {
		History = history;
	}
	public int getCivics() {
		return Civics;
	}
	public void setCivics(int civics) {
		Civics = civics;
	}
	public int getGeography() {
		return Geography;
	}
	public void setGeography(int geography) {
		Geography = geography;
	}
	public int getPhysics() {
		return Physics;
	}
	public void setPhysics(int physics) {
		Physics = physics;
	}
	public int getBiology() {
		return Biology;
	}
	public void setBiology(int biology) {
		Biology = biology;
	}
	public int getChemistry() {
		return Chemistry;
	}
	public void setChemistry(int chemistry) {
		Chemistry = chemistry;
	}
	public String getExamineeID() {
		return examineeID;
	}
	public void setExamineeID(String examineeID) {
		this.examineeID = examineeID;
	}
	
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public int getIsPayed() {
		return isPayed;
	}
	public void setIsPayed(int isPayed) {
		this.isPayed = isPayed;
	}
	

     
	 







}
