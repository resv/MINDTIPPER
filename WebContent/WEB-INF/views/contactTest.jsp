<%@ page language="java" contentType="text/html; charset=ISO-8859-1" 
    pageEncoding="ISO-8859-1"%>
    
    <!-- TAGLIB FOR RESOURCES -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
    
<!DOCTYPE html>
<html>

<head>
<!----------------------------HEADER---------------------------->
	<%@include file="/WEB-INF/views/static/header.jsp"%>
	<title>Contact Us - MIND TIPPER</title>
</head>
	
<body>
<!----------------------------NAVBAR---------------------------->
	<%@include file="/WEB-INF/views/static/navbar.jsp"%>
	
<!----------------------------CONTENT---------------------------->


<!-- CONTACT SECTION, TWITTER LINK ICON LINK INSIDE h2 TAG, CSS STYLING IS INTERNAL NO UNDERLINE OVER HOVER -->
<section class="js-scroll-trigger" style="padding: 12rem 2rem 4rem; height: auto;">
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
	
	
	
	
	
	
	
<!----------------------------FOOTER---------------------------->
	<%@include file="/WEB-INF/views/static/footer.jsp"%>
</body>
</html>