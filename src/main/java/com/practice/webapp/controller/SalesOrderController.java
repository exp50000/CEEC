package com.practice.webapp.controller;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;


import org.springframework.beans.factory.annotation.Autowired;
//import org.slf4j.Logger;
//import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.practice.webapp.dao.SalesOrderDAO;
import com.practice.webapp.dao.ProductDAO;
import com.practice.webapp.entity.Product;
import com.practice.webapp.entity.ShoppingCart;


@Controller
public class SalesOrderController {
	ApplicationContext context =  new ClassPathXmlApplicationContext("spring-module.xml");
	//private static final Logger logger = LoggerFactory.getLogger(ProductController.class);
	//configuration for session, please refer to: http://tuhrig.de/making-a-spring-bean-session-scoped/
	
	@RequestMapping(value = "/addShoppingCart", method = RequestMethod.GET)
	public ModelAndView addShoppingCart(@ModelAttribute Product product){
		ModelAndView model = new ModelAndView("redirect:/availableProduct");		
		long pid = product.getId();
		//System.out.println("pid="+pid);
		
		ShoppingCart shoppingCart = (ShoppingCart)context.getBean("shoppingCart"); 
		shoppingCart.add(pid);
		//System.out.println(shoppingCart.count());
		return model;
	}
	
	@RequestMapping(value = "/showCart", method = RequestMethod.GET)
	public ModelAndView showShoppingCart(){
		ModelAndView model = new ModelAndView("showCart");
		ShoppingCart shoppingCart = (ShoppingCart)context.getBean("shoppingCart");
		List<Long> content =  shoppingCart.getCart();
		model.addObject("shoppingCart",content);
		return model;
	}
	
	@RequestMapping(value = "/checkout", method = RequestMethod.GET)
	public ModelAndView checkout(){
		ModelAndView model = new ModelAndView("showCart");
		ShoppingCart shoppingCart = (ShoppingCart)context.getBean("shoppingCart");
		SalesOrderDAO salesOrderDAO = (SalesOrderDAO)context.getBean("salesOrderDAO");
		List<Long> pList =  shoppingCart.getCart();
		int result = 0;
		try {
			result = salesOrderDAO.sellProduct(pList);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println("result="+result);
		if (result != 0){ //successfully updated, clean up shopping cart
			shoppingCart.cleanup();
		}
		return model;
	}
	
	
}
