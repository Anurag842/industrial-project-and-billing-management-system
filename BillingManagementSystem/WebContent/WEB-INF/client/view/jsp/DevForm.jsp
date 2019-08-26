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
		<form action="Bill"  method="get">
		<div>
		<label>Developer Name :</label>
		<select name="developerId" class="form-control" >
		 	 <core:forEach items="${devL}" var="pOb">
				<option value="${pOb.dObj.developerId}" >${pOb.dObj.developerName}</option>
			 </core:forEach>
		</select><br>
		</div>
		<div>
		<label>Month :</label>
		<input type="text" name="month" size="30" class="form-control" placeholder="Select Month" /><br>
		</div>
		
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