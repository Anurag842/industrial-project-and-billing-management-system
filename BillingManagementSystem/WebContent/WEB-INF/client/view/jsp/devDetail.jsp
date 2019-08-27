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
    		<li class="breadcrumb-item active">
   				Developer Billing 			
       		</li>
  	   </ol>
  	  <h3>Developer Billing</h3><hr>
	<f:form action="" modelAttribute="de" method="get">
	<h5>Developer ID : ${de}</h5>
	<h5> Name : ${name}</h5>
	<h5>Month : ${mo}</h5>
	<h5>Bill : ${bill}</h5>

	</f:form>
</body>
</html>