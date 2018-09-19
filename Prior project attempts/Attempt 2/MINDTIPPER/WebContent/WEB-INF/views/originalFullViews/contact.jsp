<%@ page language="java" contentType="text/html; charset=ISO-8859-1" 
    pageEncoding="ISO-8859-1"%>
    
    <!-- PREREQ FOR RESOURCES -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Contact Us - MIND TIPPER</title>

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
                    <a class="nav-link js-scroll-trigger" href="<c:url value="/registerLogin" />">Sign Up / Login</a>
                </li>
                </ul>
            </div>
        </div>
    </nav>
    
   
<!-- CONTACT SECTION, TWITTER LINK ICON LINK INSIDE h2 TAG, CSS STYLING IS INTERNAL NO UNDERLINE OVER HOVER -->
<section class="js-scroll-trigger" style="padding: 8rem 2rem 4rem; height: auto;">
    <div class="container">
        <h2 class="text-center text-black mb-0">CONTACT US<a href="https://twitter.com/Resv_" style="text-decoration: none;">
                                                          	<i class="fa fa-twitter fa-1x fa-fw animated wow pulse infinite"></i>
                                                          </a></h2>
            <div class="row">
            <div class="col-lg-8 mx-auto">
                <form name="sentMessage" id="contactForm" novalidate="novalidate">
                <div class="control-group">
                    <div class="form-group floating-label-form-group controls mb-0 pb-2">
                        <label>Name</label>
                        <input class="form-control" id="name" type="text" placeholder="Name" required="required" data-validation-required-message="Please enter your name.">
                        <p class="help-block text-danger"></p>
                    </div>
                </div>
                <div class="control-group">
                    <div class="form-group floating-label-form-group controls mb-0 pb-2">
                        <label>Email Address</label>
                        <input class="form-control" id="email" type="email" placeholder="Email Address" required="required" data-validation-required-message="Please enter your email address.">
                        <p class="help-block text-danger"></p>
                    </div>
                </div>
                <div class="control-group">
                        <div class="form-group floating-label-form-group controls mb-0 pb-2">
                            <label>Decision #ID</label>
                            <input class="form-control" id="decisionID" type="text" placeholder="Decision #ID (Optional)">
                            <p class="help-block text-danger"></p>
                        </div>
                    </div>
                <div class="control-group">
                    <div class="form-group floating-label-form-group controls mb-0 pb-2">
                        <label>Subject</label>
                        <input class="form-control" id="subject" type="text" placeholder="Subject" required="required" data-validation-required-message="Please enter your subject.">
                        <p class="help-block text-danger"></p>
                    </div>
                </div>
                <div class="control-group">
                    <div class="form-group floating-label-form-group controls mb-0 pb-2">
                        <label>Message</label>
                        <textarea class="form-control" id="message" rows="5" placeholder="Message" required="required" data-validation-required-message="Please enter a message."></textarea>
                        <p class="help-block text-danger"></p>
                    </div>
                </div>
                <br>
                <div id="success"></div>
                    <div class="form-group text-center">
                        <button type="submit" class="btn btn-primary btn-xl" id="sendMessageButton">Send</button>
                    </div>
                </form>
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
                <a href="<c:url value="contact" />">Contact Us</a>
            </li>
            <li class="list-inline-item">&sdot;</li>
            <li class="list-inline-item">
                <a href="#">About Us</a>
            </li>
            <li class="list-inline-item">&sdot;</li>
            <li class="list-inline-item">
                <a href="#">Terms of Use</a>
            </li>
            <li class="list-inline-item">&sdot;</li>
            <li class="list-inline-item">
                <a href="#">Privacy</a>
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

<!-- BOOTSTRAP AND JS RESOURCE SCRIPT PATH -->
	<script src="<c:url value="/resources/API/jquery/jquery.min.js"/>"></script>
	<script src="<c:url value="/resources/API/bootstrap/js/bootstrap.bundle.min.js"/>"></script>

<!-- WOW JS SCRIPT -->
	<script src="<c:url value="/resources/js/wow.js"/>"></script>
	<script> new WOW().init();</script>

<!-- JQUERY SCRIPT -->
	<script src="<c:url value="/resources/js/jquery.js"/>"></script>
	
<!-- VALIDATION SCRIPTS -->
    <script src="<c:url value="/resources/js/validation/bootstrapValidation.js"/>"></script>
    <script src="<c:url value="/resources/js/validation/contactValidation.js"/>"></script>
	

</body>
</html>
    
    