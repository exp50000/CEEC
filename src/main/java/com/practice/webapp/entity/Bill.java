package com.practice.webapp.entity;


import java.util.Date;
public class Bill {

	 private String Bill_Number;
	 private int Payment;
	 private Date DeadLine;
	 
	 
	 public void setBillnumber(String billnumber){
		 this.Bill_Number = billnumber;
	 }
	 public String getBillNumber(){
		 return Bill_Number;
	 }
	 
	 public void setPayment(int Payment){
		 this.Payment = Payment;
	 }
	 public int getPayment(){
		 return Payment;
	 }
	 
	 
	 public void setDeadLine(Date DeadLine){
		 this.DeadLine = DeadLine;
	 }
	 
	 public Date getDeadLine(){
		 return DeadLine;
	 }
	 
	 
}
