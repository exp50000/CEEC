package com.practice.webapp.entity;
import com.practice.webapp.entity.TestRoom;
public class ELscore {
 private int id;
 private int score;
 private int testnumber;
 private TestRoom testroom;
 private String ExamineeID;
 private int isPayed;
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public int getScore() {
	return score;
}
public void setScore(int score) {
	this.score = score;
}
public TestRoom getTestroom() {
	return testroom;
}
public void setTestroom(TestRoom testroom) {
	this.testroom = testroom;
}
public int getTestnumber() {
	return testnumber;
}
public void setTestnumber(int testnumber) {
	this.testnumber = testnumber;
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
