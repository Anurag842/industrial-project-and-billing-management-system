package com.iris.get19.pbms.controller;



import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.iris.get19.pbms.dao.DeveloperDao;
import com.iris.get19.pbms.dao.model.Developer;

@Controller

public class LoginController {
	
	@Autowired 
	private DeveloperDao developerDao;
	@Autowired
	HttpSession session;
	@RequestMapping(value="validateRole",method=RequestMethod.POST)
	public String validateRole(@RequestParam(value="id") Integer id,@RequestParam("pwd") String pass, Model map) {
		Developer devobj = developerDao.getDeveloper(id,pass);
		if(devobj==null){
			return "login";
		} else {
			if(devobj.getRole().equals("Admin")){
				map.addAttribute(devobj);
				session.setAttribute("userObj",devobj );
				return "adminDashboard";
			}
			else if(devobj.getRole().equals("DEO")){
				System.out.print("asdjkbfd +"+devobj);
				map.addAttribute("userObj",devobj);
				return "DataEntry";
			}
		}
		return null;
	}
}
