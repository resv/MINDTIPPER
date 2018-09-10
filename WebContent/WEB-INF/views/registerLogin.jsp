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
    
      

<!-- ROW OF CARD FORMS-->
<section class="js-scroll-trigger" style="padding: 8rem 2rem 22rem; height: auto;">
        <div class="container">
<!-- ROW SPACING -->
            <div class="row">
                <div class="col-md-10 col-lg-5 mx-auto text-center">
<!-- REGISTER CARD SPACING -->
                <div class="card card-register mx-auto mt-5 animated wow fadeIn">
<!-- REGISTER CONTENTS -->
                  <div class="card-header">Register</div>
                  <div class="card-body">
                    <form>
                      <div class="form-group">
                              <div class="form-label-group">
                                <input type="text" id="inputUsername" class="form-control" placeholder="Username" required="required">
                                <label for="inputEmail">UserName <br>
                                  (Email will be used to login)</label>
                              </div>
                            </div>
                            <div class="form-group">
                              <div class="form-row">
                                <div class="col-md-6">
                                  <div class="form-label-group">
                                    <input type="email" id="inputEmail" class="form-control" placeholder="Email Address" required="required">
                                    <label for="firstName">Email Address</label>
                                  </div>
                                </div>
                                <div class="col-md-6">
                                  <div class="form-label-group">
                                    <input type="email" id="confirmEmail" class="form-control" placeholder="Confirm Email" required="required">
                                    <label for="lastName">Confirm Email Address</label>
                                  </div>
                                </div>
                              </div>
                            </div>
                            <div class="form-group">
                              <div class="form-row">
                                <div class="col-md-6">
                                  <div class="form-label-group">
                                    <input type="password" id="inputPassword" class="form-control" placeholder="Password" required="required">
                                    <label for="inputPassword">Password</label>
                                  </div>
                                </div>
                                <div class="col-md-6">
                                  <div class="form-label-group">
                                    <input type="password" id="confirmPassword" class="form-control" placeholder="Confirm Password" required="required">
                                    <label for="confirmPassword">Confirm password</label>
                                  </div>
                                </div>
                              </div>
                            </div>
                            <a class="btn btn-primary btn-block" href="SEND TO USER PAGEEE">Register</a>
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
                        <form>
                          <div class="form-group">
                            <div class="form-label-group">
                              <input type="email" id="loginInputEmail" class="form-control" placeholder="Email Address" required="required" autofocus="autofocus">
                              <label for="inputEmail">Email address</label>
                            </div>
                          </div>
                          <div class="form-group">
                            <div class="form-label-group">
                              <input type="password" id="loginInputPassword" class="form-control" placeholder="Password" required="required">
                              <label for="inputPassword">Password</label>
                            </div>
                          </div>
                          <div class="form-group">
                            <div class="checkbox">
                              <label>
                                <input type="checkbox" value="remember-me">Remember Password</label>
                            </div>
                          </div>
                          <a class="btn btn-primary btn-block" href="SEND TO USER PAGEEE">Login</a>
                        </form>
                        <div class="text-center">
                            <br>
                          <a class="d-block small" href="<c:url value="/forgotPassword" />">Forgot Password?</a>
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
	
</body>
</html>