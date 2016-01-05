
package com.practice.webapp.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.practice.webapp.dao.RegisterDAO;
import com.practice.webapp.entity.Examinee;

@Controller
public class AccountController {
	ApplicationContext context =  new ClassPathXmlApplicationContext("spring-module.xml");
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView checkLogin(Examinee examinee) {
		ModelAndView view = new ModelAndView("center");
		//you can modify this part to check username and password with DB, AD, LDAP, or open id
		
		RegisterDAO RegisterDAO = (RegisterDAO)context.getBean("RegisterDAO");
		
		if (RegisterDAO.login(examinee)){
			//save username and password in the session bean
			Examinee examinee_temp = (Examinee)context.getBean("examinee");
			examinee_temp.setEmail(examinee.getEmail());
			examinee_temp.setPassword(examinee.getPassword());
			System.out.println("Successful!");
			RegisterDAO.getExaminee(examinee_temp);
			view.addObject("message", examinee_temp.getName());
		}
		else{
			view = new ModelAndView("signin");
			view.addObject("message", "登入失敗");
			System.out.println(examinee.getEmail());
			System.out.println(examinee.getPassword());
			System.out.println("failed!");
			//reset username and password in the session bean
			Examinee examinee_temp = (Examinee)context.getBean("examinee");
			examinee_temp.setEmail("");
			examinee_temp.setPassword("");
		}	

		return view;
	}
	@RequestMapping(value = "/signin", method = RequestMethod.GET)
	public ModelAndView login(Examinee examinee) {
		ModelAndView view = new ModelAndView("signin");
		return view;
	}
}
