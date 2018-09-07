<%@ page language="java" contentType="text/html; charset=ISO-8859-1" 
    pageEncoding="ISO-8859-1"%>
    
    <!-- PREREQ FOR RESOURCES -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
    
<!DOCTYPE html>
<html>

<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
     <title>MIND TIPPER</title>
    
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
	          <a class="nav-link js-scroll-trigger" href="GO TO LOGIN/SIGN UP PAGGGGGGGGGGE">Sign Up/ Login</a>
	        </li>
	      </ul>
	    </div>
	  </div>
	</nav>


<!-- landingPage // MASTHEAD -->
    <header class="masthead text-white text-center js-scroll-trigger" style="background-image: url('resources/imgs/bg1.jpg');" id="landingPage">
      <div class="overlay"></div>
      <div class="container">
        <div class="row">
          <div class="col-xl-9 mx-auto">                 
                <h1 class="mb-5">
                <span class="animated wow fadeIn" id="landing1">Mind</span>
                <span class="animated wow fadeIn" id="landing2">Tipper</span>
              </h1>
            <h2 class="text-white-50 mx-auto mt-2 mb-5 animated wow fadeInDown" id="landing3">
              Calculate every decision. Share your options.<br>Find out which detail matters</h2>
            <a class="btn btn-primary js-scroll-trigger animated wow fadeInDown" id="landing4" href="<c:url value="/menu" />">Get Started</a>
          </div>
        </div>
      </div>

<!-- SCROLL DOWN ARROW -->
      <div class="scroll-down animated wow fadeInDown" id="landing5">
          <a class="btn js-scroll-trigger animated wow bounceOutDown" id="landing6">
              <i class="fa fa-angle-down animated wow fadeOut" id="landing7"></i>
          </a>
        </div>
    </header>
    
<!-- stepByStep // ICON GRID -->
    <section class="features-icons bg-light text-center js-scroll-trigger" id="stepByStep">
      <div class="container">
        <div class="row">
          <div class="col-lg-4">
            <div class="features-icons-item mx-auto mb-5 mb-lg-0 mb-lg-3">
              <div class="features-icons-icon d-flex animated wow flipInX" id="stepByStep1">
                <i class="icon-bulb m-auto text-primary"></i>
              </div>
              <h3>Can't decide on something?</h3>
              <p class="lead mb-0">Enter two options of the decision you have to make e.g. Summer VS Winter.</p>
            </div>
          </div>
          <div class="col-lg-4">
            <div class="features-icons-item mx-auto mb-5 mb-lg-0 mb-lg-3">
              <div class="features-icons-icon d-flex animated wow flipInX" id="stepByStep2">
                <i class="icon-list m-auto text-primary"></i>
              </div>
              <h3>What are our options?</h3>
              <p class="lead mb-0">Tell us the choice details, sort of a like a pros and cons list for each choice and select one</p>
            </div>
          </div>
          <div class="col-lg-4">
            <div class="features-icons-item mx-auto mb-0 mb-lg-3">
              <div class="features-icons-icon d-flex animated wow flipInX" id="stepByStep3">
                <i class="icon-calculator m-auto text-primary"></i>
              </div>
              <h3>Make the decision</h3>
              <p class="lead mb-0">Let us do the calculations and you're done!</p>
            </div>
          </div>
        </div>
      </div>
    </section>

<!-- FEATURES // IMAGE SHOWCASES -->
    <section class="showcase js-scroll-trigger">
      <div class="container-fluid p-0">
        
        <div class="row no-gutters">
          <div class="col-lg-6 order-lg-2 text-white showcase-img animated wow fadeIn delay-1s" style="background-image: url('resources/imgs/weigh1.jpg');"></div>  
          <div class="col-lg-6 order-lg-1 my-auto showcase-text animated wow fadeInLeftBig" id="feature1">
            <h2>Analytics, Evolving Weighed Values</h2>
            <p class="lead mb-0">Your decisions may appeal to people across the world. You can allow people to retake your decisions 
                and we will compare their decisions with yours. As more retakes occur, more data will accrue giving us insight on what 
                really matters. We call this "Weighed Values" which can help understand which details hold more or less value over others.</p>
          </div> 
        </div>
        
        
        <div class="row no-gutters">
          <div class="col-lg-6 text-white showcase-img animated wow fadeIn delay-1s" style="background-image: url('resources/imgs/share1.jpg');"></div>
          <div class="col-lg-6 my-auto showcase-text animated wow fadeInRightBig" id="feature2">
            <h2>From Deciding On Lunch - To Boosting Your Business</h2>
            <p class="lead mb-0">Having options are a beautiful thing, but deciding between them can be a stressful. From purchasing a car to 
              planning a wedding or even asking the customers what they want to see in your next product, let them decide!
            </p>
          </div>
        </div>
        
        <div class="row no-gutters">
          <div class="col-lg-6 order-lg-2 text-white showcase-img animated wow fadeIn delay-1s" style="background-image: url('resources/imgs/share2.jpg');"></div>
          <div class="col-lg-6 order-lg-1 my-auto showcase-text animated wow fadeInLeftBig" id="feature3">
            <h2>Share your decisions with the world</h2>
            <p class="lead mb-0">7.4 billion people inhabit the earth. People from different countries, cultures, and experiences makes each person unique. 
              Not everyone can see the world in your shoes, share your thought process with the world and don't tell them why, show them why!</p>
          </div>
        </div>
        
        
      </div>
    </section>

<!-- POSSIBLE BY.. // TESTIMONIALS -->
    <section class="testimonials text-center bg-light js-scroll-trigger">
      <div class="container">
        <h2 class="mb-5">Made Possible By...</h2>
        <div class="row">
          
          <div class="col-lg-4">
            <div class="testimonial-item mx-auto mb-5 mb-lg-0">
              <a href="https://www.platformbyps.org/">
              	<img class="img-fluid rounded-circle mb-3 animated wow fadeInRight" id="portrait1" src="resources/imgs/pfps.jpg" alt="">
              </a>

              <h5 class="title1 animated wow fadeInDown">Platform Per Scholas</h5>
              <p class="font-weight-light mb-0 animated wow fadeInDown" id="motto1">"Building Careers. Improving Businesses. Enriching Communities."</p>
            </div>
          </div>
          
          <div class="col-lg-4">
            <div class="testimonial-item mx-auto mb-5 mb-lg-0">
              <a href="https://www.cognizant.com/">
              	<img class="img-fluid rounded-circle mb-3 animated wow flipInX" id="portrait2" src="resources/imgs/cog.jpg" alt="">
            	</a>

              <h5 class="title2 animated wow bounceIn">Cognizant</h5>
              <p class="font-weight-light mb-0 animated wow slideInUp" id="motto2">"Make Digital Work for Your Business"</p>
            </div>
          </div>
          
          <div class="col-lg-4">
            <div class="testimonial-item mx-auto mb-5 mb-lg-0">
              <a href="https://www.linkedin.com/in/adamkim456/">
              	<img class="img-fluid rounded-circle mb-3 animated wow fadeInLeft" id="portrait3" src="resources/imgs/ak.jpg" alt="">
           	  </a>

              <h5 class="title3 animated wow fadeInDown">Adam Kim</h5>
              <p class="font-weight-light mb-0 animated wow fadeInDown" id="motto3">"Platform PerScholas Student"</p>              
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