<%@ page language="java" contentType="text/html; charset=ISO-8859-1" 
    pageEncoding="ISO-8859-1"%>
    
    <!-- PREREQ FOR RESOURCES -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>New Decision - MIND TIPPER</title>

  	<!-- BOOTSTRAP API RESOURCE PATH -->
	<link href="<c:url value="/resources/API/bootstrap/css/bootstrap.min.css"/>" rel="stylesheet">
	
	<!-- MD BOOTSTRAP REFERENCES -->
    <%-- <link href="<c:url value="/resources/API/MDB Free/css/mdb.min.css"/>" rel="stylesheet"> --%>
    <%-- <link href="<c:url value="/resources/API/MDB Free/css/addons/datatables.min.css"/>" rel="stylesheet"> --%>
    
    <!-- FONT REFERENCES -->
	
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
   
   
   

<!-- NEW DECISION JUMBOTRON -->
<section class="js-scroll-trigger" style="padding: 7rem 0rem 2rem; height: auto;">
  <div class="container">
    <div class="row">
      <div class="col-md-10 col-lg-8 mx-auto text-center">

              <h2 class="text-black mb-5">NEW DECISION</h2>

      </div>
    </div>
  </div>
</section>


<!-- Editable table -->
<div class="card">
    <h3 class="card-header text-center font-weight-bold text-uppercase py-4">DECISION #X</h3>
    <div class="card-body">
        <div id="table" class="table-editable">

            <table class="table table-hover table-bordered table-responsive-md text-center" id="newTable">
               
                <tr>
                    <th class="text-center"></th>
                    <th class="text-center black white-text" contenteditable="true" colspan="2"><i class="fa fa-edit"></i> Decision Title</th>
                    <th class="text-center"></th>
                </tr>

                <tr>
                    <th class="text-center"></th>
                    <th class="text-center bg-primary text-white" contenteditable="true"><i class="fa fa-edit"></i> Choice Title A</th>
                    <th class="text-center bg-warning text-dark" contenteditable="true"><i class="fa fa-edit"></i> Choice Title B</th>
                    <th class="text-center"></th>
                </tr>

                <!-- This is our clonable table line -->
                <tr>
                    <td>
                        <span class="table-up"><a href="#!" class="indigo-text"><i class="fa fa-long-arrow-up" aria-hidden="true"></i></a></span>
                        <span class="table-down"><a href="#!" class="indigo-text"><i class="fa fa-long-arrow-down" aria-hidden="true"></i></a></span>
                    </td>
                    <td class="text-center" contenteditable="true">
                            <i class="fa fa-edit"></i> Detail A
                        <div class="custom-control custom-checkbox">
                            <input type="checkbox" class="custom-control-input" id="selectA1">
                            <label class="custom-control-label" for="selectA1">Select A</label>
                        </div>
                    </td>
                    <td class="text-center" contenteditable="true">
                            <i class="fa fa-edit"></i> Detail B
                        <div class="custom-control custom-checkbox">
                            <input type="checkbox" class="custom-control-input" id="selectB1">
                            <label class="custom-control-label" for="selectB1">Select B</label>
                        </div>
                    </td>
                    <td>
                        <span class="table-remove"><button type="button" class="btn btn-danger btn-rounded btn-sm my-0">Remove</button></span>
                    </td>
                </tr>


                <!-- This is our clonable table line -->
                <tr>
                    <td>
                        <span class="table-up"><a href="#!" class="indigo-text"><i class="fa fa-long-arrow-up" aria-hidden="true"></i></a></span>
                        <span class="table-down"><a href="#!" class="indigo-text"><i class="fa fa-long-arrow-down" aria-hidden="true"></i></a></span>
                    </td>
                    <td class="text-center" contenteditable="true">
                            <i class="fa fa-edit"></i> Detail A
                        <div class="custom-control custom-checkbox">
                            <input type="checkbox" class="custom-control-input" id="selectA2">
                            <label class="custom-control-label" for="selectA2">Select A</label>
                        </div>
                    </td>
                    <td class="text-center" contenteditable="true">
                            <i class="fa fa-edit"></i> Detail B
                        <div class="custom-control custom-checkbox">
                            <input type="checkbox" class="custom-control-input" id="selectB2">
                            <label class="custom-control-label" for="selectB2">Select B</label>
                        </div>
                    </td>
                    <td>
                        <span class="table-remove"><button type="button" class="btn btn-danger btn-rounded btn-sm my-0">Remove</button></span>
                    </td>
                </tr>


                <!-- This is our clonable table line -->
                <tr>
                    <td>
                        <span class="table-up"><a href="#!" class="indigo-text"><i class="fa fa-long-arrow-up" aria-hidden="true"></i></a></span>
                        <span class="table-down"><a href="#!" class="indigo-text"><i class="fa fa-long-arrow-down" aria-hidden="true"></i></a></span>
                    </td>
                    <td class="text-center" contenteditable="true">
                            <i class="fa fa-edit"></i> Detail A
                        <div class="custom-control custom-checkbox">
                            <input type="checkbox" class="custom-control-input" id="selectA3">
                            <label class="custom-control-label" for="selectA3">Select A</label>
                        </div>
                    </td>
                    <td class="text-center" contenteditable="true">
                            <i class="fa fa-edit"></i> Detail B
                        <div class="custom-control custom-checkbox">
                            <input type="checkbox" class="custom-control-input" id="selectB3">
                            <label class="custom-control-label" for="selectB3">Select B</label>
                        </div>
                    </td>
                    <td>
                        <span class="table-remove"><button type="button" class="btn btn-danger btn-rounded btn-sm my-0">Remove</button></span>
                    </td>
                </tr>
               

                <!-- THIS IS THE + GENERATOR, !** AT THE TR CLASS  "<tr class="hide">"-->   
                <tr class="hide">
                    <td>
                        <span class="table-up"><a href="#!" class="indigo-text"><i class="fa fa-long-arrow-up" aria-hidden="true"></i></a></span>
                        <span class="table-down"><a href="#!" class="indigo-text"><i class="fa fa-long-arrow-down" aria-hidden="true"></i></a></span>
                    </td>
                    <td class="text-center" contenteditable="true">
                            <i class="fa fa-edit"></i> Detail A
                        <div class="custom-control custom-checkbox">
                            <input type="checkbox" class="custom-control-input" id="selectA4">
                            <label class="custom-control-label" for="selectA4">Select A</label>
                        </div>
                    </td>
                    <td class="text-center" contenteditable="true">
                            <i class="fa fa-edit"></i> Detail B
                        <div class="custom-control custom-checkbox">
                            <input type="checkbox" class="custom-control-input" id="selectB4">
                            <label class="custom-control-label" for="selectB4">Select B</label>
                        </div>
                    </td>
                    <td>
                        <span class="table-remove"><button type="button" class="btn btn-danger btn-rounded btn-sm my-0">Remove</button></span>
                    </td>
                </tr>


            </table>
            <span class="table-add mb-3 mr-2" style="float:right"><a href="#!" class="text-success">Add another detail <i class="fa fa-plus fa-2x" aria-hidden="true"></i></a></span>
        </div>
    </div>
</div>
<!-- Editable table -->


        
          
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
        <!-- MD TABLE JS SCRIPTS-->
        <script src="<c:url value="/resources/js/tables/mdtablejs.js"/>"></script>
	
</body>
</html>
   
   

   