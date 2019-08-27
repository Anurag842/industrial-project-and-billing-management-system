package com.iris.get19.pbms.controller;




import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.iris.get19.pbms.dao.model.DataEntryOperator;
import com.iris.get19.pbms.dao.model.Developer;
import com.iris.get19.pbms.dao.model.ProjectConfiguration;
import com.iris.get19.pbms.service.DataEntryService;

@Controller
public class DataEntryController {
	
	@Autowired
	private DataEntryService dataEntryService;
	

	@Autowired
	HttpSession session;
	

	
	public boolean checkSession(ModelMap map) {
		if(session.getAttribute("userObj")==null) {
			map.addAttribute("msg","Session doesnt exist.. Login First");
			return true;
		}
		return false;
		
	}
	
	@RequestMapping(value="mark",method=RequestMethod.GET)
	public String marks(ModelMap map)
	{
		if(checkSession(map)) {
			return "login";
		}
		List<Developer> devl=dataEntryService.getAllDeveloper();
		List<Developer>	devL = dataEntryService.getDeveloper(devl);
		map.addAttribute("devObj", devL);
		List<ProjectConfiguration> projCon = dataEntryService.getAllProjectConfig();
		map.addAttribute("projCon", projCon);
		DataEntryOperator dataObj=new DataEntryOperator();
		map.addAttribute("dataObj", dataObj);
		return "MarkAttendance";
	}
	
	@RequestMapping(value="dataHome", method=RequestMethod.GET)
	public String data(ModelMap map) {
		if(checkSession(map)) {
			return "login";
		}
		return "DataEntry";
	}
 	
	@RequestMapping(value="submitData",method=RequestMethod.GET)
	public ModelAndView attendance(@ModelAttribute(name="dataObj") DataEntryOperator dataObj,ModelMap map)
	{
		if(checkSession(map)) {
			return new ModelAndView("login");
		}
		Developer d =dataObj.getDevObj();
		boolean saved=dataEntryService.setAttendance(dataObj);
		if(saved) {
			ModelAndView mv=new ModelAndView("redirect:http://localhost:9696/BillingSystem/mark");
			mv.addObject("msg","Attendence Marked Sucessfully..");
			return mv;
		}
		else {
			ModelAndView mv=new ModelAndView("redirect:http://localhost:9696/BillingSystem/mark");
			mv.addObject("msg","Error in marking attendence..");
			return mv;
		}
	}
}
