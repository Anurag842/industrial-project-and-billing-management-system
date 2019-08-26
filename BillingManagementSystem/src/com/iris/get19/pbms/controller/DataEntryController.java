package com.iris.get19.pbms.controller;




import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.iris.get19.pbms.dao.model.DataEntryOperator;
import com.iris.get19.pbms.dao.model.Developer;
import com.iris.get19.pbms.dao.model.ProjectConfiguration;
import com.iris.get19.pbms.service.DataEntryService;

@Controller
public class DataEntryController {
	
	

	@Autowired
	private DataEntryService dataEntryService;
	
	@RequestMapping(value="mark",method=RequestMethod.GET)
	public String marks(Model map)
	{
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
	public String data() {
		return "DataEntry";
	}
 	
	@RequestMapping(value="submitData",method=RequestMethod.GET)
	public String attendance(@ModelAttribute(name="dataObj") DataEntryOperator dataObj,ModelMap map)
	{	
		Developer d =dataObj.getDevObj();
		boolean saved=dataEntryService.setAttendance(dataObj);
		if(saved) {
			return "DataEntry";
		}
		else {
			return "MarkAttendance";
		}
	}
}
