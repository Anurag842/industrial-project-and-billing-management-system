<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	 <h1>Billing for ${name} of ${month} is :</h1>
	<h2>${bill}</h2>
	<h1>No. of Developers :</h1>
	<h2>${count}</h2>
	<div>
		<table border="1px">
			<tr>
				<th>Name</th>
				<th>Role</th>
				<th>Per Hour Billing</th>
			</tr>
		 <core:forEach items="${devl}" var="pOb">
			<tr align="center">
				<td>${pOb.getdObj().getDeveloperName()}</td>
				<td>${pOb.getPcObj().getRoleObj().getRoleName() }</td>
				<td>${pOb.getPcObj().getPER_HOUR_BILLING() }</td>
			</tr>
		</core:forEach>
		</table>
	</div>
</body>
</html>