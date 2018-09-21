<%@ page language="java" contentType="text/html; charset=ISO-8859-1" 
    pageEncoding="ISO-8859-1"%>
    
    <!-- TAGLIB FOR RESOURCES -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
    
<!DOCTYPE html>
<html>

<head>
<!----------------------------HEADER---------------------------->
	<%@include file="/WEB-INF/view/static/header.jsp"%>
	<title>Forgot Password - MIND TIPPER</title>
</head>
	
<body>
<!----------------------------NAVBAR---------------------------->
	<%@include file="/WEB-INF/view/static/navbar.jsp"%>
	
<!----------------------------CONTENT---------------------------->

	
<!-- FORGOT PASS CARD FORM-->
<section class="js-scroll-trigger" style="padding: 12rem 2rem 22rem; height: auto;">
	<div class="container">
		<div class="col-md-10 col-lg-5 mx-auto text-center  animated wow fadeIn">
			<div class="card card-login mx-auto mt-5">
				<div class="card-header">Reset Password</div>
					<div class="card-body">
					
					  <div class="text-center mb-4">
					  	<h4>Forgot your password?</h4>
					  	<p>Enter the email address linked to your account, instructions on how to reset your password will be sent.</p>
					  </div>
					  
					  <!-- EMAIL ADDRESS TEXT FIELD -->
					  <form>
					    <div class="form-group">
					      <div class="form-label-group">
					        <input type="email" id="inputEmail" class="form-control" placeholder="Enter email address" required="required" autofocus="autofocus" title="Please enter a valid email address.">
					        <label for="inputEmail">Enter email address</label>
					      </div>
					    </div>
					    
					   <!-- RESET PASSWORD BUTTON --> 
					    <a class="btn btn-primary btn-block" href="login.html">Reset Password</a>
					    
					  </form>
					  
					  <!-- BACK BUTTON -->
					  <div class="text-center">
					    <a class="d-block small mt-3" href="registerLogin.html">Back to Login / Register page</a>
					  </div>
				</div>
			</div>
		</div>
	</div>
</section>	
	
	
<!----------------------------FOOTER---------------------------->
	<%@include file="/WEB-INF/view/static/footer.jsp"%>
</body>
</html>