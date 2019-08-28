package com.iris.get19.pbms.dao;

import java.util.List;

import com.iris.get19.pbms.dao.model.Project;
import com.iris.get19.pbms.dao.model.ProjectAllocation;
import com.iris.get19.pbms.dao.model.ProjectConfiguration;

public interface ProjectDao {

		public List<Project> getAllProject();
		public Project getProjectById(int projectId);
		public boolean setProjectConfig(ProjectConfiguration obj);
		public ProjectConfiguration getProjectConfig(int id);
		public boolean setProjectAllocate(ProjectAllocation pObj);
		public List<ProjectConfiguration> getAllProjectConfig();
		public List<ProjectConfiguration> getAllProjectConfigNotAllocated();
		public List<ProjectConfiguration> getAllConfigId(int id);
		public boolean updateProjectConfig(ProjectConfiguration pObj);
		public boolean deleteProjectConfig(int id);
}
