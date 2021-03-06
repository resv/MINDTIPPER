<!-- CREDIT TO TERMLY.IO FOR PRIVACY DOCUMENT -->

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" 
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

    <!-- TAGLIB FOR RESOURCES -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
    
<!DOCTYPE html>
<html>

<head>
<!----------------------------HEADER---------------------------->
	<%@include file="/WEB-INF/view/static/header.jsp"%>
	<title>Login Register - MIND TIPPER</title>
</head>
	
<body>
<!----------------------------NAVBAR---------------------------->
	<%@include file="/WEB-INF/view/static/navbar.jsp"%>
	
<!----------------------------CONTENT---------------------------->


<%-- <div>
<form:form action="registerUser" modelAttribute="user" method="POST">
<th>
 <form:input path="username" type="text" id="regUsername" class="form-control" required="required" placeholder="Username" 
		           	pattern="[A-Za-z0-9_]{4,25}"
		            title="Minimum of 4-25 characters. Only letters (either case), numbers, and the underscore."/>   
</th>
		            
		            
 <th>  <form:input path="email" type="email" id="regEmail" class="form-control" required="required" placeholder="Email Address" /> </th>
 <th>  <form:input path="password" id="regPassword" class="form-control" required="required" placeholder="Password" 
		                           pattern="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,25}$"
		                    title="You must enter a minimum of 8-25 characters and must contain at least one number, one uppercase, and one lowercase letter. No special characters." /> 
		                    </th>
		                  
  </form:form>
</div> --%>



 
	
<!-- ROW OF CARD FORMS-->
<section class="js-scroll-trigger" style="padding: 8rem 2rem 22rem; height: auto;">
	<div class="container">
	<!-- ROW SPACING -->
	<div class="row">
	<div class="col-md-10 col-lg-5 mx-auto">
	<!-- REGISTER CARD SPACING -->
	<div class="card card-register mx-auto mt-5 animated wow fadeIn">
					
		<!------------------------------------------------------------ REGISTER CONTENTS -------------------------------------------------------------------->
		<div class="card-header text-center">Register</div>
				<div class="card-body">
        
	
		<form:form action="registerUser" modelAttribute="user" method="POST">
			<div class="form-group">
		        <div class="form-label-group">
		           	<!-- <label for="regUsername">Username</label> -->
		           	
<!-- USER NAME -->
		        <form:input path="username" type="text" id="regUsername" class="form-control" required="required" placeholder="Username" 
		           	pattern="[A-Za-z0-9_]{4,25}"
		            title="Minimum of 4-25 characters. Only letters (either case), numbers, and the underscore."/>   
		            
		            	
		        <!--    	<input type="text" id="regUsername" class="form-control" required="required" placeholder="Username" 
		           	pattern="[A-Za-z0-9_]{4,25}"
		            title="Minimum of 4-25 characters. Only letters (either case), numbers, and the underscore."> -->
		            <small class="form-text text-muted">Minimum of 4-25 characters. Only letters (either case), numbers, and the underscore.</small>
	            </div>
		   	</div>
		
<!-- EMAIL ADDRESS -->	
	     	<div class="form-group">
	         	<div class="form-row">
	         	
	     	      	<div class="col-md-6">
	              		<div class="form-label-group">
	               			<!-- <label for="regEmail">Email Address</label> -->
	               			<form:input path="email" type="email" id="regEmail" class="form-control" required="required" placeholder="Email Address" />   
		             	</div>
		          	</div>
<!-- CONFIRM EMAIL ADDRESS -->			
		          	<div class="col-md-6">
		          		<div class="form-label-group">
		                 	<!-- <label for="regConfirmEmail">Confirm Email</label> -->
		               	 	<input type="email" id="regConfirmEmail" class="form-control" required="required" placeholder="Confirm Email">
		            	</div>
		          	</div>
		          
		         	</div>
		         	<small class="form-text text-muted">We believe in privacy and will never give out your email address.</small>
		       		</div>
		
<!-- PASSWORD  -->			
	        <div class="form-group">
	         	<div class="form-row">
	         	
		           	<div class="col-md-6">
		             	<div class="form-label-group">
		                 	<!-- <label for="regPassword">Password</label> -->
		               		<form:input path="password"  type="password" id="regPassword" class="form-control" required="required" placeholder="Password" 
		               		
		                           pattern="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,25}$"
		                    title="You must enter a minimum of 8-25 characters and must contain at least one number, one uppercase, and one lowercase letter. No special characters." />
		             	</div>
		           	</div>
		
<!-- CONFIRM PASSWORD  -->			
		           <div class="col-md-6">
		             	<div class="form-label-group">
		                 	<!-- <label for="regConfirmPassword">Confirm password</label> -->
		               		<input type="password" id="regConfirmPassword" class="form-control" required="required" placeholder="Confirm Password" >
		             	</div>
		           </div>
		           
		           </div>
		           <small class="form-text text-muted">Minimum of 8-25 characters and must contain at least one number, one uppercase, and one lowercase letter. No special characters.</small>
		           </div>
		       	   <!-- <a class="btn btn-primary btn-block" href="GO TO USER HOME PAGE">Register</a> -->
		       	   
		       	    <div class="form-group">
		                  <div class="checkbox">
		                    By creating an account, you agree to our <a href="<c:url value="terms" />">Terms of Use</a> and acknowledge reading our <a href="<c:url value="privacy" />">User Privacy Notice</a>.
		                  </div>
	                </div>
		       	   
		       	   
		           <input class="btn btn-primary btn-block" type="submit" value="Register">
		   </form:form>
					
   	</div>
   	</div>
	</div>
        

		<!--------------------------------------------------- LOGIN CARD BOX (HTML5 DEFAULT VALIDATION FOR EMAIL IS PRESENT, CAN REMOVE JAVASCRIPT FUNCTIONS) ----------------------------------------->
		<div class="col-md-8 col-lg-4 mx-auto text-center">
		    <!-- LOGIN CARD SPACING -->
		    <div class="card card-login mx-auto mt-5 text-center animated wow fadeIn">
		        <!-- LOGIN CARD CONTENTS -->
	            <div class="card-header">Login</div>
		            <div class="card-body">
		            
			              <form name="logForm" action="userLogin" onsubmit="return logValidate()" method="post"> 
			              
			              <!-- EMAIL -->
				                <div class="form-group">
					                  <div class="form-label-group">
						                    <br>
						                    <input type="email" id="logEmail" class="form-control" placeholder="Email Address" required="required" autofocus="autofocus" title="Please enter a valid email address." name="logEmail">
						                    <!-- <label for="logEmail">Email address</label> -->
					                  </div>
				                </div>
				          
				          <!-- PASSWORD -->     
				                <div class="form-group">
					                  <div class="form-label-group">
						                    <input type="password"  id="logPassword" class="form-control" placeholder="Password" required="required" name="logPass">
						                    <!-- <label for="logPassword">Password</label> -->
					                  </div>
				                </div>
				                
				          <!-- REMEMBER ME CHECK BOX -->      
				                <div class="form-group">
					                  <div class="checkbox">
					                    <label><input type="checkbox" value="remember-me">Remember Password</label>
					                  </div>
				                </div>
				                
				         <!-- LOGIN BUTTON -->       
				                <!-- <a class="btn btn-primary btn-block" href="GO TO USER HOME PAGE">Login</a> -->
				                <input class="btn btn-primary btn-block" type="submit" name="submit" value="Login to your account">
				                
			              </form>
			              
			              <!-- FORGOT PASSWORD BUTTON -->
			              		<div class="text-center">
			                    <br>
			                    <a class="d-block small" href="<c:url value="forgotPassword" />">Forgot Password?</a>
			                    </div>
		                    
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