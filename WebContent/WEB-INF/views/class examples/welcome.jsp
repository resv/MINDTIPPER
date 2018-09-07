<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!-- ADDED FOR RESOURCES -->
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%> 

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 
<link rel="stylesheet" href="webjars/bootstrap/4.1.3/css/bootstrap.min.css">
<link rel="stylesheet" href="webjars/bootstrap/4.1.3/css/bootstrap-theme.min.css">


<!-- CSS/JS/IMGS -->
<spring:url value="/resources/css/style.css" var="styleCSS" />
<spring:url value="/resources/yourJSfileName.js" var="yourJSfileNameJS" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<link href="${styleCSS}" rel="stylesheet" />
<script src="${yourJSfileNameJS}"></script>


<title>Welcome Page</title>
</head>
<body>


<h1 class="hello">Welcome Page! Student Login</h1>


<div class="container">
	<form action="displayroute">
		<div class="field">
			<label for="name">Your Name </label>
			<input id="name" name="name" type="text" placeholder="Enter your Name" />
		</div>
		
		<br>
		
		<div class="field">
			<label for="password">Password </label>
			<input id="password" name="name" type="text" placeholder="Enter your password" />
		</div>
		
		<div class="btn">
			<input id="sub" name="submit" type="submit" value="Submit Name" />
		</div>
		
	</form>
</div>


</body>
</html>