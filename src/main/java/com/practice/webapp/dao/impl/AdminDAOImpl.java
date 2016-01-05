package com.practice.webapp.dao.impl;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.practice.webapp.dao.AdminDAO;
import com.practice.webapp.dao.ProductDAO;
import com.practice.webapp.entity.ASTscore;
//import com.mysql.jdbc.Statement;
import com.practice.webapp.entity.Admin;
import com.practice.webapp.entity.ELscore;
import com.practice.webapp.entity.Examinee;
import com.practice.webapp.entity.Product;
import com.practice.webapp.entity.TestRoom;
import com.practice.webapp.entity.GSATscore;
public class AdminDAOImpl implements AdminDAO{
	private DataSource dataSource;
	private Connection conn = null ;
	private ResultSet rs = null ;
	private PreparedStatement smt = null ;
	
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	public List<Examinee> getAllExamineeList() {
		String sql = "SELECT * FROM Examinee";
		return getList(sql);
	}
	
	public List<GSATscore> getGSATList(){
		List<GSATscore> GSATscorelist = new ArrayList<GSATscore>();
		String sql="SELECT * FROM GSATscore";
		try {
			conn = dataSource.getConnection();
			smt = conn.prepareStatement(sql);
			rs = smt.executeQuery();
			while(rs.next()){
				GSATscore GSATscore = new GSATscore();
				GSATscore.setChinese(rs.getInt("Chinese"));
				GSATscore.setEnglish(rs.getInt("English"));
				GSATscore.setMath(rs.getInt("Math"));
				GSATscore.setScience(rs.getInt("Science"));
				GSATscore.setSociety(rs.getInt("Society"));
				GSATscore.setId(rs.getInt("Score_ID"));
				GSATscore.setExamineeID(rs.getString("examineeID"));
				TestRoom  testroom= new TestRoom();
				testroom.setId(rs.getInt("testroomiD"));
				GSATscore.setTestroom(testroom);
				GSATscore.setTestnumber(rs.getInt("Test_Num"));
				GSATscore.setIsPayed(rs.getInt("isPayed"));
				GSATscorelist.add(GSATscore);
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
		return GSATscorelist;
	}
	@Override
	public List<Examinee> getList(String sql) {
		List<Examinee> ExamineeList = new ArrayList<Examinee>();
		//will need this part later
		/*
		String sql = "SELECT * FROM article a "
				+ "JOIN article_category b ON a.articleCategoryID = b.articleCategoryID "
				+ "ORDER BY articleID DESC";
		*/
		try {
			conn = dataSource.getConnection();
			smt = conn.prepareStatement(sql);
			rs = smt.executeQuery();
			while(rs.next()){
				Examinee examinee = new Examinee();
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
				
				ExamineeList.add(examinee);
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
		return ExamineeList;
	}
	
	
	
public Examinee get(Examinee examinee) {
		
		String sql = "SELECT * FROM Examinee WHERE ID = ?";
		try {
			conn = dataSource.getConnection();
			smt = conn.prepareStatement(sql);
			smt.setString(1, examinee.getID());
			rs = smt.executeQuery();
			if(rs.next()){
				List<String> SubjectList= new ArrayList<String>();
				SubjectList.add(rs.getString("Subject"));
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
				examinee.setSubject(SubjectList);
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
@Override
public GSATscore get(GSATscore GSATscore) {
	// TODO Auto-generated method stub
	String sql = "SELECT * FROM GSATscore WHERE Score_ID = ?";
	try {
		conn = dataSource.getConnection();
		smt = conn.prepareStatement(sql);
		smt.setInt(1, GSATscore.getId());
		rs = smt.executeQuery();
		if(rs.next()){
			GSATscore.setChinese(rs.getInt("Chinese"));
			GSATscore.setEnglish(rs.getInt("English"));
			GSATscore.setMath(rs.getInt("Math"));
			GSATscore.setScience(rs.getInt("Science"));
			GSATscore.setSociety(rs.getInt("Society"));
			GSATscore.setExamineeID(rs.getString("examineeID"));
			TestRoom  testroom= new TestRoom();
			testroom.setId(rs.getInt("testroomiD"));
			GSATscore.setTestroom(testroom);
			GSATscore.setTestnumber(rs.getInt("Test_Num"));
			GSATscore.setIsPayed(rs.getInt("isPayed"));
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
	return GSATscore;
}
@Override
public void GSATallocate(GSATscore GSATscore) {
	// TODO Auto-generated method stub
	String sql = "UPDATE GSATscore SET Chinese=?, English=?, Math=?, Society=? , Science=?, testroomID=? ,Test_Num=?,isPayed=? Where Score_ID = ?";
			
	try {
		conn = dataSource.getConnection();
		smt = conn.prepareStatement(sql);
		
		smt.setInt(1, GSATscore.getChinese());
		smt.setInt(2, GSATscore.getEnglish());
		smt.setInt(3, GSATscore.getMath());
		smt.setInt(4, GSATscore.getSociety());
		smt.setInt(5, GSATscore.getScience());
		smt.setInt(6, GSATscore.getTestroom().getId());
		smt.setInt(7, GSATscore.getTestnumber());
		smt.setInt(8, GSATscore.getIsPayed());
		smt.setInt(9, GSATscore.getId());
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
public List<ELscore> getELList() {
	// TODO Auto-generated method stub
	List<ELscore> ELscorelist = new ArrayList<ELscore>();
	String sql="SELECT * FROM ELscore";
	try {
		conn = dataSource.getConnection();
		smt = conn.prepareStatement(sql);
		rs = smt.executeQuery();
		while(rs.next()){
			ELscore ELscore = new ELscore();
			ELscore.setId(rs.getInt("Score_ID"));
			ELscore.setTestnumber(rs.getInt("Test_Num"));
			ELscore.setScore(rs.getInt("score"));
			TestRoom  testroom= new TestRoom();
			testroom.setId(rs.getInt("testroom_ID"));
			ELscore.setTestroom(testroom);
			ELscore.setExamineeID(rs.getString("examineeID"));
			ELscore.setIsPayed(rs.getInt("isPayed"));
			ELscorelist.add(ELscore);
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
	return ELscorelist;
}
@Override
public ELscore get(ELscore eLscore) {
	String sql = "SELECT * FROM ELscore WHERE Score_ID = ?";
	try {
		conn = dataSource.getConnection();
		smt = conn.prepareStatement(sql);
		smt.setInt(1, eLscore.getId());
		rs = smt.executeQuery();
		if(rs.next()){
			eLscore.setTestnumber(rs.getInt("Test_Num"));
			eLscore.setScore(rs.getInt("score"));
			TestRoom  testroom= new TestRoom();
			testroom.setId(rs.getInt("testroom_ID"));
			eLscore.setTestroom(testroom);
			eLscore.setExamineeID(rs.getString("examineeID"));
			eLscore.setIsPayed(rs.getInt("isPayed"));
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
	return eLscore;
}
@Override
public void ELallocate(ELscore eLscore) {
	// TODO Auto-generated method stub
	String sql = "UPDATE ELscore SET Score=?, testroom_ID=? ,Test_Num=? ,isPayed=? Where Score_ID = ?";
	
	try {
		conn = dataSource.getConnection();
		smt = conn.prepareStatement(sql);
		
		smt.setInt(1,eLscore.getScore());
		smt.setInt(2, eLscore.getTestroom().getId());
		smt.setInt(3, eLscore.getTestnumber());
		smt.setInt(4, eLscore.getIsPayed());
		smt.setInt(5, eLscore.getId());
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
public List<ASTscore> getASTList() {
	// TODO Auto-generated method stub
	List<ASTscore> ASTscorelist = new ArrayList<ASTscore>();
	String sql="SELECT * FROM ASTscore";
	try {
		conn = dataSource.getConnection();
		smt = conn.prepareStatement(sql);
		rs = smt.executeQuery();
		while(rs.next()){
			ASTscore ASTscore = new ASTscore();
			ASTscore.setChinese(rs.getInt("Chinese"));
			ASTscore.setEnglish(rs.getInt("English"));
			ASTscore.setMathA(rs.getInt("MathA"));
			ASTscore.setMathB(rs.getInt("MathB"));
			ASTscore.setHistory(rs.getInt("History"));
			ASTscore.setGeography(rs.getInt("Geography"));
			ASTscore.setCivics(rs.getInt("Civics"));
			ASTscore.setChemistry(rs.getInt("Chemistry"));
			ASTscore.setBiology(rs.getInt("Biology"));
			ASTscore.setPhysics(rs.getInt("Physics"));
			ASTscore.setID(rs.getInt("Score_ID"));
			ASTscore.setExamineeID(rs.getString("examineeID"));
			
			getSubject();
			ASTscore.setSubject(rs.getString("subject"));
			TestRoom  testroom= new TestRoom();
			testroom.setId(rs.getInt("testroomiD"));
			ASTscore.setTestroom(testroom);
			ASTscore.setTestnumber(rs.getInt("Test_Num"));
			ASTscore.setIsPayed(rs.getInt("isPayed"));
			ASTscorelist.add(ASTscore);
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
	return ASTscorelist;
}
@Override
public ASTscore get(ASTscore ASTscore) {
	// TODO Auto-generated method stub
	String sql = "SELECT * FROM ASTscore WHERE Score_ID = ?";
	try {
		conn = dataSource.getConnection();
		smt = conn.prepareStatement(sql);
		smt.setInt(1, ASTscore.getID());
		rs = smt.executeQuery();
		if(rs.next()){
			ASTscore.setID(rs.getInt("Score_ID"));
			ASTscore.setChinese(rs.getInt("Chinese"));
			ASTscore.setEnglish(rs.getInt("English"));
			ASTscore.setMathA(rs.getInt("MathA"));
			ASTscore.setMathB(rs.getInt("MathB"));
			ASTscore.setHistory(rs.getInt("History"));
			ASTscore.setGeography(rs.getInt("Geography"));
			ASTscore.setCivics(rs.getInt("Civics"));
			ASTscore.setPhysics(rs.getInt("Physics"));
			ASTscore.setChemistry(rs.getInt("Chemistry"));
			ASTscore.setBiology(rs.getInt("Biology"));
			ASTscore.setExamineeID(rs.getString("examineeID"));
			TestRoom  testroom= new TestRoom();
			testroom.setId(rs.getInt("testroomID"));
			ASTscore.setTestroom(testroom);
			ASTscore.setTestnumber(rs.getInt("Test_Num"));
			ASTscore.setSubject(rs.getString("subject"));
			ASTscore.setIsPayed(rs.getInt("isPayed"));
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
	return ASTscore;
}
@Override
public void ASTallocate(ASTscore ASTscore) {
	// TODO Auto-generated method stub
	String sql = "UPDATE ASTscore SET Chinese=?, English=?, MathA=?, MathB=? , History=?, Geography=?,Civics=?,Physics=?,Chemistry=?,Biology=?,testroomID=? ,Test_Num=? ,isPayed= ? Where Score_ID = ?";
	
	try {
		conn = dataSource.getConnection();
		smt = conn.prepareStatement(sql);
		
		smt.setInt(1, ASTscore.getChinese());
		smt.setInt(2, ASTscore.getEnglish());
		smt.setInt(3, ASTscore.getMathA());
		smt.setInt(4, ASTscore.getMathB());
		smt.setInt(5, ASTscore.getHistory());
		smt.setInt(6, ASTscore.getGeography());
		smt.setInt(7, ASTscore.getCivics());
		smt.setInt(8, ASTscore.getPhysics());
		smt.setInt(9, ASTscore.getChemistry());
		smt.setInt(10, ASTscore.getBiology());
		smt.setInt(11, ASTscore.getTestroom().getId());
		smt.setInt(12, ASTscore.getTestnumber());
		smt.setInt(13, ASTscore.getIsPayed());
		smt.setInt(14, ASTscore.getID());
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
public void getSubject() {
	// TODO Auto-generated method stub
	String sql="Update  ASTscore JOIN Examinee ON ASTscore.examineeID = Examinee.ID SET ASTscore.subject = Examinee.Subject ";
	
	try {
		conn = dataSource.getConnection();
		smt = conn.prepareStatement(sql);
		
	    
		
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
