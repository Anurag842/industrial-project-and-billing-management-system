<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>

<jsp:include page="header.jsp"/>
<div class="wrapper">
	<%! int count =0; %>    	
	<jsp:include page="sidenav.jsp"/>
	<div id="content">      
       <jsp:include page="navbar.jsp"/>   
       <ol class="breadcrumb">
    		<li class="breadcrumb-item">
       			<a href="homePage">Admin</a>
    		</li>
    		<li class="breadcrumb-item active">
    			Project Configuration
    		</li>
  	   </ol>
  	   		<core:if test="${param.msg ne null}">
	    		<div class="alert alert-success">
	    			${param.msg}
	    		</div>
    		</core:if>	
  		<h2 align="center">Project Configuration</h2>
  		
  		<hr>
  		  <div class="container">
    <div class="mb-4" id="accordion" role="tablist" aria-multiselectable="true">
      <div class="card">
        <div class="card-header" role="tab" id="headingOne">
          <h5 class="mb-0">
            <button class="btn btn-info btn-link collapsed" data-toggle="collapse" data-parent="#accordion" data-target="#collapseOne" aria-expanded="false" id="btnClick">Add Project Configuration</button>
          </h5>
        </div>

        <div id="collapseOne" class="collapse show" role="tabpanel" aria-labelledby="headingOne" data-parent="#accordion">
          <div class="card-body">
            
            <f:form action="submitConfig" modelAttribute="pObj" method="get" id="projectform">
			<label>Projects:</label>
			<f:select path="projectObj.projectId" cssClass="form-control">
			 	 <core:forEach items="${proj}" var="pOb">
					<f:option value="${pOb.projectId}">${pOb.projectName}</f:option>
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
					<f:radiobutton path="LOCATION" value="Offshore" class="custom-control-input" id="Offshore" checked = "checked"/>
					<label class="custom-control-label" for="Offshore">Offshore</label>
				</div>
			</div>	
			<br><div class="form-group">
	    			<label>Per Hour Billing  : </label> <f:input path="PER_HOUR_BILLING" size="30" cssClass="form-control" placeholder="Enter Per Hour Billing" required="required"/>			   
			 </div>
			
			<div class="form-group">
			    <button type="submit" class="btn btn-primary">Submit</button>
			 </div>
			</f:form>
          </div>
        </div>
      </div>
    </div>
  </div>
  		<!--<h5>Allocated Projects</h5>-->
   		<div id="blankspace" >   
   		<div class="table-responsive-sm">
   		<table align="center" border="1px" class="table table-striped table-bordered table-hover ">
   	    <caption>List of Projects Allocated</caption>
   		<thead class=thead-dark>
   		<tr align="center">
   			<th scope="col">Sr. no</th>
   			<th scope="col">Configuration Id</th>
   			<th scope="col">Project Name</th>
   			<th scope="col">Role</th>
   			<th scope="col">Location</th>
   			<th scope="col">Per Hour Billing <i class="fas fa-dollar-sign"></th>	
   			<th colspan="2" scope="col">Option</th>
   		</tr>
   		</thead>
   		<tbody>
   		<core:forEach items="${configList}" var="cOb">
		<tr align="center">
			<%count=count+1;%>
			<th scope="row"><% out.println(count); %></th>
			<td>${cOb.getCONFIGURATION_ID()}</td>
			<td>${cOb.getProjectObj().getProjectName() }</td>
			<td>${cOb.getRoleObj().getRoleName() }</td>
			<td>${cOb.getLOCATION() }</td>
			<td>${cOb.getPER_HOUR_BILLING() }</td>
			<td> <a href="${pageContext.request.contextPath}/updateOption/${cOb.CONFIGURATION_ID}" ><span style="color: green">Edit</span></a></td>
			<td><a href="${pageContext.request.contextPath}/deleteOption/${cOb.CONFIGURATION_ID}" ><span style="color: red">Delete</span></a></td>
		</tr>
		</core:forEach>
		</tbody>
   </table></div><hr>
 
   <!--  <h5>Create New Project Configuration</h5>-->
   	<!--<f:form action="submitConfig" modelAttribute="pObj" method="get">
		<label>Projects:</label>
		<f:select path="projectObj.projectId" cssClass="form-control">
		 	 <core:forEach items="${proj}" var="pOb">
				<f:option value="${pOb.projectId}">${pOb.projectName}</f:option>
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
				<f:radiobutton path="LOCATION" value="Offshore" class="custom-control-input" id="Offshore" checked = "checked"/>
				<label class="custom-control-label" for="Offshore">Offshore</label>
			</div>
		</div>	
		<br><div class="form-group">
    			<label>Per Hour Billing  : </label> <f:input path="PER_HOUR_BILLING" size="30" cssClass="form-control" placeholder="Enter Per Hour Billing" required="required"/>			   
		 </div>
		
		<div class="form-group">
		    <button type="submit" class="btn btn-primary">Submit</button>
		 </div>
	</f:form>-->
   </div>
      </div>
  </div>
  <jsp:include page="footer.jsp"/>
  <script>
	$("#projectform").hide();
	
	
	$("#btnClick").click(function(){
		$("#projectform").show();	  
	});
	
</script>
  
</body>
</html>
