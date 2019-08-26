package com.iris.get19.pbms.controller;


import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.iris.get19.pbms.dao.DeveloperDao;
import com.iris.get19.pbms.dao.ProjectDao;
import com.iris.get19.pbms.dao.model.DataEntryOperator;
import com.iris.get19.pbms.dao.model.Developer;
import com.iris.get19.pbms.dao.model.Project;
import com.iris.get19.pbms.dao.model.ProjectAllocation;
import com.iris.get19.pbms.dao.model.ProjectConfiguration;
import com.iris.get19.pbms.dao.model.Role;
import com.iris.get19.pbms.service.AdminService;
@Controller
public class AdminController {
	
	@Autowired
	private AdminService adminService;
	
	@Autowired
	private DeveloperDao developerDao;
	
	@Autowired
	private ProjectDao projectDao;
	
	
	@RequestMapping(value= {"AddProj"},method=RequestMethod.GET)
	public String viewAdmin(ModelMap map) {
		List<ProjectConfiguration> projCon = adminService.getAllProjectConfig();
		map.addAttribute("configList", projCon);
		List<Project> projectList = adminService.getAllProject();
		ProjectConfiguration projectObj = new ProjectConfiguration();
		Role roleObj = new Role();
		List<Role> rolesList = adminService.getAllRole();
		map.addAttribute("pObj", projectObj);
		map.addAttribute("rObj",roleObj);
		map.addAttribute("proj", projectList);
		map.addAttribute("role",rolesList);
		return "AddProject";
	}
	
	@RequestMapping(value= {"AddDev"},method=RequestMethod.GET)
	public String addDev(ModelMap map)
	{
		ProjectAllocation paObj=new ProjectAllocation();
		map.addAttribute("pObj", paObj);
		List<ProjectConfiguration> projCon = adminService.getAllProjectConfig();
		map.addAttribute("projCon", projCon);
		List<Developer> dev= adminService.getAllDeveloper();
		List<Developer>	devL = adminService.getDeveloper(dev);
		map.addAttribute("devl",devL);
		return "ViewDev";
	}
	
	@RequestMapping(value= {"submitConfig"},method=RequestMethod.GET)
	public String submitConfig(@ModelAttribute(name="pObj") ProjectConfiguration pObj, ModelMap map) {
		boolean saved = adminService.setProjectConfig(pObj);
		if(saved) {
			return "adminDashboard";
		} else {
			return "AddProject";
		}
	}
	
	@RequestMapping(value= {"updateConfig"},method=RequestMethod.GET)
	public String updateConfig(@ModelAttribute(name="pObj") ProjectConfiguration pObj, ModelMap map) {
		boolean saved = adminService.updateProjectConfig(pObj);
		System.out.println("In update Config");
		System.out.println("In update Config"+pObj);
		if(saved) 
		{
			System.out.println("if");
			return "adminDashboard";
		}
		else 
		{
			System.out.println("In else");
			return "AddProject";
		}
	}
	@RequestMapping(value= {"submitAllocate"},method=RequestMethod.GET)
	public String submitAllocate(@ModelAttribute(name="pObj") ProjectAllocation pObj, ModelMap map) {
		boolean saved = adminService.setProjectAllocate(pObj);
		if(saved) {
			return "Admin";
		} else {
			return "ViewDev";
		}
	}
	
	@RequestMapping(value= {"DevBilling"},method=RequestMethod.GET)
	public String DevBill(ModelMap map)
	{
		List<ProjectAllocation> dList = adminService.getAllAllocate();
		map.addAttribute("devL", dList);
		return "DevForm";
	}
	
	@RequestMapping(value= {"projectBilling"},method=RequestMethod.GET)
	public String ProjBill(ModelMap map)
	{
		List<Project> pList = adminService.getAllProject();
		map.addAttribute("pList", pList);
		return "ProjForm";
	}
	
	@RequestMapping(value= {"Bill"},method=RequestMethod.GET)
	public String DevBills(@RequestParam String month,@RequestParam int developerId,ModelMap map)
	{
		ProjectAllocation configObj = adminService.getConfig(developerId);
		double perHourBilling=configObj.getPcObj() .getPER_HOUR_BILLING();
		String name = developerDao.getDeveloperById(developerId);
		map.addAttribute("name", name);
		DataEntryOperator deo=adminService.getBill(developerId, month);
		System.out.println(deo.getfullDay());
		double bill = adminService.getBill(perHourBilling,deo);
		map.addAttribute("bill",bill);
		map.addAttribute("de", developerId);
		map.addAttribute("mo",month);
		return "devDetail";
		
	}
	@RequestMapping(value= {"BillProj"},method=RequestMethod.GET)
	public String billingProject(@RequestParam(name="projectId") int id,@RequestParam(name="month") String month,ModelMap map) {
		try {
		System.out.println(id + month);
		double bill = 0;
		List<ProjectConfiguration> projConfigList=adminService.getAllConfigId(id);
		
		String name = adminService.getProjectName(id);
		map.addAttribute("name",name);
		map.addAttribute("month", month);
		int count = 0;
		List<ProjectAllocation> obj = new ArrayList<ProjectAllocation>();
		for(ProjectConfiguration configObj: projConfigList)
		{
			int cid = configObj.getCONFIGURATION_ID();
			int perHourBilling = configObj.getPER_HOUR_BILLING();
			ProjectAllocation proAllocate = developerDao.getProAllocationObj(cid);
			int developerId = proAllocate.getdObj().getDeveloperId();
			DataEntryOperator deo=developerDao.getBill(developerId, month);
			double halfDay=deo.gethalfDay()*4.5;
			double fullDay=deo.getfullDay()*9;
			bill+=(halfDay*perHourBilling+fullDay*perHourBilling);
			count++;
			obj.add(proAllocate);
		}
		map.addAttribute("bill", bill);
		map.addAttribute("count", count);
		map.addAttribute("devl", obj);
		return "ProjectBilling";
		}
		catch(Exception e) {
			return "error";
		}
	}
	@RequestMapping(value= {"homePage"},method=RequestMethod.GET)
	public String homePage() {
		return "adminDashboard";
	}
	
	/*@ExceptionHandler(Exception.class)
	public ModelAndView adminExceptionHandle(Exception ex) {
		 ModelAndView modelAndView = new ModelAndView("errorException");
		    modelAndView.addObject("message", ex);
		    return modelAndView;
		}*/
	

	@RequestMapping(value="/updateOption/{CONFIGURATION_ID}",method=RequestMethod.GET)
	public String updateConfiguration(@PathVariable int CONFIGURATION_ID,ModelMap map)
	{
			ProjectConfiguration pcOb=projectDao.getProjectConfig(CONFIGURATION_ID);
			System.out.println("In updateOption"+pcOb.getCONFIGURATION_ID()+" "+pcOb);
			map.addAttribute("pcOb",pcOb);
		 	List<Project> projectList = adminService.getAllProject();
			Role roleObj = new Role();
			List<Role> rolesList = adminService.getAllRole();
			map.addAttribute("rObj",roleObj);
			map.addAttribute("proj", projectList);
			map.addAttribute("role",rolesList);
	     return "getUpdateProjectConfig";
	                
	}
	
	@RequestMapping(value="/deleteOption/{CONFIGURATION_ID}",method=RequestMethod.GET)
	public String deleteConfiguration(@PathVariable int CONFIGURATION_ID,ModelMap map)
	{
			ProjectConfiguration pcOb=projectDao.getProjectConfig(CONFIGURATION_ID);
			boolean del = projectDao.deleteProjectConfig(CONFIGURATION_ID);
			if(del)
				return "AddProject";
			else
				return "admin";
	                
	}
}
