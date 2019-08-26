<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
</head>
<body>
	<div align="center">
	<h1>welcome Data entry operator</h1>
	<hr>
		<f:form action="submitData" modelAttribute="dataObj" method="get">
			<label>Developer Name :</label>
			<f:select path="devObj.developerId">
		 	 <core:forEach items="${devObj}" var="dOb">
				<f:option value="${dOb.developerId}">${dOb.developerName}</f:option>
			 </core:forEach>
		</f:select><br>
		<label>Month :</label>
			<f:select path="month">
				<f:option value="january">january</f:option>
				<f:option value="february">february</f:option>
				<f:option value="march">march</f:option>
				<f:option value="april">april</f:option>
				<f:option value="may">may</f:option>
				<f:option value="june">june</f:option>
				<f:option value="july">july</f:option>
				<f:option value="august">august</f:option>
				<f:option value="september">september</f:option>
				<f:option value="october">october</f:option>
				<f:option value="november">november</f:option>
				<f:option value="december">december</f:option>
			</f:select>
			<br>
			<label>year :</label>
			<f:select path="year" id="year">
				<f:option value="">Select year</f:option>
			</f:select>
			<script type="text/javascript">
				for(y=2015;y<2029;y++)
				{
					var optn = document.createElement("OPTION");
					optn.text=y;
					optn.value=y;
					
					if(y==2019)
					{
						optn.selected=true;
					}
					document.getElementById('year').options.add(optn);
				}
			</script>
			<label>Half day:</label>
			<f:input path="halfDay" /><br>
			<label>Full day:</label>
			<f:input path="fullDay"/><br>
			<input type="submit" value="submit">
		</f:form>
	</div>
</body>
</html>