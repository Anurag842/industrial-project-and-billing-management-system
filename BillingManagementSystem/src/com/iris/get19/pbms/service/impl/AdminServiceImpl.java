package com.iris.get19.pbms.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.iris.get19.pbms.dao.DeveloperDao;
import com.iris.get19.pbms.dao.ProjectDao;
import com.iris.get19.pbms.dao.model.DataEntryOperator;
import com.iris.get19.pbms.dao.model.Developer;
import com.iris.get19.pbms.dao.model.Project;
import com.iris.get19.pbms.dao.model.ProjectAllocation;
import com.iris.get19.pbms.dao.model.ProjectConfiguration;
import com.iris.get19.pbms.dao.model.Role;
import com.iris.get19.pbms.service.AdminService;
import com.iris.get19.pbms.dao.RoleDao;


@Component
@Repository(value="adminService")
@Transactional
public class AdminServiceImpl implements AdminService {

	@Autowired 
	private ProjectDao projectDao;
	
	@Autowired 
	private RoleDao roleDao;
	
	@Autowired
	private DeveloperDao developerDao;

	
	@Override
	public List<Project> getAllProject() {
		return projectDao.getAllProject();
	}

	@Override
	public List<Role> getAllRole() {
		return roleDao.getAllRole();
	}

	@Override
	public List<ProjectConfiguration> getAllProjectConfig() {
		return projectDao.getAllProjectConfig();
	}

	@Override
	public List<Developer> getAllDeveloper() {
		return developerDao.getAllDeveloper();
	}

	@Override
	public List<Developer> getDeveloper(List<Developer> dev) {
		List<Developer> devL = new ArrayList<Developer>();
		for(Developer d : dev)
		{
			System.out.println("Dev :"+d);
			if(d.getRole().equals("Developer")) {
				
				devL.add(d);

				System.out.println("indside for"+devL.size());
			}
		}
		return devL;
	}

	@Override
	public boolean setProjectConfig(ProjectConfiguration pObj) {
		boolean save = projectDao.setProjectConfig(pObj);
		return save;
	}

	@Override
	public boolean setProjectAllocate(ProjectAllocation pObj) {
		boolean save = projectDao.setProjectAllocate(pObj);
		return save;
	}

	@Override
	public List<ProjectAllocation> getAllAllocate() {
		return developerDao.getAllAllocate();
	}

	@Override
	public ProjectAllocation getConfig(int developerId) {
		return developerDao.getConfig(developerId);
	}

	@Override
	public DataEntryOperator getBill(int developerId, String month) {
		return developerDao.getBill(developerId, month);
	}

	@Override
	public double getBill(double perHourBilling, DataEntryOperator deo) {
		double halfDay=deo.gethalfDay()*4.5;
		double fullDay=deo.getfullDay()*9;
		double bill=((halfDay*perHourBilling)+(fullDay*perHourBilling));
		return bill;
	}

	@Override
	public List<ProjectConfiguration> getAllConfigId(int id) {
		return projectDao.getAllConfigId(id);
	}

	@Override
	public Project getProjectById(int id) {
		return projectDao.getProjectById(id);
	}

	@Override
	public String getProjectName(int id) {
		Project p = projectDao.getProjectById(id);
		System.out.println(p);
		String name = p.getProjectName();
		return name;
	}

	@Override
	public boolean updateProjectConfig(ProjectConfiguration pObj) {
		boolean save = projectDao.updateProjectConfig(pObj);
		return save;
	}

	
}
