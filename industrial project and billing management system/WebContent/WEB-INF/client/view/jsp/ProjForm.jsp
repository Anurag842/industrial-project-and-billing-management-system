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
      		<li class="breadcrumb-item active">Project Billing</li>
    		</ol>
		   <div id="blankspace" >
			<h2 align="center">Project Billing</h2><hr>
		<form action="BillProj"  method="get">
		<label>Projects:</label>
		<div>
		<select name="projectId" class="form-control">
		 	 <core:forEach items="${pList}" var="pOb">
				<option value="${pOb.projectId}" >${pOb.projectName}</option>
			 </core:forEach>
		</select><br>
		</div>
		<div  >
			<label>Month :</label> <br>
			<input type="text" name="month" size="30" class="form-control" placeholder="Select Year" required/><br>
			
		</div>
		<label>Year :</label>
		<input type="number" name="year" size="30" class="form-control" placeholder="Select Year" required/><br>
		<div class="form-group">
			<button type="submit" class="btn btn-primary">Submit</button>
		</div>
	</form>
	</div>
        </div>
    </div>
    <jsp:include page="footer.jsp"/>
</body>
</html>