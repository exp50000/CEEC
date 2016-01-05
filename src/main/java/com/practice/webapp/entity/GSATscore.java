package com.practice.webapp.entity;
import com.practice.webapp.entity.TestRoom;
public class GSATscore {

	private int id;
	private int testnumber;
	private int Chinese;
	private int English;
	private int Math;
	private int Society;
	private int Science;
	private TestRoom testroom;
	private String ExamineeID;
	private int isPayed;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getTestnumber() {
		return testnumber;
	}
	public void setTestnumber(int testnumber) {
		this.testnumber = testnumber;
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
	public int getSociety() {
		return Society;
	}
	public void setSociety(int society) {
		Society = society;
	}
	public int getMath() {
		return Math;
	}
	public void setMath(int math) {
		Math = math;
	}
	public int getScience() {
		return Science;
	}
	public void setScience(int science) {
		Science = science;
	}
	public TestRoom getTestroom() {
		return testroom;
	}
	public void setTestroom(TestRoom testroom) {
		this.testroom = testroom;
	}
	public String getExamineeID() {
		return ExamineeID;
	}
	public void setExamineeID(String examineeID) {
		ExamineeID = examineeID;
	}
	public int getIsPayed() {
		return isPayed;
	}
	public void setIsPayed(int isPayed) {
		this.isPayed = isPayed;
	}
	
}
