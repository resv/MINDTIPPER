<%@ page language="java" contentType="text/html; charset=ISO-8859-1" 
    pageEncoding="ISO-8859-1"%>
    
    <!-- TAGLIB FOR RESOURCES -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
    
<!DOCTYPE html>
<html>

<head>
<!----------------------------HEADER---------------------------->
	<%@include file="/WEB-INF/view/static/header.jsp"%>
	<title>About Us - MIND TIPPER</title>
</head>
	
<body oncontextmenu="return false;" class="noselect">
<!----------------------------NAVBAR---------------------------->
	<%@include file="/WEB-INF/view/static/navbar.jsp"%>
	
<!----------------------------CONTENT---------------------------->

<!-- ABOUT US CONTENT CONTAINER -->
<div class="container animated wow fadeIn">
<div class="col-md-10 col-lg-8 mx-auto" style="padding: 7rem 0rem 1rem; height: auto;">
    
    <h1 class="display-1 text-center">About Us</h1>
    
    <div>
    
    <br>
    <br>
    
		This is a dynamic web application using Spring MVC, a final project assigned by PlatForm PerScholas.
	
	<br>
	<br>
	
		This is still currently being built. 
	
	<br>
	<br>
	
		Thank you for visiting.
		
    </div>
</div>

</div>
<!-- END OF POLICY CONTENT CONTAINER -->	
	
	
	
<!----------------------------FOOTER---------------------------->
	<%@include file="/WEB-INF/view/static/footer.jsp"%>
</body>
</html>