<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page isELIgnored="false" %>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
	<head>
		<title>Login</title>
	    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
	    <style type="text/css">
	        .errormsg {
	            color: red;
	        }
	    </style>
	</head>
	<body>
		<div class="container">
		    <h2 align="center" class="text-info">User Form Validation</h2>
		    <hr />
		    <div>&nbsp;</div>

	    	<form:form action="login" method="POST" modelAttribute="userform">
	    		 <div class="form-group">
	     			<label>Id:</label><form:input path="id" size="30" cssClass="form-control" placeholder="Enter Id" />			   
				    <small><form:errors path="id" cssClass="errormsg" /></small>
				 </div>
				 
				 <div class="form-group">
	     			<label>Name:</label><form:input path="name" size="30" cssClass="form-control" placeholder="Enter Name" />			   
				    <small><form:errors path="name" cssClass="errormsg" /></small>
				 </div>
				 <div class="form-group">
	     			<label>Age:</label><form:input path="age" size="30" cssClass="form-control" placeholder="Enter Age" />			   
				    <small><form:errors path="age" cssClass="errormsg" /></small>
				 </div>
	    		 <div class="form-group">
	     			<label>Email:</label><form:input path="email" size="30" cssClass="form-control" placeholder="Enter email" />			   
				    <small><form:errors path="email" cssClass="errormsg" /></small>
				 </div>
				 <div class="form-group">
				    <label>Password:</label><form:password path="password" size="30" cssClass="form-control" placeholder="Enter password" />
				    <small><form:errors path="password" cssClass="errormsg" /></small>
				 </div>
				 <div class="form-group">
	     			<label>Contact:</label><form:input path="ContactNumber" size="30" cssClass="form-control" placeholder="Enter Contact" />			   
				    <small><form:errors path="ContactNumber" cssClass="errormsg" /></small>
				 </div>
				 <div class="form-group">
				    <button type="submit" class="btn btn-primary">Submit</button>
				 </div>
	    	</form:form>
	    </div>
	</body>
</html>