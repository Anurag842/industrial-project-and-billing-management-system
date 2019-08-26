package com.iris.get19.pbms.service;

import java.util.List;

import com.iris.get19.pbms.dao.model.DataEntryOperator;
import com.iris.get19.pbms.dao.model.Developer;
import com.iris.get19.pbms.dao.model.ProjectConfiguration;

public interface DataEntryService {

	List<Developer> getAllDeveloper();

	List<Developer> getDeveloper(List<Developer> devl);

	List<ProjectConfiguration> getAllProjectConfig();

	boolean setAttendance(DataEntryOperator dataObj);

}
