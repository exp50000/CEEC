package com.practice.webapp.dao;

import java.sql.SQLException;
import java.util.List;

import com.practice.webapp.entity.Product;
import com.practice.webapp.entity.PurchaseOrder;


public interface SalesOrderDAO {	
	
	public int sellProduct(List<Long> pList) throws SQLException;


}
