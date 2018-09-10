<%@ page language="java" contentType="text/html; charset=ISO-8859-1" 
    pageEncoding="ISO-8859-1"%>
    
    <!-- PREREQ FOR RESOURCES -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Forgot Password - MIND TIPPER</title>

  <!-- BOOTSTRAP API RESOURCE PATH -->
	<link href="<c:url value="/resources/API/bootstrap/css/bootstrap.min.css"/>" rel="stylesheet">
	
	<!-- FONTAWESOME API RESOURCE PATH -->
	<link href="<c:url value="/resources/API/font-awesome/css/font-awesome.min.css"/>" rel="stylesheet" type="text/css">
	
	<!-- SIMPLE LINE ICONS API RESOURCE PATH -->
	<link href="<c:url value="/resources/API/simple-line-icons/css/simple-line-icons.css"/>" rel="stylesheet" type="text/css">
	
	<!-- GOOGLE FONT API RESOURCE CDN + Local file (will remove one of them once I can figure out why it isn't working in eclipse browser but works in chrome-->
	<link href="<c:url value="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic"/>" rel="stylesheet" type="text/css">
	<link href="<c:url value="/resources/API/google-fonts/google-fonts.css"/>" rel="stylesheet">
	
	<!-- CSS RESOURCE PATH -->
	<link href="<c:url value="/resources/css/animate.css"/>" rel="stylesheet">
	<link href="<c:url value="/resources/css/animateTimers.css"/>" rel="stylesheet">
	<link href="<c:url value="/resources/css/navbar.css"/>" rel="stylesheet">
	<link href="<c:url value="/resources/css/style.css"/>" rel="stylesheet">
		
</head>

<body>
<!-- NAVIGATION -->
    <nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
        <div class="container">
            <a class="navbar-brand btn js-scroll-trigger" href="<c:url value="/" />">Mind Tipper</a>
            
            <!-- STATIC SIZE, SEARCH BAR USING UNICODE  -->
            <!-- <input class="col-lg-3 col-md-3 col-sm-5 col-xs-5 form-control" type="text" name="searchbar" id="searchbar" placeholder="&#128269 Search"/> -->
        
            <!-- RESPONSIVE SIZE, SEARCH BAR USING UNICODE  -->
            <input class="form-control js-scroll-trigger searchBar" type="text" name="searchbar" id="searchbar" placeholder="&#128269 Search"/>
        
            <!-- COLLAPSE NAVIGATION MENU BUTTON -->
            <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                <i class="fa fa-bars"></i>
            </button>
    
<!-- NAVBAR CONTENTS -->
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link js-scroll-trigger" href="GO TO HISTORY PAGGGGGGE">History</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link js-scroll-trigger" href="<c:url value="/menu" />">New Decision</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link js-scroll-trigger" href="<c:url value="/registerLogin" />">Sign Up/ Login</a>
                </li>
                </ul>
            </div>
        </div>
    </nav>
    
    
<!-- FORGOT PASS CARD FORM-->
<section class="js-scroll-trigger" style="padding: 12rem 0rem 22rem; height: auto;">
<div class="container">
	<div class="col-md-10 col-lg-5 mx-auto text-center">
		<div class="card card-login mx-auto mt-5">
			<div class="card-header">Reset Password</div>
				<div class="card-body">
				  <div class="text-center mb-4">
					<h4>Forgot your password?</h4>
					<p>Enter the email address linked to your account, instructions on how to reset your password will be sent.</p>
				  </div>
				  
					<form>
						<div class="form-group">
						  <div class="form-label-group">
						    <input type="email" id="inputEmail" class="form-control" placeholder="Enter email address" required="required" autofocus="autofocus">
						    <label for="inputEmail">Enter email address</label>
						  </div>
						</div>
						
					  <a class="btn btn-primary btn-block" href="login.html">Reset Password</a>
					  
					</form>
					
					<div class="text-center">
					  <a class="d-block small mt-3" href="<c:url value="/registerLogin" />">Back to Login / Register page</a>
					</div>
			</div>
		</div>
	</div>
</div>
</section>

    <!-- FOOTER -->
    <footer class="footer bg-light js-scroll-trigger">
    <div class="container">
        <div class="row">
        <div class="col-lg-6 h-100 text-center text-lg-left my-auto">
            <ul class="list-inline mb-2">
            <li class="list-inline-item">
                <a href="#">Contact</a>
            </li>
            <li class="list-inline-item">&sdot;</li>
            <li class="list-inline-item">
                <a href="#">Business Inquiries</a>
            </li>
            <li class="list-inline-item">&sdot;</li>
            <li class="list-inline-item">
                <a href="#">Terms of Use</a>
            </li>
            <li class="list-inline-item">&sdot;</li>
            <li class="list-inline-item">
                <a href="#">Privacy Policy</a>
            </li>
            </ul>
            <p class="text-muted small mb-4 mb-lg-0">&copy; MINDTIPPER 2018. All Rights Reserved.</p>
        </div>
        <div class="col-lg-6 h-100 text-center text-lg-right my-auto">
            <ul class="list-inline mb-0">
            <li class="list-inline-item mr-3">
                <a href="https://www.linkedin.com/in/adamkim456/">
                <i class="fa fa-linkedin-square fa-2x fa-fw"></i>
                </a>
            </li>
            <li class="list-inline-item mr-3">
                <a href="https://twitter.com/Resv_">
                <i class="fa fa-twitter fa-2x fa-fw"></i>
                </a>
            </li>
            <li class="list-inline-item">
                <a href="https://www.instagram.com/resvvv/">
                <i class="fa fa-instagram fa-2x fa-fw"></i>
                </a>
            </li>
            </ul>
        </div>
        </div>
    </div>
    </footer>

    <!-- BOOTSTRAP AND JS SCRIPT -->
    <script src="API/jquery/jquery.min.js"></script>
    <script src="API/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- WOW JS SCRIPT -->
    <script src="js/wow.js"></script>
    <script>new WOW().init();</script>

    <!-- JQUERY SCRIPT -->
    <script src="js/jquery.js"></script>

</body>
</html>
    