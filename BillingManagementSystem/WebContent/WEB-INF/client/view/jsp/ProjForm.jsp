<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<jsp:include page="header.jsp"/>
    <div class="wrapper">
       	<jsp:include page="sidenav.jsp"/>
        <div id="content">
           <jsp:include page="navbar.jsp"/>   
           
		   <div id="blankspace" >
	<form action="BillProj"  method="get">
		<select name="projectId">
		 	 <core:forEach items="${pList}" var="pOb">
				<option value="${pOb.projectId}" >${pOb.projectName}</option>
			 </core:forEach>
		</select><br>
		<label>Month :</label>
		<input type="text" name="month"/><br>
		
		<input type="submit" value="submit">
	</form>
	</div>
        </div>
    </div>
    <jsp:include page="footer.jsp"/>
</body>
</html>