package com.practice.webapp.entity;

public class TestRoom {

	private int id;
	private String name;
	private String address;
	
	
	public void setId(int testroom){
		this.id = testroom;
	}
	
	public int getId(){
		return id;
	}
	
	public void setName(String testroomName){
		this.name=testroomName;
	}
	public String getName(){
		return name;
	}
	
	
	public void setAddress(String TestRoomAdress){
		this.address = TestRoomAdress;
	}
	
	public String getAddress(){
		return address;
	}
	 
}
