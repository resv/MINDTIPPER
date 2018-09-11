<%@ page language="java" contentType="text/html; charset=ISO-8859-1" 
    pageEncoding="ISO-8859-1"%>
    
    <!-- PREREQ FOR RESOURCES -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Login Register - MIND TIPPER</title>

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
            <a class="navbar-brand btn js-scroll-trigger" style="color:black" href="<c:url value="/" />">Mind Tipper</a>
            
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
    
      

<body>
    <!-- NAVIGATION -->
    <nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
        <div class="container">
            <a class="navbar-brand btn js-scroll-trigger" href="home.html">Mind Tipper</a>
            
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
                    <a class="nav-link js-scroll-trigger" href="menu.html">New Decision</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link js-scroll-trigger" href="registerLogin.html">Sign Up / Login</a>
                </li>
                </ul>
            </div>
        </div>
    </nav>
    
      

<!-- ROW OF CARD FORMS-->
<section class="js-scroll-trigger" style="padding: 8rem 2rem 22rem; height: auto;">
        <div class="container">
<!-- ROW SPACING -->
            <div class="row">
                <div class="col-md-10 col-lg-5 mx-auto">
<!-- REGISTER CARD SPACING -->
                <div class="card card-register mx-auto mt-5 animated wow fadeIn">
<!-- REGISTER CONTENTS -->
                  <div class="card-header text-center">Register</div>
                  <div class="card-body">
                    <form name="regForm" action="menu.html" onsubmit="return regValidate()" method="post"> 
                      <div class="form-group">
                              <div class="form-label-group">
                                <!-- <label for="regUsername">Username</label> -->
                                <input type="text" id="regUsername" class="form-control" required="required" placeholder="Username" minlength="4" maxlength="25" 
                                pattern="[A-Za-z0-9_]{4,25}"
                                title="Minimum of 4-25 characters. Only letters (either case), numbers, and the underscore.">
                                <small class="form-text text-muted">Minimum of 4-25 characters. Only letters (either case), numbers, and the underscore.</small>
                              
                              </div>
                            </div>


                            <div class="form-group">
                              <div class="form-row">
                                <div class="col-md-6">
                                  <div class="form-label-group">
                                    <!-- <label for="regEmail">Email Address</label> -->
                                    <input type="email" id="regEmail" class="form-control" required="required" placeholder="Email Address">   
                                  </div>
                                </div>


                                <div class="col-md-6">
                                  <div class="form-label-group">
                                      <!-- <label for="regConfirmEmail">Confirm Email</label> -->
                                    <input type="email" id="regConfirmEmail" class="form-control" required="required" placeholder="Confirm Email">
                                  </div>
                                </div>
                              </div>
                              <small class="form-text text-muted">We believe in privacy and will never give out your email address.</small>
                            </div>
                

                            <div class="form-group">
                              <div class="form-row">
                                <div class="col-md-6">
                                  <div class="form-label-group">
                                      <!-- <label for="regPassword">Password</label> -->
                                    <input type="password" id="regPassword" class="form-control" required="required" placeholder="Password" minlength="8" maxlength="25" 
                                                pattern="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?!.*\s).*$" 
                                            title="You must enter a minimum of 8-25 characters and must contain at least one number, one uppercase, and one lowercase letter. No special characters.">
                                  </div>
                                </div>


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
                            <input class="btn btn-primary btn-block" type="submit" value="Register" name="Submit">
                    </form>
                  </div>
                </div>
              </div>
        

              <!-- LOGIN CARD BOX -->
              <div class="col-md-8 col-lg-4 mx-auto text-center">
                  <!-- LOGIN CARD SPACING -->
                  <div class="card card-login mx-auto mt-5 text-center animated wow fadeIn">
                      <!-- LOGIN CARD CONTENTS -->
                          <div class="card-header">Login</div>
                          <div class="card-body">
                            <form name="logForm" action="menu.html" onsubmit="return logValidate()" method="post"> 
                              <div class="form-group">
                                <div class="form-label-group">
                                  <br>
                                  <input type="email" id="logEmail" class="form-control" placeholder="Email Address" required="required" autofocus="autofocus" title="Please enter a valid email address.">
                                  <!-- <label for="logEmail">Email address</label> -->
                                </div>
                              </div>
                              <div class="form-group">
                                <div class="form-label-group">
                                  <input type="password" id="logPassword" class="form-control" placeholder="Password" required="required">
                                  <!-- <label for="logPassword">Password</label> -->
                                </div>
                              </div>
                              <div class="form-group">
                                <div class="checkbox">
                                  <label>
                                    <input type="checkbox" value="remember-me">Remember Password</label>
                                </div>
                              </div>
                              <!-- <a class="btn btn-primary btn-block" href="GO TO USER HOME PAGE">Login</a> -->
                              <input class="btn btn-primary btn-block" type="submit" value="Login" name="login">
                            </form>
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
	
<!-- JQUERY SCRIPT -->
	<script src="<c:url value="/resources/validation/registerValidation.js"/>"></script>
	
</body>
</html>