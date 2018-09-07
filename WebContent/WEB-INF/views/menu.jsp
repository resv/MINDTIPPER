<%@ page language="java" contentType="text/html; charset=ISO-8859-1" 
    pageEncoding="ISO-8859-1"%>
    
    <!-- PREREQ FOR RESOURCES -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>MENU - MIND TIPPER</title>

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
<!-- NAVIGATION (REMOVED SEARCH BAR HERE DUE TO ONPAGE SEARCH BAR && INTERNAL STYLE CSS) -->
   <nav class="navbar navbar-expand-lg navbar-light fixed-top js-scroll-trigger" id="mainNav">
       <div class="container">
           <a class="navbar-brand btn js-scroll-trigger" style="color:black" href="<c:url value="/" />">Mind Tipper</a>
           
           <!-- STATIC SIZE, SEARCH BAR USING UNICODE  -->
           <!-- <input class="col-lg-3 col-md-3 col-sm-5 col-xs-5 form-control" type="text" name="searchbar" id="searchbar" placeholder="&#128269 Search"/> -->
       
           <!-- RESPONSIVE SIZE, SEARCH BAR USING UNICODE  -->
           <!-- <input class="form-control js-scroll-trigger searchBar" type="text" name="searchbar" id="searchbar" placeholder="&#128269 Search"/> -->
       
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
   
     

 
<!-- learnOrPick SECTION ( ON PAGE SEARCH BAR WITH INTERNAL STYLE CSS ) -->
   <section class="js-scroll-trigger" style="padding: 8rem 2rem 5rem; height: auto;">
       <div class="container">
         <div class="row">
           <div class="col-md-10 col-lg-8 mx-auto text-center">

             <h2 class="text-black mb-5">Before we begin, you must make a Decision.</h2>
 
             <form class="form-inline d-flex">
               <input type="search" class="form-control flex-fill mr-0 mr-sm-2 mb-3 mb-sm-0" placeholder="&#128269 Search for a Decision...">
               <button type="submit" class="btn btn-primary mx-auto">Search</button>
             </form>
 
           </div>
         </div>
       </div>
     </section>
 
<!-- 3by1 BOXES ( WITH INTERNAL STYLE CSS ESPECIALLY FONT AWESOME-->
     <section class=" bg-black js-scroll-trigger" style="padding: 0rem 0rem 16.5rem; height: auto;">
       <div class="container">
         <div class="row">
 
              
           <div class="col-md-4 mb-3 mb-md-0">
               <a href="GO TO NEW DECISION PAGEE OR SINGUP OR LOGIN IF SESSION SAYS SO" style="color:black; text-decoration: none;">
                   <div class="card py-4 h-100 animated wow zoomIn">
                       <div class="card-body text-center">
                       <h4 class="text-uppercase m-0"><i class="fa fa-play fa-lg" style="color:red"></i> <br><br> Tutorial</h4>
                       <hr class="my-4">
                           <div class="medium text-black-100">
                           <span style="font-weight: bold; font-style: italic;">New Here?</span>
                           <br><br>
                           Check out our quick GIF tutorial<br>It'll only take 20 seconds of you're time!
                           </div>
                       </div>
                   </div>
               </a>
           </div>
 
           <div class="col-md-4 mb-3 mb-md-0">
               <a href="GO TO NEW DECISION PAGEE OR SINGUP OR LOGIN IF SESSION SAYS SO" style="color:black; text-decoration: none;">
                   <div class="card py-4 h-100 animated wow zoomIn">
                       <div class="card-body text-center">
                       <h4 class="text-uppercase m-0"><i class="fa fa-copy fa-lg"></i> <br><br> Template</h4>
                       <hr class="my-4">
                           <div class="medium text-black-100">
                           <span style="font-weight: bold; font-style: italic;">Put in your two cents</span>
                           <br><br
                           >Weigh your decision by retaking a decision other people have taken or use theirs as a starting template.
                           </div>
                       </div>
                   </div>
               </a>
           </div>
 
           <div class="col-md-4 mb-3 mb-md-0">
               <a href="GO TO NEW DECISION PAGEE OR SINGUP OR LOGIN IF SESSION SAYS SO" style="color:black; text-decoration: none;">
                   <div class="card py-4 h-100 animated wow zoomIn">
                       <div class="card-body text-center">
                       <h4 class="text-uppercase m-0 animated wow pulse infinite delay-1s"><i class="fa fa-plus fa-lg" style="color:yellowgreen"></i> <br><br> New Decision</h4>
                       <hr class="my-4">
                           <div class="medium text-black-100">
                           <span style="font-weight: bold; font-style: italic;">Start on a clean slate</span>
                           <br><br>
                           Start a new decision of your own.
                           </div>
                       </div>
                   </div>
               </a>
           </div>

         </div>
       </div>
     </section>

<!-- FOOTER ( INTERNAL STYLE CSS + EXTERNAL CSS )-->
     <footer class="footer bg-light js-scroll-trigger">
         <div class="container">
             <div class="row">
                 <!-- FOOTER CONTENTS -->
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