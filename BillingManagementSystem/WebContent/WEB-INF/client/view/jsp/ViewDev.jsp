<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<jsp:include page="header.jsp"/>
    <div class="wrapper">
       	<jsp:include page="sidenav.jsp"/>
        <div id="content">
           <jsp:include page="navbar.jsp"/>   
           <ol class="breadcrumb">
      		<li class="breadcrumb-item">
        	<a href="homePage">Admin</a>
      		</li>
      		<li class="breadcrumb-item active">Developer Allocation</li>
    		</ol>
    		<h2 align="center">Developer Allocation</h2><hr>
		   <div id="blankspace" >
			<f:form action="submitAllocate" modelAttribute="pObj" method="get">
				<div>
				<f:select path="pcObj.CONFIGURATION_ID" cssClass="form-control">
		 			<core:forEach items="${projCon}" var="pOb">
						<f:option value="${pOb.CONFIGURATION_ID}">${pOb.projectObj.projectName},${pOb.roleObj.roleName},${pOb.LOCATION}</f:option>
			 		</core:forEach>	 
				</f:select><br>
				</div>
				<div>
				<f:select path="dObj.developerId" cssClass="form-control">
		 			 <core:forEach items="${devl}" var="dOb">
						 <f:option value="${dOb.developerId}">${dOb.developerName}</f:option>
				 	 </core:forEach>
				</f:select><br>
				</div>
				<div class="form-group">
				    <button type="submit" class="btn btn-primary">Submit</button>
				 </div>
			</f:form>
		</div>
        </div>
    </div>
    <jsp:include page="footer.jsp"/>
</body>
</html>