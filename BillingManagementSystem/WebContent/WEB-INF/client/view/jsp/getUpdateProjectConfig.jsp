<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<jsp:include page="header.jsp"/>
	
	<f:form action="updateConfig" modelAttribute="pcOb" method="get">
				
				<f:select path="projectObj.projectId" cssClass="form-control">
				 	 <core:forEach items="${proj}" var="prOb">
						<f:option value="${prOb.projectId}">${prOb.projectName}</f:option>
					 </core:forEach>
				</f:select><br>
				
				<div>
					<f:select path="roleObj" cssClass="form-control">
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
				</div>	
				<!--  <label>Per Hour Billing: </label><f:input path="PER_HOUR_BILLING"/><br>-->
				<div class="form-group">
	     			<label>Per Hour Billing: </label><f:input path="PER_HOUR_BILLING" size="30" cssClass="form-control" placeholder="Enter Per Hour Billing" />			   
				 </div>
				
				<div class="form-group">
				    <button type="submit" class="btn btn-primary">Submit</button>
				 </div>
			</f:form>
	

 <jsp:include page="footer.jsp"/>
</body>
</html>