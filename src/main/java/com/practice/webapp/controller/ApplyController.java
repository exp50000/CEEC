package com.practice.webapp.controller;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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
import com.practice.webapp.dao.ApplyDAO;
import com.practice.webapp.entity.TestRoom;
import com.practice.webapp.entity.Examinee;



@Controller
public class ApplyController {
	
	
	ApplicationContext context =  new ClassPathXmlApplicationContext("spring-module.xml");

	
	
	@RequestMapping(value = "/apply", method = RequestMethod.GET)
	public ModelAndView Apply(Examinee examinee){
		ModelAndView view = new ModelAndView("apply");
		RegisterDAO RegisterDAO = (RegisterDAO)context.getBean("RegisterDAO");
		Examinee examinee_session = (Examinee)context.getBean("examinee");
		RegisterDAO.getExaminee(examinee_session);
		view.addObject("message", examinee_session.getName());
		if(examinee_session.getGSATscore().getId()!=1){
			view.addObject("warning", "已報考學測");
		}
		if(examinee_session.getELscore().getId()!=1){
			view.addObject("warning2", "已報考英聽");
		}
		if(examinee_session.getASTscore().getID()!=1){
		view.addObject("warning3", "已報考指考");
		}
		return view;
		
	
	}
	
	@RequestMapping(value = "/applyGSAT", method = RequestMethod.GET)
	public ModelAndView ApplyGSAT(Examinee examinee){
		ModelAndView view = new ModelAndView("applyGSAT");
		ModelAndView view2 = new ModelAndView("redirect:/apply");
		RegisterDAO RegisterDAO = (RegisterDAO)context.getBean("RegisterDAO");
		Examinee examinee_session = (Examinee)context.getBean("examinee");
		RegisterDAO.getExaminee(examinee_session);
		if(examinee_session.getGSATscore().getId()==1){
		view.addObject("name", examinee_session.getName());
	    view.addObject("ID",examinee_session.getID());
	    view.addObject("birth",examinee_session.getBirth());
	    view.addObject("phone", examinee_session.getPhone());
	    view.addObject("address",examinee_session.getAddress());
	    view.addObject("gender",examinee_session.getGender());
	    view.addObject("emercontact",examinee_session.getEmergencyContact());
	    view.addObject("emerrelation",examinee_session.getEmergencyContactRelationship());
	    view.addObject("emermobile",examinee_session.getEmergencyContactMobile());
	    view.addObject("message", examinee_session.getName());
	    examinee_session.setLowincome(examinee.getLowincome());
        if(examinee_session.getLowincome()==0){
      	  view.addObject("lowincome", "是");
      	  }
      	  else{
            view.addObject("lowincome", "否");  
      	  }
		return view;
		}
		else{
			view.addObject("message", examinee_session.getName());
			return view2;
		}
	
	}
	
	
	@RequestMapping(value = "/applyEL", method = RequestMethod.GET)
	public ModelAndView ApplyEL(Examinee examinee){
		ModelAndView view = new ModelAndView("applyEL");
		ModelAndView view2 = new ModelAndView("redirect:/apply");
		RegisterDAO RegisterDAO = (RegisterDAO)context.getBean("RegisterDAO");
		Examinee examinee_session = (Examinee)context.getBean("examinee");
		RegisterDAO.getExaminee(examinee_session);
		if(examinee_session.getELscore().getId()==1){
		view.addObject("name", examinee_session.getName());
	    view.addObject("ID",examinee_session.getID());
	    view.addObject("birth",examinee_session.getBirth());
	    view.addObject("phone", examinee_session.getPhone());
	    view.addObject("address",examinee_session.getAddress());
	    view.addObject("gender",examinee_session.getGender());
	    view.addObject("emercontact",examinee_session.getEmergencyContact());
	    view.addObject("emerrelation",examinee_session.getEmergencyContactRelationship());
	    view.addObject("emermobile",examinee_session.getEmergencyContactMobile());
	    view.addObject("message", examinee_session.getName());
	    if(examinee_session.getLowincome()==0){
	      	  view.addObject("lowincome", "是");
	      	  }
	      	  else{
	            view.addObject("lowincome", "否");  
	      	  }
		return view;
		}
		else{
			view.addObject("message", examinee_session.getName());
			return view2;
		}
	
	}
	
	@RequestMapping(value = "/applyAST", method = RequestMethod.GET)
	public ModelAndView ApplyAST(){
		ModelAndView view = new ModelAndView("applyAST");
		ModelAndView view2 = new ModelAndView("redirect:/apply");
		RegisterDAO RegisterDAO = (RegisterDAO)context.getBean("RegisterDAO");
		Examinee examinee_session = (Examinee)context.getBean("examinee");
		RegisterDAO.getExaminee(examinee_session);
		
		List<String> subject = new ArrayList<String>();
		
		subject.add("國文");
		
		subject.add("英文");
		
		subject.add("數甲");
		
		subject.add("數乙");
		
		subject.add("物理");
		subject.add("化學");
		subject.add("生物");
		subject.add("歷史");
		subject.add("地理");
        subject.add("公民");
		
	    view.addObject("subject",subject);
	    view.addObject("examinee",examinee_session);
	  
	    
	    
		if(examinee_session.getASTscore().getID()==1){
		view.addObject("name", examinee_session.getName());
	    view.addObject("ID",examinee_session.getID());
	    view.addObject("birth",examinee_session.getBirth());
	    view.addObject("phone", examinee_session.getPhone());
	    view.addObject("address",examinee_session.getAddress());
	    view.addObject("gender",examinee_session.getGender());
	    view.addObject("emercontact",examinee_session.getEmergencyContact());
	    view.addObject("emerrelation",examinee_session.getEmergencyContactRelationship());
	    view.addObject("emermobile",examinee_session.getEmergencyContactMobile());
	    if(examinee_session.getLowincome()==0){
	      	  view.addObject("lowincome", "是");
	      	  }
	      	  else{
	            view.addObject("lowincome", "否");  
	      	  }
		return view;
		}
		else{
			view.addObject("message", examinee_session.getName());
			return view2;
		}
	
	}
	
@RequestMapping(value = "/confirmapplyEL", method = RequestMethod.GET)
	
	public ModelAndView confirmApplyEL(Examinee examinee){
		ModelAndView view = new ModelAndView("redirect:/apply");
		ApplyDAO ApplyDAO = (ApplyDAO)context.getBean("ApplyDAO");
		Examinee examinee_session = (Examinee)context.getBean("examinee");
		RegisterDAO RegisterDAO = (RegisterDAO)context.getBean("RegisterDAO");
		RegisterDAO.getExaminee(examinee_session);
		ApplyDAO.newELscore(examinee_session);
		ApplyDAO.getELscore(examinee_session);
		ApplyDAO.applyEL(examinee_session);
		return view;
		
		
	}
	@RequestMapping(value = "/confirmapplyGSAT", method = RequestMethod.GET)
	
	public ModelAndView confirmApplyGSAT(Examinee examinee){
		ModelAndView view = new ModelAndView("redirect:/apply");
		ApplyDAO ApplyDAO = (ApplyDAO)context.getBean("ApplyDAO");
		Examinee examinee_session = (Examinee)context.getBean("examinee");
		RegisterDAO RegisterDAO = (RegisterDAO)context.getBean("RegisterDAO");
		RegisterDAO.getExaminee(examinee_session);
		ApplyDAO.newGSATscore(examinee_session);
		ApplyDAO.getGSATscore(examinee_session);
		ApplyDAO.applyGSAT(examinee_session);
		return view;
		
		
	}
	
	
	
@RequestMapping(value = "/confirmapplyAST", method = RequestMethod.POST)
	
	public ModelAndView confirmApplyAST(Examinee examinee){
		ModelAndView view = new ModelAndView("redirect:/apply");
		ApplyDAO ApplyDAO = (ApplyDAO)context.getBean("ApplyDAO");
		Examinee examinee_session = (Examinee)context.getBean("examinee");
		RegisterDAO RegisterDAO = (RegisterDAO)context.getBean("RegisterDAO");
		view.addObject("examinee", examinee_session);
		System.out.println("Here>>>>>"+examinee.getSubject());
		
		examinee_session.setSubject(examinee.getSubject());
		ArrayList<String> list = (ArrayList<String>) examinee.getSubject();
		String subject="";
		for(String s: list){
			subject += s + "\t";
		}
		System.out.print(subject);
		
		RegisterDAO.getExaminee(examinee_session);
		RegisterDAO.setSubject(examinee_session);
		ApplyDAO.newASTscore(examinee_session);
		ApplyDAO.getASTscore(examinee_session);
		ApplyDAO.applyAST(examinee_session);
		return view;
		
		
	}
	
	
}
