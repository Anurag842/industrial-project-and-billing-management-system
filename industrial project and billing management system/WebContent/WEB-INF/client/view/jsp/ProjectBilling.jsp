<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>
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
    			Project Billing
    		</li>
  	   </ol>
  	<h3>Project Billing</h3><hr>
	<h5>Billing for ${name} of ${month} is :</h5>
	<h4><strong>${bill} </strong></h4>
	<hr>
	<h5>No. of Developers : <strong>${count}</strong></h5>
	
	<div>
		<table "align="center" border="1px" class="table table-striped table-bordered table-hover ">
			<thead class=thead-dark>
				<tr align="center">
					<th>Name</th>
					<th>Role</th>
					<th>Per Hour Billing  <i class="fas fa-dollar-sign"> </th>
				</tr>
			</thread>		
		<tbody>
		 <core:forEach items="${devl}" var="pOb">
			<tr align="center">
				<td>${pOb.getdObj().getDeveloperName()}</td>
				<td>${pOb.getPcObj().getRoleObj().getRoleName() }</td>
				<td>${pOb.getPcObj().getPER_HOUR_BILLING() }</td>
			</tr>
		</core:forEach>
		</tbody>
		</table>
	</div>
</body>
</html>