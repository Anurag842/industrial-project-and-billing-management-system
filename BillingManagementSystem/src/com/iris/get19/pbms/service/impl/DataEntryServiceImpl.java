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
import com.iris.get19.pbms.dao.model.ProjectConfiguration;
import com.iris.get19.pbms.service.DataEntryService;


@Component
@Repository(value="dataEntryService")
@Transactional
public class DataEntryServiceImpl implements DataEntryService {

	@Autowired
	private DeveloperDao developerDao;
	
	@Autowired
	private ProjectDao projectDao;

	@Override
	public List<Developer> getAllDeveloper() {
		return developerDao.getAllDeveloper();
	}

	@Override
	public List<Developer> getDeveloper(List<Developer> devl) {
		List<Developer> devL = new ArrayList<Developer>();
		for(Developer d : devl)
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
	public List<ProjectConfiguration> getAllProjectConfig() {
		return projectDao.getAllProjectConfig();
	}

	@Override
	public boolean setAttendance(DataEntryOperator dataObj) {
		boolean save = developerDao.setAttendance(dataObj);
		return save;
	}
}
