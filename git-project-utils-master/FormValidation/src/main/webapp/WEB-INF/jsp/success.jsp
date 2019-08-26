<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>Welcome</title>
	    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">	    
	</head>
	<body>
		<div class="container">
	    	<h2 align="center" class="text-muted">Login Successful</h2>
	    	<hr />
	    	<div>&nbsp;</div>
	    	
	        <h4 align="center">Welcome <span class="text-info">${userform.name}</span>! You're successfully logged in.</h4>
	        <h4 align="center">Your Id is: <span class="text-info">${userform.id}</span></h4>
	        <h4 align="center">Your Email is: <span class="text-info">${userform.email}</span></h4>
	        <h4 align="center">Your Password is: <span class="text-info">${userform.password}</span></h4>
	        <h4 align="center">Your Age is: <span class="text-info">${userform.age}</span></h4>
	    </div>
	</body>
</html>