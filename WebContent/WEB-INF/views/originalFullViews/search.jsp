<%@ page language="java" contentType="text/html; charset=ISO-8859-1" 
    pageEncoding="ISO-8859-1"%>
    
    <!-- PREREQ FOR RESOURCES -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Search - MIND TIPPER</title>

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
                   <a class="nav-link js-scroll-trigger" href="<c:url value="/registerLogin" />">Sign Up / Login</a>
               </li>
               </ul>
           </div>
       </div>
   </nav>
   
   
   

<!-- SEARCH JUMBOTRON -->
<section class="js-scroll-trigger" style="padding: 7rem 0rem 2rem; height: auto;">
  <div class="container">
    <div class="row">
      <div class="col-md-10 col-lg-8 mx-auto text-center">

        <h2 class="text-black mb-5">Search decisions made around the world</h2>

        <form class="form-inline d-flex">
          <input type="search" class="form-control flex-fill mr-0 mr-sm-2 mb-3 mb-sm-0" placeholder="&#128269 Search for a Decision...">
          <button type="submit" class="btn btn-primary mx-auto">Search</button>
        </form>
  
      </div>
    </div>
  </div>
</section>


<!-- DECISION ACTIVITY TABLE -->
<section class="js-scroll-trigger animated wow fadeIn" style="padding: 0rem 0rem 8rem; height: auto">
  <div class="card-body">
    <div class="table-responsive col-md-12 col-lg-10 mx-auto">
      <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
        <thead>
          <tr style="cursor: pointer">
            <th>Stars<span style="float: right"><i class="fa fa-sort"></i></span></th>
            <th>Decision ID<span style="float: right"><i class="fa fa-sort"></i></span></th>
            <th>Decisions<span style="float: right"><i class="fa fa-sort"></i></span></th>
            <th>Date Created<span style="float: right"><i class="fa fa-sort"></i></span></th>
            <th>Win Percentage<span style="float: right"><i class="fa fa-sort"></i></span></th>
            <th>Winner<span style="float: right"><i class="fa fa-sort"></i></span></th>
            <th>Username<span style="float: right"><i class="fa fa-sort"></i></span></th>
            <th>Level<span style="float: right"><i class="fa fa-sort"></i></span></th>
            <th>Template / Share</th>
          </tr>
        </thead>
      
        <tbody>
          <tr>
            <td>Stars</td>
            <td>Decision ID</td>
            <td class="text-center">Decision Title<br> Choice titleA VS Choice titleB</td>
            <td>Date Created</td>
            <td>Win Percentage</td>
            <td>Winner</td>
            <td>Complete</td>
            <td>Privacy</td>
            <td>  <button type="button" class="btn btn-danger btn-sm m-0 waves-effect"><i class="fa fa-paste"></i></button>
              <button type="button" class="btn btn-primary btn-sm m-0 waves-effect"><i class="fa fa-share-alt-square fa-lg"></i></button>
            </td>
          </tr>
          <tr>
            <td>223</td>
            <td>45</td>
            <td class="text-center">Which is the better season? <br> Summer VS Winter</td>
            <td>11/23/17</td>
            <td>68</td>
            <td>Summer</td>
            <td>iAMaUSER</td>
            <td>1</td>
            <td>  <button type="button" class="btn btn-danger btn-sm m-0 waves-effect"><i class="fa fa-paste"></i></button>
                    <button type="button" class="btn btn-primary btn-sm m-0 waves-effect"><i class="fa fa-share-alt-square fa-lg"></i></button>
            </td>
          </tr>
          <tr>
            <td>223</td>
            <td>45</td>
            <td class="text-center">Which is the better season? <br> Summer VS Winter</td>
            <td>11/23/17</td>
            <td>68</td>
            <td>Summer</td>
            <td>iAMaUSER</td>
            <td>1</td>
            <td>  <button type="button" class="btn btn-danger btn-sm m-0 waves-effect"><i class="fa fa-paste"></i></button>
                  <button type="button" class="btn btn-primary btn-sm m-0 waves-effect"><i class="fa fa-share-alt-square fa-lg"></i></button>
            </td>
          </tr>
        </tbody>
      </table>
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
	
	     <!-- TABLE JS SCRIPTS-->
        <script src="<c:url value="/resources/js/tables/jquery.dataTables.js"/>"></script>
        <script src="<c:url value="/resources/js/tables/dataTables.bootstrap4.js"/>"></script>
        <script src="<c:url value="/resources/js/tables/datatables.js"/>"></script>
    
	
</body>
</html>
   
   
   
   