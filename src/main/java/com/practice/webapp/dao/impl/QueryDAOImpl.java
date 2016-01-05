package com.practice.webapp.dao.impl;
import com.practice.webapp.dao.QueryDAO;
import com.practice.webapp.entity.ASTscore;
import com.practice.webapp.entity.ELscore;
import com.practice.webapp.entity.Examinee;
import com.practice.webapp.entity.GSATscore;

import com.practice.webapp.entity.TestRoom;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

//import com.mysql.jdbc.Statement;
import com.practice.webapp.dao.RegisterDAO;

public class QueryDAOImpl implements QueryDAO {
     
	
	private DataSource dataSource;
	private Connection conn = null ;
	private ResultSet rs = null ;
	private PreparedStatement smt = null ;
	
	
	
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	
	@Override
	public boolean ifExist(Examinee examinee) {
		// TODO Auto-generated method stub
		String sql = " select * from Examinee where ID = ? and BIRTH = ?";
		try {
			conn = dataSource.getConnection();
			smt = conn.prepareStatement(sql);
			
			smt.setString(1, examinee.getID());
			smt.setString(2, examinee.getBirth());
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
	public Examinee GSATtestRoomQuery(Examinee examinee) {
		// TODO Auto-generated method stub
		String sql = "SELECT * FROM GSATscore WHERE examineeID = ? ";
		try {
			conn = dataSource.getConnection();
			smt = conn.prepareStatement(sql);
			smt.setString(1, examinee.getID());
			rs = smt.executeQuery();
			if(rs.next()){
				
				examinee.getTestRoom().setId(rs.getInt("testroomID"));
				
				
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
	public Examinee GSATScoreQuery(Examinee examinee) {
		// TODO Auto-generated method stub
		String sql = "SELECT * FROM GSATscore WHERE examineeID = ?";
		try {
			
			conn = dataSource.getConnection();
			smt = conn.prepareStatement(sql);
			smt.setString(1, examinee.getID());
			
			rs = smt.executeQuery();
			if(rs.next()){
				
				examinee.getGSATscore().setId(rs.getInt("Score_ID"));
				
				
				
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
	
	
	
	public GSATscore GSATScoreSetup(GSATscore gsatscore){
		String sql = "SELECT * FROM GSATscore WHERE Score_ID = ?";
		try {
			
			conn = dataSource.getConnection();
			smt = conn.prepareStatement(sql);
			smt.setInt(1, gsatscore.getId());
			
			rs = smt.executeQuery();
			if(rs.next()){
				
				
				gsatscore.setChinese(rs.getInt("Chinese"));
				gsatscore.setEnglish(rs.getInt("English"));
				gsatscore.setMath(rs.getInt("Math"));
				gsatscore.setScience(rs.getInt("Science"));
				gsatscore.setSociety(rs.getInt("Society"));
				gsatscore.setIsPayed(rs.getInt("isPayed"));
				
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
		return gsatscore;
		
	}
	@Override
	public Examinee ELScoreQuery(Examinee examinee) {
		// TODO Auto-generated method stub
		String sql = "SELECT * FROM ELscore WHERE examineeID = ?";
		try {
			
			conn = dataSource.getConnection();
			smt = conn.prepareStatement(sql);
			smt.setString(1, examinee.getID());
			
			rs = smt.executeQuery();
			if(rs.next()){
				
				examinee.getELscore().setId(rs.getInt("Score_ID"));
				
				
				
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

	
	
	public ELscore ELScoreSetup(ELscore elscore){
		String sql = "SELECT * FROM ELscore WHERE Score_ID = ?";
		try {
			
			conn = dataSource.getConnection();
			smt = conn.prepareStatement(sql);
			smt.setInt(1, elscore.getId());
			
			rs = smt.executeQuery();
			if(rs.next()){
			
				elscore.setScore(rs.getInt("score"));
				elscore.setIsPayed(rs.getInt("isPayed"));
				
				
				
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
		return elscore;
		
	}
	
	
	@Override
	public Examinee ASTScoreQuery(Examinee examinee) {
		// TODO Auto-generated method stub
		String sql = "SELECT * FROM ASTscore WHERE examineeID = ?";
		try {
			
			conn = dataSource.getConnection();
			smt = conn.prepareStatement(sql);
			smt.setString(1, examinee.getID());
			
			rs = smt.executeQuery();
			if(rs.next()){
				
				examinee.getASTscore().setID(rs.getInt("Score_ID"));
				
				
				
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
	
	
	public ASTscore ASTScoreSetup(ASTscore astscore){
		String sql = "SELECT * FROM ASTscore WHERE Score_ID = ?";
		try {
			
			conn = dataSource.getConnection();
			smt = conn.prepareStatement(sql);
			smt.setInt(1, astscore.getID());
			
			rs = smt.executeQuery();
			if(rs.next()){
			
				astscore.setChinese(rs.getInt("Chinese"));
				astscore.setEnglish(rs.getInt("English"));
				astscore.setMathA(rs.getInt("MathA"));
				astscore.setMathB(rs.getInt("MathB"));
				astscore.setHistory(rs.getInt("History"));
				astscore.setGeography(rs.getInt("Geography"));
				astscore.setCivics(rs.getInt("Civics"));
				astscore.setPhysics(rs.getInt("Physics"));
				astscore.setChemistry(rs.getInt("Chemistry"));
				astscore.setBiology(rs.getInt("Biology"));
				astscore.setIsPayed(rs.getInt("isPayed"));
				
				
				
				
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
		return astscore;
		
	}

	@Override
	public TestRoom testRoomSetup(TestRoom testroom) {
		// TODO Auto-generated method stub
		String sql = "SELECT * FROM Testroom WHERE testroomID = ?";
		try {
			
			conn = dataSource.getConnection();
			smt = conn.prepareStatement(sql);
			smt.setInt(1, testroom.getId());
			
			rs = smt.executeQuery();
			if(rs.next()){
				
				
				testroom.setName(rs.getString("testroomName"));
				testroom.setAddress(rs.getString("testroomAddress"));
				
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
		return testroom;
	}

	@Override
	public int GSATtestnumberQuery(Examinee examinee) {
		// TODO Auto-generated method stub
		String sql = "SELECT * FROM GSATscore WHERE examineeID = ? ";
		try {
			conn = dataSource.getConnection();
			smt = conn.prepareStatement(sql);
			smt.setString(1, examinee.getID());
			rs = smt.executeQuery();
			if(rs.next()){
				
				return rs.getInt("Test_Num");
				
				
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
		return 0;
		
	}

	@Override
	public Examinee ELtestRoomQuery(Examinee examinee) {
		// TODO Auto-generated method stub
		String sql = "SELECT * FROM ELscore WHERE examineeID = ? ";
		try {
			conn = dataSource.getConnection();
			smt = conn.prepareStatement(sql);
			smt.setString(1, examinee.getID());
			rs = smt.executeQuery();
			if(rs.next()){
				
				examinee.getTestRoom().setId(rs.getInt("testroom_ID"));
				
				
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
	public int ELtestnumberQuery(Examinee examinee) {
		// TODO Auto-generated method stub
		String sql = "SELECT * FROM ELscore WHERE examineeID = ? ";
		try {
			conn = dataSource.getConnection();
			smt = conn.prepareStatement(sql);
			smt.setString(1, examinee.getID());
			rs = smt.executeQuery();
			if(rs.next()){
				
				return rs.getInt("Test_Num");
				
				
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
		return 0;
		
	}

	@Override
	public Examinee ASTtestRoomQuery(Examinee examinee) {
		// TODO Auto-generated method stub
		String sql = "SELECT * FROM ASTscore WHERE examineeID = ? ";
		try {
			conn = dataSource.getConnection();
			smt = conn.prepareStatement(sql);
			smt.setString(1, examinee.getID());
			rs = smt.executeQuery();
			if(rs.next()){
				
				examinee.getTestRoom().setId(rs.getInt("testroomID"));
				
				
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
	public int ASTtestnumberQuery(Examinee examinee) {
		// TODO Auto-generated method stub
		String sql = "SELECT * FROM ASTscore WHERE examineeID = ? ";
		try {
			conn = dataSource.getConnection();
			smt = conn.prepareStatement(sql);
			smt.setString(1, examinee.getID());
			rs = smt.executeQuery();
			if(rs.next()){
				
				return rs.getInt("Test_Num");
				
				
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
		return 0;
	}

}