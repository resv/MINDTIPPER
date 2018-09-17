<%@ page language="java" contentType="text/html; charset=ISO-8859-1" 
    pageEncoding="ISO-8859-1"%>
    
    <!-- TAGLIB FOR RESOURCES -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
    
<!DOCTYPE html>
<html>

<head>
<!----------------------------HEADER---------------------------->
	<%@include file="/WEB-INF/views/static/header.jsp"%>
	<title>Template Decision - MIND TIPPER</title>
</head>
	
<body>
<!----------------------------NAVBAR---------------------------->
	<%@include file="/WEB-INF/views/static/navbar.jsp"%>
	
<!----------------------------CONTENT---------------------------->

	

   <!-- TEMPLATE DECISION JUMBOTRON -->
   <section class="js-scroll-trigger" style="padding: 7rem 0rem 2rem; height: auto;">
    <div class="container">
      <div class="row">
        <div class="col-md-10 col-lg-8 mx-auto text-center">
                <h2 class="text-black mb-5">XXXXXXX</h2>
        </div>
      </div>
    </div>
  </section>


<!-- table -->
<div class="card">
        <h3 class="card-header text-center font-weight-bold text-uppercase py-4">DECISION ID, STARS, DATE_CREATED, BYUSERNAME, LVL </h3>
        <div class="card-body">
            <div id="table" class="table-editable">
                <table class="table table-hover table-bordered table-responsive-md text-center" id="newTable">
                    <tr>
                        <th class="text-center black white-text display-1" contenteditable="true" colspan="2">Decision Title</th>
                    </tr>
                    <tr>
                        <th class="text-center bg-primary text-white" contenteditable="true">Choice Title A</th>
                        <th class="text-center bg-warning text-dark" contenteditable="true">Choice Title B</th>
                    </tr>
                    <!-- This is our clonable table line -->
                    <tr>
                        <td class="text-center" contenteditable="true">Detail A</td>
                        <td class="text-center" contenteditable="true">Detail B</td>
                    </tr>
                    <!-- This is our clonable table line -->
                    <tr>
                        <td class="text-center" contenteditable="true">Detail A</td>
                        <td class="text-center" contenteditable="true">Detail B</td>
                    </tr>
                    <!-- This is our clonable table line -->
                    <tr>
                        <td class="text-center" contenteditable="true">Detail A</td>
                        <td class="text-center" contenteditable="true">Detail B</td>
                    </tr>
                    <!-- THIS IS THE + GENERATOR, !** AT THE TR CLASS  "<tr class="hide">"-->   
                        <tr>
                            <td class="text-center" contenteditable="true">Detail A</td>
                            <td class="text-center" contenteditable="true">Detail B</td>
                        </tr>
                </table>
        	</div>
    	</div>
</div>
<!-- table -->

	
	
	
	
	
	
<!----------------------------FOOTER---------------------------->
	<%@include file="/WEB-INF/views/static/footer.jsp"%>
</body>
</html>