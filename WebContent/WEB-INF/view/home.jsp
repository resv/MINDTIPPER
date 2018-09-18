<%@ page language="java" contentType="text/html; charset=ISO-8859-1" 
    pageEncoding="ISO-8859-1"%>
    
    <!-- TAGLIB FOR RESOURCES -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
    
<!DOCTYPE html>
<html>

<head>
	<%@include file="/WEB-INF/view/static/header.jsp"%>
	<link href="<c:url value="/resources/css/navbarHome.css"/>" rel="stylesheet">
	<title>MIND TIPPER</title>
	<style>#noFixed { position:static;}</style>
</head>
	
<body>
<!-- NAVBAR -->
	<%@include file="/WEB-INF/view/static/navbar.jsp"%>
	
<!-- CONTENT -->	
	
	
	
<!-- landingPage // MASTHEAD -->
    <header class="masthead text-white text-center js-scroll-trigger" style="background-image: url('resources/imgs/bg3.jpg');" id="landingPage">
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
              <div class="animated wow pulse infinite">
            <a class="btn btn-primary js-scroll-trigger animated wow fadeInDown" id="landing4" href="<c:url value="/menu" />">Get Started</a>
          		</div>
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
              <p class="lead mb-0">Enter two options of the decision you have to make.
              						<br>e.g. Summer vs Winter</p>
            </div>
          </div>
          <div class="col-lg-4">
            <div class="features-icons-item mx-auto mb-5 mb-lg-0 mb-lg-3">
              <div class="features-icons-icon d-flex animated wow flipInX" id="stepByStep2">
                <i class="icon-list m-auto text-primary"></i>
              </div>
              <h3>What are our options?</h3>
              <p class="lead mb-0">Tell us the choice details, sort of a like a pros and cons list for each choice and select one.</p>
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
	<%@include file="/WEB-INF/view/static/footer.jsp"%>
</body>
</html>