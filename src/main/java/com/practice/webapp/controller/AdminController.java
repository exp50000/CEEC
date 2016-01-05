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
import com.practice.webapp.dao.QueryDAO;
import com.practice.webapp.dao.TestRoomDAO;
import com.practice.webapp.dao.AdminDAO;
import com.practice.webapp.dao.ApplyDAO;
import com.practice.webapp.dao.ProductDAO;
import com.practice.webapp.entity.TestRoom;
import com.practice.webapp.entity.Examinee;
import com.practice.webapp.entity.GSATscore;
import com.practice.webapp.entity.Product;
import com.practice.webapp.entity.ASTscore;
import com.practice.webapp.entity.Admin;
import com.practice.webapp.entity.Article;
import com.practice.webapp.entity.ELscore;


@Controller
public class AdminController {
	
	ApplicationContext context =  new ClassPathXmlApplicationContext("spring-module.xml");
	
	//登入
	@RequestMapping(value = "/adminlogin", method = RequestMethod.POST)
	public ModelAndView adminLogin(@ModelAttribute Admin admin) {
		Admin admin_session = (Admin)context.getBean("admin");
		ModelAndView model = new ModelAndView("redirect:/examineelist");
		//you can modify this part to check username and password with DB, AD, LDAP, or open id
		if ("admin".equals(admin.getUsername()) && "admin".equals(admin.getPassword())){
			//save username and password in the session bean
			
			admin_session.setUsername(admin.getUsername());
			admin_session.setPassword(admin.getPassword());
			System.out.println("Successful!");
		}
		else{
			model = new ModelAndView("admin");
			model.addObject("message", "登入失敗");
			System.out.println("failed!");
			//reset username and password in the session bean
			
			admin_session.setUsername("");
			admin_session.setPassword("");
		}	

		return model;
	}
	@RequestMapping(value = "/adminlogout", method = RequestMethod.GET)
	public ModelAndView AdminLogout() {
		ModelAndView view = new ModelAndView("admin");
		Admin admin_session = (Admin)context.getBean("admin");
		admin_session.setUsername("");
		admin_session.setPassword("");
		return view;
	}
	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public ModelAndView Admin(Examinee examinee) {
		ModelAndView view = new ModelAndView("admin");
		return view;
	}
	
	//學生資料表
	@RequestMapping(value = "/examineelist", method = RequestMethod.GET)
	public ModelAndView getExamineeList(){
	
		ModelAndView model = new ModelAndView("examineelist");
		ModelAndView model2 = new ModelAndView("admin");
		
		Admin admin_session = (Admin)context.getBean("admin");
		if("admin".equals(admin_session.getUsername()) && "admin".equals(admin_session.getPassword())){
			
			
			
			AdminDAO AdminDAO = (AdminDAO)context.getBean("AdminDAO");
			List<Examinee> ExamineeList = new ArrayList<Examinee>();
			ExamineeList = AdminDAO.getAllExamineeList();
			
			model.addObject("ExamineeList", ExamineeList);
			
			return model;
		}
		else{
			model2.addObject("message", "請先登入");
			return model2;
		}
	}
	
	
	//學測
	@RequestMapping(value = "/GSATallocate", method = RequestMethod.GET)
	public ModelAndView getGSATList(){
	
		ModelAndView model = new ModelAndView("GSATallocate");
		ModelAndView model2 = new ModelAndView("admin");
		
		Admin admin_session = (Admin)context.getBean("admin");
		if("admin".equals(admin_session.getUsername()) && "admin".equals(admin_session.getPassword())){
			
			
			
			AdminDAO AdminDAO = (AdminDAO)context.getBean("AdminDAO");
			List<GSATscore> GSATList = new ArrayList<GSATscore>();
			GSATList = AdminDAO.getGSATList();
			
			model.addObject("GSATList", GSATList);
			
			return model;
		}
		else{
			model2.addObject("message", "請先登入");
			return model2;
		}
	}
	
	
	@RequestMapping(value = "/updateGSAT", method = RequestMethod.GET)
	public ModelAndView updateGSATPage(@ModelAttribute GSATscore GSATscore){
		ModelAndView model = new ModelAndView("updateGSAT");
		AdminDAO AdminDAO = (AdminDAO)context.getBean("AdminDAO");
		TestRoomDAO TestRoomDAO = (TestRoomDAO)context.getBean("TestRoomDAO");
		List<TestRoom>TestRoomList = new ArrayList<TestRoom>();
		TestRoomList=TestRoomDAO.getTestRoomList();
		GSATscore = AdminDAO.get(GSATscore);
		model.addObject("TestRoomList",TestRoomList);
		model.addObject("GSATscore", GSATscore);
		
		
		
		
		
		
		return model;
	}
	
	@RequestMapping(value = "/updateGSAT", method = RequestMethod.POST)
	public ModelAndView updateGSAT(@ModelAttribute GSATscore GSATscore){
		ModelAndView model = new ModelAndView("redirect:/GSATallocate");

		AdminDAO AdminDAO = (AdminDAO)context.getBean("AdminDAO");
		System.out.println(GSATscore.getIsPayed());
		AdminDAO.GSATallocate(GSATscore);
		
		
		return model;
	}
	
	//英聽
	@RequestMapping(value = "/ELallocate", method = RequestMethod.GET)
	public ModelAndView getELList(){
	
		ModelAndView model = new ModelAndView("ELallocate");
		ModelAndView model2 = new ModelAndView("admin");
		
		Admin admin_session = (Admin)context.getBean("admin");
		if("admin".equals(admin_session.getUsername()) && "admin".equals(admin_session.getPassword())){
			
			
			
			AdminDAO AdminDAO = (AdminDAO)context.getBean("AdminDAO");
			List<ELscore> ELList = new ArrayList<ELscore>();
			ELList = AdminDAO.getELList();
			
			model.addObject("ELList", ELList);
			
			return model;
		}
		else{
			model2.addObject("message", "請先登入");
			return model2;
		}
	}
	
	
	@RequestMapping(value = "/updateEL", method = RequestMethod.GET)
	public ModelAndView updateELPage(@ModelAttribute ELscore ELscore){
		ModelAndView model = new ModelAndView("updateEL");
		AdminDAO AdminDAO = (AdminDAO)context.getBean("AdminDAO");
		TestRoomDAO TestRoomDAO = (TestRoomDAO)context.getBean("TestRoomDAO");
		List<TestRoom>TestRoomList = new ArrayList<TestRoom>();
		TestRoomList=TestRoomDAO.getTestRoomList();
		System.out.println("EL test:"+ELscore.getId());
	    ELscore = AdminDAO.get(ELscore);
	    
	    model.addObject("TestRoomList",TestRoomList);
		model.addObject("ELscore", ELscore);
		
	
		
		
		
		
	return model;
	}
	
	@RequestMapping(value = "/updateEL", method = RequestMethod.POST)
	public ModelAndView updateEL(@ModelAttribute ELscore ELscore){
		ModelAndView model = new ModelAndView("redirect:/ELallocate");

		AdminDAO AdminDAO = (AdminDAO)context.getBean("AdminDAO");
		AdminDAO.ELallocate(ELscore);
		
		
		return model;
	}
	//指考
	@RequestMapping(value = "/ASTallocate", method = RequestMethod.GET)
	public ModelAndView getASTList(){
	
		ModelAndView model = new ModelAndView("ASTallocate");
		ModelAndView model2 = new ModelAndView("admin");
		
		Admin admin_session = (Admin)context.getBean("admin");
		if("admin".equals(admin_session.getUsername()) && "admin".equals(admin_session.getPassword())){
			
			
			
			AdminDAO AdminDAO = (AdminDAO)context.getBean("AdminDAO");
			List<ASTscore> ASTList = new ArrayList<ASTscore>();
			ASTList = AdminDAO.getASTList();
			
			model.addObject("ASTList", ASTList);
			
			return model;
		}
		else{
			model2.addObject("message", "請先登入");
			return model2;
		}
	}
	
	
	@RequestMapping(value = "/updateAST", method = RequestMethod.GET)
	public ModelAndView updateASPage(@ModelAttribute ASTscore ASTscore){
		ModelAndView model = new ModelAndView("updateAST");
		AdminDAO AdminDAO = (AdminDAO)context.getBean("AdminDAO");
		TestRoomDAO TestRoomDAO = (TestRoomDAO)context.getBean("TestRoomDAO");
		List<TestRoom>TestRoomList = new ArrayList<TestRoom>();
		TestRoomList=TestRoomDAO.getTestRoomList();
		ASTscore = AdminDAO.get(ASTscore);
		System.out.println(ASTscore.getChinese());
		model.addObject("TestRoomList",TestRoomList);
		model.addObject("ASTscore", ASTscore);
		
		
		
		
		
		
		return model;
	}
	
	@RequestMapping(value = "/updateAST", method = RequestMethod.POST)
	public ModelAndView updateAST(@ModelAttribute ASTscore ASTscore){
		ModelAndView model = new ModelAndView("redirect:/ASTallocate");

		AdminDAO AdminDAO = (AdminDAO)context.getBean("AdminDAO");
		AdminDAO.ASTallocate(ASTscore);
		
		
		return model;
	}
	
	
	//新增刪除修改學生
	@RequestMapping(value = "/insertExaminee", method = RequestMethod.GET)
	public ModelAndView insertExamineePage(){
		ModelAndView model = new ModelAndView("insertExaminee");
		
		return model;
	}
	
	@RequestMapping(value = "/insertExaminee", method = RequestMethod.POST)
	public ModelAndView insertExaminee(@ModelAttribute Examinee examinee){
		ModelAndView model = new ModelAndView("redirect:/examineelist");
		RegisterDAO RegisterDAO = (RegisterDAO)context.getBean("RegisterDAO");
		RegisterDAO.register(examinee);
		
		return model;
	}
	
	
	@RequestMapping(value = "/updateExaminee", method = RequestMethod.GET)
	public ModelAndView updateExamineePage(@ModelAttribute Examinee examinee){
		ModelAndView model = new ModelAndView("updateExaminee");
		AdminDAO AdminDAO = (AdminDAO)context.getBean("AdminDAO");
		
		examinee = AdminDAO.get(examinee);
		model.addObject("examinee", examinee);
		
		
		
		
		return model;
	}
	
	@RequestMapping(value = "/updateExaminee", method = RequestMethod.POST)
	public ModelAndView updateExaminee(@ModelAttribute Examinee examinee){
		ModelAndView model = new ModelAndView("redirect:/examineelist");

		RegisterDAO RegisterDAO = (RegisterDAO)context.getBean("RegisterDAO");
		System.out.println("id="+examinee.getID());
		RegisterDAO.modify(examinee);
		return model;
	}
	
	@RequestMapping(value = "/deleteExaminee", method = RequestMethod.POST)
	public ModelAndView deleteExaminee(@ModelAttribute Examinee examinee){
		ModelAndView model = new ModelAndView("redirect:/examineelist");
		RegisterDAO RegisterDAO = (RegisterDAO)context.getBean("RegisterDAO");
		RegisterDAO.delete(examinee);
		return model;
	}

}
