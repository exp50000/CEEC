package com.practice.webapp.controller;
import java.util.ArrayList;
import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


import com.practice.webapp.dao.RegisterDAO;
import com.practice.webapp.dao.ArticleDAO;
import com.practice.webapp.dao.QueryDAO;
import com.practice.webapp.dao.TestRoomDAO;
import com.practice.webapp.entity.TestRoom;
import com.practice.webapp.entity.Article;
import com.practice.webapp.entity.Examinee;



@Controller

public class RegisterController {
	
	ApplicationContext context =  new ClassPathXmlApplicationContext("spring-module.xml");
	
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public ModelAndView Register(Examinee examinee){
		
		
		ModelAndView view = new ModelAndView("/confirm");
		ModelAndView view2 = new ModelAndView("/register");
		RegisterDAO RegisterDAO = (RegisterDAO)context.getBean("RegisterDAO");
		if(RegisterDAO.ifIDExist(examinee)){
	     
			view2.addObject("message", "身分證字號重複使用");
			view2.addObject("warning","註冊失敗");
	        return view2;
		}
		else if (RegisterDAO.ifEmailExist(examinee)){
			view2.addObject("message2", "EMAIL重複使用");
			view2.addObject("warning","註冊失敗");
	        return view2;
		}
		else{
			Examinee examinee_temp = (Examinee)context.getBean("examinee");
			examinee_temp.setID(examinee.getID());
			examinee_temp.setEmail(examinee.getEmail());
			examinee_temp.setPassword(examinee.getPassword());
			examinee_temp.setName(examinee.getName());
			examinee_temp.setPhone(examinee.getPhone());
			examinee_temp.setGender(examinee.getGender());
			examinee_temp.setBirth(examinee.getBirth());
            examinee_temp.setAddress(examinee.getAddress());
            examinee_temp.setLowincome(examinee.getLowincome());
            examinee_temp.setEmergencyContact(examinee.getEmergencyContact());
            examinee_temp.setEmergencyContactMobile(examinee.getEmergencyContactMobile());
            examinee_temp.setEmergencyContactRelationship(examinee.getEmergencyContactRelationship());
           
            if(examinee_temp.getLowincome()==0){
          	  view.addObject("lowincome", "否");
          	  }
          	  else{
                view.addObject("lowincome", "是");  
          	  }
			return view;
		}
		
	}
	
	@RequestMapping(value = "/modify" , method = RequestMethod.GET)
	public ModelAndView Modify(Examinee examinee){
		ModelAndView model = new ModelAndView("modify");
		
		Examinee examinee_temp = (Examinee)context.getBean("examinee");
		
		  model.addObject("id",examinee_temp.getID());
		  model.addObject("email",examinee_temp.getEmail());
		  model.addObject("password",examinee_temp.getPassword());
		  model.addObject("name",examinee_temp.getName());
		  model.addObject("phone",examinee_temp.getPhone());
		  model.addObject("gender",examinee_temp.getGender());
		  model.addObject("birth",examinee_temp.getBirth());
		  model.addObject("address",examinee_temp.getAddress());
		  model.addObject("emercontact",examinee_temp.getEmergencyContact());
		  model.addObject("emerrela",examinee_temp.getEmergencyContactRelationship());
		  model.addObject("emermobile",examinee_temp.getEmergencyContactMobile());
		  if(examinee_temp.getLowincome()==0){
			  model.addObject("lowincome", "否");
		  }
		  else{
		      model.addObject("lowincome", "是");  
		  }
		  
		  
		  return model;
	}
	
	@RequestMapping(value= "/modifyData",method = RequestMethod.POST)
	public ModelAndView ModifyData(Examinee examinee){
		ModelAndView model = new ModelAndView("center");
		Examinee examinee_temp = (Examinee)context.getBean("examinee");
		RegisterDAO RegisterDAO = (RegisterDAO)context.getBean("RegisterDAO");
		examinee.setID(examinee_temp.getID());
		RegisterDAO.modify(examinee);
		model.addObject("message", examinee.getName());
		return model;
		
		
	}
	
	@RequestMapping(value = "/ConfirmExaminee", method = RequestMethod.GET)
	public ModelAndView ConfirmExaminee(Examinee examinee){
		ModelAndView model = new ModelAndView("signin");
		Examinee examinee_temp = (Examinee)context.getBean("examinee");
		RegisterDAO RegisterDAO = (RegisterDAO)context.getBean("RegisterDAO");
		RegisterDAO.register(examinee_temp);
		return model;
	}
	
	@RequestMapping(value= "/doublecheck" , method = RequestMethod.GET)
	public ModelAndView DoubleCheck(Examinee examinee){
	  ModelAndView model = new ModelAndView("register");
	  Examinee examinee_temp = (Examinee)context.getBean("examinee");
	  model.addObject("id",examinee_temp.getID());
	  model.addObject("email",examinee_temp.getEmail());
	  model.addObject("password",examinee_temp.getPassword());
	  model.addObject("name",examinee_temp.getName());
	  model.addObject("phone",examinee_temp.getPhone());
	  model.addObject("gender",examinee_temp.getGender());
	  model.addObject("birth",examinee_temp.getBirth());
	  model.addObject("address",examinee_temp.getAddress());
	  model.addObject("emercontact",examinee_temp.getEmergencyContact());
	  model.addObject("emerrela",examinee_temp.getEmergencyContactRelationship());
	  model.addObject("emermobile",examinee_temp.getEmergencyContactMobile());
	  if(examinee_temp.getLowincome()==0){
		  model.addObject("lowincome", "否");
	  }
	  else{
		  model.addObject("lowincome", "是");  
	  }
	  
	  return model;
	}
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	
	
	public ModelAndView RegisterTestRoomList(){
		ModelAndView view = new ModelAndView("register");
		TestRoomDAO TestRoomDAO = (TestRoomDAO)context.getBean("TestRoomDAO");
		List<TestRoom> TestRoomList = new ArrayList<TestRoom>();
		TestRoomList = TestRoomDAO.getTestRoomList();
		view.addObject("TestRoomList", TestRoomList);
		
		return view;
	}
	
	@RequestMapping(value = "/center", method = RequestMethod.GET)
	public ModelAndView Center(){
		ModelAndView view = new ModelAndView("center");
		ModelAndView signin = new ModelAndView("signin");
		
		RegisterDAO RegisterDAO = (RegisterDAO)context.getBean("RegisterDAO");
		Examinee examinee_session = (Examinee)context.getBean("examinee");
		
		if(examinee_session.getEmail().equals("")){
		   return signin;
		}
		
		else{
			RegisterDAO.getExaminee(examinee_session);
			view.addObject("message", examinee_session.getName());
			return view;
		}
		
		
	
	}
	
	
	
	
	
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public ModelAndView Logout(){
		ModelAndView view = new ModelAndView("signin");
		
		Examinee examinee_session = (Examinee)context.getBean("examinee");
		examinee_session.setEmail("");
		examinee_session.setPassword("");
		view.addObject("message", "登出成功，歡迎再次登入");
		return view;
		
	
	}
	

	

}
