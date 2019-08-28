<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<jsp:include page="header2.jsp"/>
    <div class="wrapper">
       	<jsp:include page="sidenav2.jsp"/>
        <div id="content">
        <jsp:include page="navbar2.jsp"/>
        <ol class="breadcrumb">
    		<li class="breadcrumb-item">
       			<a href="http://localhost:9696/BillingSystem/dataHome">Data Operator</a>
    		</li>
    		<li class="breadcrumb-item active">
    			Mark Attendance
    		</li>
  	   </ol>
  	   		<core:if test="${param.msg ne null}">
	    		<div class="alert alert-success">
	    			${param.msg}
	    		</div>
    		</core:if>	    
	<div>
	<h3>Mark Attendance</h3>
	<hr>
	<f:form action="submitData" modelAttribute="dataObj" method="get">
		<div>
		<label>Developer Name :</label>
		<f:select path="devObj.developerId" cssClass="form-control">
 	 		<core:forEach items="${devObj}" var="dOb">
 	 			<f:option value="${dOb.developerId}">${dOb.developerName}</f:option>
	 		</core:forEach>
		</f:select><br>
		</div>
		
		<div>
		<label>Month :</label>
		<f:select path="month" cssClass="form-control">
			<f:option value="january">January</f:option>
			<f:option value="february">February</f:option>
			<f:option value="march">March</f:option>
			<f:option value="april">April</f:option>
			<f:option value="may">May</f:option>
			<f:option value="june">June</f:option>
			<f:option value="july">July</f:option>
			<f:option value="august">August</f:option>
			<f:option value="september">September</f:option>
			<f:option value="october">October</f:option>
			<f:option value="november">November</f:option>
			<f:option value="december">December</f:option>
		</f:select>
		<br>
		</div>
		
		<div>
		<label>Year :</label>
		<f:select path="year" id="year" cssClass="form-control">
			<f:option value="">Select year</f:option>
		</f:select>
		<script type="text/javascript">
			for(y=2015;y<2029;y++){
				var optn = document.createElement("OPTION");
				optn.text=y;
				optn.value=y;
				
				if(y==2019){
					optn.selected=true;
				}
				document.getElementById('year').options.add(optn);
			}
		</script>
		</div>
		<br>
		<div>
		<label>Half day:</label>
		<f:input path="halfDay" size="30" cssClass="form-control" placeholder="Enter Number of Half Days" /><br>
		</div>
		
		<div>	
			<label>Full Day:</label>
			<f:input path="fullDay" size="30" cssClass="form-control" placeholder="Enter Number of Full Days"/><br>
		</div>
		
		<div class="form-group">
		    <button type="submit" class="btn btn-primary">Submit</button>
		 </div>
	</f:form>
	</div>
  	<jsp:include page="footer2.jsp"/>
   	</div>
   </div>>
</body>
</html>	