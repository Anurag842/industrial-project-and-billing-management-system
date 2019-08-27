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
      		<li class="breadcrumb-item active">Developer Billing</li>
    		</ol>
    		<h2 align="center">Developer Billing</h2><hr>
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
		
		<div  >
			<label>Month :</label> <br>
			<select   Class="form-control">
				<option value="january">January</option>
				<option value="february">February</option>
				<option value="march">March</option>
				<option value="april">April</option>
				<option value="may">May</option>
				<option value="june">June</option>
				<option value="july">July</option>
				<option value="august">August</option>
				<option value="september">September</option>
				<option value="october">October</option>
				<option value="november">November</option>
				<option value="december">December</option>
			</select><br>
		</div>
		
		<div>
		<label>Year :</label>
		<input type="text" name="year" size="30" class="form-control" placeholder="Select Year" required/><br>
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