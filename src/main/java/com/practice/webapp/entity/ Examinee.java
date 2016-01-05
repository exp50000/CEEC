package com.practice.webapp.entity;
import java.util.List;



public class Examinee {
private String name;
	private String ID;
	private String EMAIL;
	
	private String password;
	private String birth;
	private String phone;
	private String gender;
	private String address;
	private String EmergencyContact;
	private String EmergencyContactRelationship;
	private String EmergencyContactMobile;
	private int lowincome;
	private Boolean payed;
	private ASTscore ASTscore = new ASTscore();
	private GSATscore GSATscore = new GSATscore();
	private ELscore ELscore = new ELscore();
	private List<String>  subject;
	private TestRoom testroom = new TestRoom();
	
	
	
	
	public void setName(String name){
		this.name = name;
	}
	public String getName(){
		return name;
	}
	
	public void setEmail(String email){
		this.EMAIL=email;
	}
	public String getEmail(){
		return EMAIL;
	}
	public void setID(String id){
		this.ID = id;
	}
	public String getID(){
		return ID;
	}
	
	
	
	public void setPassword(String password){
		this.password = password;
	}
	
	public String getPassword(){
		return password;
	}
	
	
	
	
	
	
	public void setBirth(String birth){
		this.birth = birth;
	}
	
	public  String getBirth(){
		return birth;
	}
    
	public void setPhone(String phone){
		this.phone = phone;
	}
	
	public String getPhone(){

		
		return phone;
	}

    public void setGender(String gender){
    	this.gender = gender;
    }
    
    public String getGender(){
    	return gender;
    }
    
     public void setAddress(String address){
    	 this.address = address;
     }
     
     public String getAddress(){
    	 return address;
     }
     
     
     public void setEmergencyContact(String emername){
    	 this.EmergencyContact = emername;
     }
    
     public String getEmergencyContact(){
    	 return EmergencyContact;
     }
     
     public void setEmergencyContactRelationship(String emerrela){
    	 this.EmergencyContactRelationship = emerrela;
     }
    
     public String getEmergencyContactRelationship(){
    	 return EmergencyContactRelationship;
     }
     
     
     
     public void setEmergencyContactMobile(String emermobile){
    	 this.EmergencyContactMobile = emermobile;
     }
    
     public String getEmergencyContactMobile(){
    	 return EmergencyContactMobile;
     }
     
    
     
     
  
     public GSATscore getGSATscore(){
    	 return GSATscore;
     }
     
     public void setGSATscore(GSATscore gsatscore){
    	 this.GSATscore=gsatscore;
    	 
     }
     
     public ASTscore getASTscore(){
    	 return ASTscore;
     }
     
     public void setASTscore(ASTscore astscore){
    	 this.ASTscore =  astscore;
     }
     
     
     public ELscore getELscore(){
    	 return ELscore;
     }
     
     public void setELscore(ELscore elscore){
    	 this.ELscore =  elscore;
     }
     
     public void setSubject(List<String> subject){
    	 this.subject = subject;
     }
     public List<String> getSubject(){
    	 return subject;
     }
     public void setPayed(Boolean payed){
    	 this.payed = payed;
     }
     
     public Boolean getPayed(){
    	 return payed;
     }
     
     public void setTestRoom(TestRoom testroom){
    	 this.testroom=testroom;
     }
     public TestRoom getTestRoom(){
    	 return testroom;
     }
	public int getLowincome() {
		return lowincome;
	}
	public void setLowincome(int lowincome) {
		this.lowincome = lowincome;
	}
     
     

	
}
