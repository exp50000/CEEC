package com.practice.webapp.dao.impl;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;







//import com.mysql.jdbc.Statement;
import com.practice.webapp.entity.Product;
import com.practice.webapp.entity.ShoppingCart;
import com.practice.webapp.dao.SalesOrderDAO;

public class SalesOrderDAOImpl implements SalesOrderDAO{
	private DataSource dataSource;
	private Connection conn = null ;
	private ResultSet rs = null ;
	private PreparedStatement smt = null ;
	
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}

	public int sellProduct(List<Long> pList) throws SQLException {
		    
		if (pList.size() == 0){
			return 0; // if nothing in the shopping cart
		}
		long orderID = 0;
		int result = 0;
		int count = 0; // count how many sales order items were processed successfully
		
	    PreparedStatement st1 = null;
		PreparedStatement st2 = null;
		PreparedStatement st3 = null;
		PreparedStatement st4 = null;

		try {
		      
			//Connect to a database
			conn = dataSource.getConnection();
			conn.setAutoCommit(false); //make it a transaction
			/*
			String sql = "INSERT INTO salesOrder (OrderTime) VALUES(Now())";
			st1 = conn.prepareStatement(sql);
			st1.executeUpdate();
			st1.close();
		    */
			
			// get order id for MS Access and SQL Server
			/*
			st2 = conn.prepareStatement("SELECT @@IDENTITY");
			ResultSet rs = st2.executeQuery();
		      if (rs != null && rs.next()) {
		    	  orderID = rs.getInt(1);
		      }
		      st2.close();
		      //System.out.println(orderID+"is created");
			*/
		      
			// get order id for MySQL
			
			String sql = "INSERT INTO salesOrder (OrderTime) VALUES(Now())";
		    st2 = conn.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);
		    result = st2.executeUpdate();
		    ResultSet rs = st2.getGeneratedKeys();
		    if (rs != null && rs.next()) {
		    	orderID = rs.getLong(1);
		    }
		    System.out.println("order id:"+orderID);
		    st2.close();
		    
		    
		      
		    for (long productID:pList){
		    	//the following two SQL have to be done in the same transaction
		    	//Issue a query and get a result
		    	st3 = conn.prepareStatement("UPDATE product SET Inventory = Inventory - 1 WHERE ProductId = ?");
		    	st3.setLong(1,productID);
		    	result = st3.executeUpdate();
		    	st3.close();
		    	//System.out.println(productID+"is updated");
		    	String sql4 = "INSERT INTO salesOrderItem (SOID, ProductID, Quantity) VALUES(?, ?, 1)";
		    	st4 = conn.prepareStatement(sql4);
		    	st4.setLong(1,orderID);
		    	st4.setLong(2,productID);
		    	result = st4.executeUpdate();
		    	st4.close();
		    	//System.out.println(productID+"is processed");
		    	count ++;
		      }// for all products on the cart
		      
		      conn.commit();
		      conn.close();
		      
		} // try
    	catch (Exception e) {
    		count = 0;
    		e.printStackTrace();
	  		if (conn!= null) { 
	  			try { 
	  				System.err.print("Transaction is being rolled back"); 
	  				conn.rollback(); } 
	  			catch(SQLException excep){
	  				e.printStackTrace(); 
	  			}
	  		}
	    } finally { 
		  	  if (st1 != null) {
		  	   st1.close(); }
		  	  if (st2 != null) { 
		  	   st2.close(); }
		  	  if (st3 != null) { 
			  	   st3.close(); }
		  	  if (st4 != null) { 
			  	   st4.close(); }
		  	  conn.close();
		} 
	    return count;
	} //sellProduct


}
