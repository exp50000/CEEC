package com.practice.webapp.dao;

import java.sql.SQLException;
import java.util.List;

import com.practice.webapp.entity.Product;
import com.practice.webapp.entity.PurchaseOrder;


public interface PurchaseOrderDAO {	
	
	public void create(Product aProduct, int qty);
	public List<PurchaseOrder> getList();
	public int stockProduct(PurchaseOrder po) throws SQLException;
	

}
