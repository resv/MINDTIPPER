<%@ page language="java" contentType="text/html; charset=ISO-8859-1" 
    pageEncoding="ISO-8859-1"%>
    
    <!-- TAGLIB FOR RESOURCES -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
    
<!DOCTYPE html>
<html>

<head>
<!----------------------------HEADER---------------------------->
	<%@include file="/WEB-INF/view/static/header.jsp"%>
	<title>MENU - MIND TIPPER</title>
</head>
	
<body>
<!----------------------------NAVBAR---------------------------->
	<%@include file="/WEB-INF/view/static/navbar.jsp"%>
	
<!----------------------------CONTENT---------------------------->

	
	
	
	
<!-- learnOrPick SECTION ( ON PAGE SEARCH BAR WITH INTERNAL STYLE CSS ) -->
<section class="js-scroll-trigger" style="padding: 7rem 2rem 5rem; height: auto;">
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
                  <h4 class="text-uppercase m-0"><i class="fa fa-play fa-lg" style="color:yellowgreen"></i> <br><br> Tutorial</h4>
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
          <a href="<c:url value="/search" />" style="color:black; text-decoration: none;">
              <div class="card py-4 h-100 animated wow zoomIn">
                  <div class="card-body text-center">
                  <h4 class="text-uppercase m-0"><i class="fa fa-paste fa-lg"style="color:red"></i> <br><br> Template</h4>
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
          <a href="<c:url value="/newDecision" />" style="color:black; text-decoration: none;">
              <div class="card py-4 h-100 animated wow zoomIn">
                  <div class="card-body text-center">
                  <h4 class="text-uppercase m-0 animated wow pulse infinite delay-1s"><i class="fa fa-plus fa-lg" style="color:blue"></i> <br><br> New Decision</h4>
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

	
	
	
<!----------------------------FOOTER---------------------------->
	<%@include file="/WEB-INF/view/static/footer.jsp"%>
</body>
</html>