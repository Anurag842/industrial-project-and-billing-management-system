<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<jsp:include page="header.jsp"/>
<div class="wrapper">    	
	<!--<jsp:include page="sidenav.jsp"/>-->
	<div id="content">      
       <!--<jsp:include page="navbar.jsp"/>-->  
       <div class="container"> 
       <h5>Edit Project Configuration</h5>       
       <ol class="breadcrumb">
    		<li class="breadcrumb-item">
       			<a href="http://localhost:9696/BillingSystem/homePage">Admin</a>
    		</li>
    		<li class="breadcrumb-item">
    			<a href="http://localhost:9696/BillingSystem/AddProj">Project Configuration</a>
    		</li>
    		<li class="breadcrumb-item active">
    			Edit Configuration
    		</li>
  	   </ol>
	<f:form action="${pageContext.request.contextPath}/updateConfig" modelAttribute="pcOb" method="post">
				<label>Projects:</label>
				<f:select path="projectObj.projectId" cssClass="form-control">
				 	 <core:forEach items="${proj}" var="prOb">
						<f:option value="${prOb.projectId}">${prOb.projectName}</f:option>
					 </core:forEach>
				</f:select><br>
				
				<div>
				<label>Role:</label>
					<f:select path="roleObj.roleId" cssClass="form-control">
					 	 <core:forEach items="${role}" var="rOb">
							<f:option value="${rOb.roleId}">${rOb.roleName} </f:option>
						 </core:forEach>
					</f:select><br>
				</div>
				
				<label>Location:</label>
				<div>
					<div class="custom-control custom-radio">	
						<f:radiobutton path="LOCATION" value="Onsite" class="custom-control-input" id="Onsite"/>
						<label class="custom-control-label" for="Onsite">Onsite</label>
					</div>
					<div class="custom-control custom-radio">
						<f:radiobutton path="LOCATION" value="Offshore" class="custom-control-input" id="Offshore"/>
						<label class="custom-control-label" for="Offshore">Offshore</label>
					</div>
				</div><br>	
				<!--  <label>Per Hour Billing: </label><f:input path="PER_HOUR_BILLING"/><br>-->
				<div class="form-group">
	     			<label>Per Hour Billing: </label><f:input path="PER_HOUR_BILLING" size="30" cssClass="form-control" placeholder="Enter Per Hour Billing" />
	     			<f:hidden path="CONFIGURATION_ID"/>			   
				 </div>
				
				<div class="form-group">
				    <input type="submit" class="btn btn-primary" value="Submit"/>
				 </div>
			</f:form>
	</div>
      </div>
     </div>
  <jsp:include page="footer.jsp"/>


</body>
</html>