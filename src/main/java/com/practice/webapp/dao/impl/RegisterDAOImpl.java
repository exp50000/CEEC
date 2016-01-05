package com.practice.webapp.dao.impl;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

//import com.mysql.jdbc.Statement;
import com.practice.webapp.dao.RegisterDAO;
import com.practice.webapp.entity.Article;
import com.practice.webapp.entity.ArticleCategory;
import com.practice.webapp.entity.Examinee;
import com.practice.webapp.entity.TestRoom;
public class RegisterDAOImpl implements RegisterDAO{

	private DataSource dataSource;
	private Connection conn = null ;
	private ResultSet rs = null ;
	private PreparedStatement smt = null ;
	
	
	
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	
	public void register(Examinee examinee){
		// TODO Auto-generated method stub
				String sql = "INSERT Examinee(ID,EMAIL,PASSWORD,NAME,PHONE,GENDER,BIRTH,ADDRESS,EMER_NAME,EMER_RELA,EMER_MOBILE,testroom,LOW_INCOME)"+
						"VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?)";
		
				try {
					conn = dataSource.getConnection();
					smt = conn.prepareStatement(sql);
					smt.setString(1, examinee.getID());
				    smt.setString(2, examinee.getEmail());
				    smt.setString(3, examinee.getPassword());
				    smt.setString(4, examinee.getName());
				    smt.setString(5, examinee.getPhone());
				    smt.setString(6, examinee.getGender());
				    smt.setString(7, examinee.getBirth());
				    smt.setString(8, examinee.getAddress());
					smt.setString(9, examinee.getEmergencyContact());
					smt.setString(10, examinee.getEmergencyContactRelationship());
					smt.setString(11, examinee.getEmergencyContactMobile());
					smt.setInt(12, examinee.getTestRoom().getId());
					smt.setInt(13, examinee.getLowincome());
					
				    
					
			
					smt.executeUpdate();			
					smt.close();
		 
				} catch (SQLException e) {
					throw new RuntimeException(e);
		 
				} finally {
					if (conn != null) {
						try {
							conn.close();
						} catch (SQLException e) {}
					}
				}
	}
	
	
	public Boolean login(Examinee examinee){
		String sql = " select * from Examinee where EMAIL= ? and PASSWORD= ?";
		try {
			conn = dataSource.getConnection();
			smt = conn.prepareStatement(sql);
			smt.setString(1, examinee.getEmail());
			smt.setString(2, examinee.getPassword());
			rs = smt.executeQuery();
			if(rs.next()){
				return true;
			}
			rs.close();
			smt.close();
			
		} catch (SQLException e) {
			throw new RuntimeException(e);
 
		} finally {
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {}
			}
		}
		return false;
		
	}
	
	public void modify(Examinee examinee) {
		// TODO Auto-generated method stub
		String sql = "UPDATE Examinee SET NAME=?, BIRTH=?, PHONE=?, ADDRESS=? , EMER_NAME=?,EMER_RELA=?,EMER_MOBILE=? "
				+ "WHERE ID = ?";
		try {
			conn = dataSource.getConnection();
			smt = conn.prepareStatement(sql);
			smt.setString(1, examinee.getName());
			smt.setString(2, examinee.getBirth());
			smt.setString(3, examinee.getPhone());
			smt.setString(4, examinee.getAddress());
			smt.setString(5, examinee.getEmergencyContact());
			smt.setString(6, examinee.getEmergencyContactRelationship());
			smt.setString(7, examinee.getEmergencyContactMobile());
			
			smt.setString(8, examinee.getID());
			
			smt.executeUpdate();			
			smt.close();
 
		} catch (SQLException e) {
			throw new RuntimeException(e);
 
		} finally {
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {}
			}
		}
	}
	public Examinee getExaminee(Examinee examinee){
		String sql = "SELECT * FROM Examinee WHERE EMAIL = ?";
		try {
			conn = dataSource.getConnection();
			smt = conn.prepareStatement(sql);
			smt.setString(1, examinee.getEmail());
			rs = smt.executeQuery();
			if(rs.next()){
				
				examinee.setID(rs.getString("ID"));
				examinee.setEmail(rs.getString("EMAIL"));
				examinee.setPassword(rs.getString("PASSWORD"));
				examinee.setName(rs.getString("NAME"));
				examinee.setGender(rs.getString("GENDER"));
				examinee.setBirth(rs.getString("BIRTH"));
				examinee.setPhone(rs.getString("PHONE"));
				examinee.setAddress(rs.getString("ADDRESS"));
				examinee.getASTscore().setID(rs.getInt("ASTscore"));
				examinee.getGSATscore().setId(rs.getInt("GSATscore"));
				examinee.getELscore().setId(rs.getInt("ELScore"));
				examinee.setEmergencyContact(rs.getString("EMER_NAME"));
				examinee.setEmergencyContactRelationship(rs.getString("EMER_RELA"));
				examinee.setEmergencyContactMobile(rs.getString("EMER_MOBILE"));
				examinee.setLowincome(rs.getInt("LOW_INCOME"));
				
				
				
			    
			}
			rs.close();
			smt.close();
 
		} catch (SQLException e) {
			throw new RuntimeException(e);
 
		} finally {
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {}
			}
		}
		return examinee;
	}
	
    
	
	
	
	
    
    
    public void setSubject(Examinee examinee){
    	String sql = " UPDATE Examinee SET Subject=? where ID = ?";
    	ArrayList<String> list = (ArrayList<String>) examinee.getSubject();
		String subject="";
		for(String s: list){
			subject += s + "\t";
		}
		try {
			conn = dataSource.getConnection();
			smt = conn.prepareStatement(sql);
			smt.setString(1, subject);
			smt.setString(2, examinee.getID());
			
			
			smt.executeUpdate();			
			smt.close();
 
		} catch (SQLException e) {
			throw new RuntimeException(e);
 
		} finally {
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {}
			}
		}
		
	}
    

	@Override
	public Boolean ifIDExist(Examinee examinee) {
		// TODO Auto-generated method stub
		String sql = " select * from Examinee where ID= ?";
		try {
			conn = dataSource.getConnection();
			smt = conn.prepareStatement(sql);
			
			smt.setString(1, examinee.getID());
			rs = smt.executeQuery();
			if(rs.next()){
				return true;
			}
			rs.close();
			smt.close();
			
		} catch (SQLException e) {
			throw new RuntimeException(e);
 
		} finally {
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {}
			}
		}
		return false;
	}

	@Override
	public Boolean ifEmailExist(Examinee examinee) {
		// TODO Auto-generated method stub
		String sql = " select * from Examinee where EMAIL= ?";
		try {
			conn = dataSource.getConnection();
			smt = conn.prepareStatement(sql);
			
			smt.setString(1, examinee.getEmail());
			rs = smt.executeQuery();
			if(rs.next()){
				return true;
			}
			rs.close();
			smt.close();
			
		} catch (SQLException e) {
			throw new RuntimeException(e);
 
		} finally {
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {}
			}
		}
		return false;
	}

	@Override
	public void delete(Examinee examinee) {
		// TODO Auto-generated method stub
		String sql = "delete from Examinee where id = ?";
		try {
			conn = dataSource.getConnection();
			smt = conn.prepareStatement(sql);
			smt.setString(1, examinee.getID());
			smt.executeUpdate();			
			smt.close();
 
		} catch (SQLException e) {
			throw new RuntimeException(e);
 
		} finally {
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {}
			}
		}
		
	}
	
	}
	
	
	

