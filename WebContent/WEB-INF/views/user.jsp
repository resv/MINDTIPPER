<%@ page language="java" contentType="text/html; charset=ISO-8859-1" 
    pageEncoding="ISO-8859-1"%>
    
    <!-- TAGLIB FOR RESOURCES -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
    
<!DOCTYPE html>
<html>

<head>
<!----------------------------HEADER---------------------------->
	<%@include file="/WEB-INF/views/static/header.jsp"%>
	<title>USERNAME GOES HERE (userpage) - MIND TIPPER</title>
</head>
	
<body>
<!----------------------------NAVBAR---------------------------->
	<%@include file="/WEB-INF/views/static/navbar.jsp"%>
	
<!----------------------------CONTENT---------------------------->

<!-- WELCOME JUMBOTRON -->
<section class="js-scroll-trigger" style="padding: 7rem 0rem 0rem; height: auto;">
  <div class="container">
    <div class="row">
      <div class="col-md-10 col-lg-8 mx-auto text-center">

        <h2 class="text-black mb-5 animated wow fadeIn">Welcome USERNAME!</h2>

      </div>
    </div>
  </div>
</section>


<!-- TITLE AND SETTINGS BAR -->
<div class="col-md-6 col-lg-3 mx-auto js-scroll-trigger text-center mb-5 animated wow fadeIn">
    
  <div>
  <div class="card-header">
               
      <div>
        <i class="fa fa-table"></i>
        Your Decision Activity
      </div>
       
      <div class="small text-muted text-center">Updated yesterday at 11:59 PM</div>
     
      <div>
          <button type="button" class="btn btn-info btn-sm m-0 waves-effect"><i class="fa fa-gear fa-sm"></i> Settings</button>
      </div>

  </div>
  </div>
</div>  


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
            <th>Complete<span style="float: right"><i class="fa fa-sort"></i></span></th>
            <th>Privacy<span style="float: right"><i class="fa fa-sort"></i></span></th>
            <td></td>
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
            <td>  <button type="button" class="btn btn-outline-primary btn-sm m-0 waves-effect">Edit</button>
                  <button type="button" class="btn btn-outline-primary btn-sm m-0 waves-effect">Share</button>
            </td>
          </tr>
          <tr>
            <td>Stars</td>
            <td>Decision ID</td>
            <td class="text-center">Decision Title <br> Choice titleA VS Choice titleB</td>
            <td>Date Created</td>
            <td>Win Percentage</td>
            <td>Winner</td>
            <td>Complete</td>
            <td>Privacy</td>
            <td>  <button type="button" class="btn btn-danger btn-sm m-0 waves-effect"><i class="fa fa-edit fa-lg"></i></button>
              <button type="button" class="btn btn-primary btn-sm m-0 waves-effect"><i class="fa fa-share-alt-square fa-lg"></i></button>
            </td>
          </tr>
          <tr>
            <td>Stars</td>
            <td>Decision ID</td>
            <td class="text-center">Decision Title <br> Choice titleA VS Choice titleB</td>
            <td>Date Created</td>
            <td>Win Percentage</td>
            <td>Winner</td>
            <td>Complete</td>
            <td>Privacy</td>
            <td>  <button type="button" class="btn btn-danger btn-sm m-0 waves-effect"><i class="fa fa-edit fa-lg"></i></button>
                  <button type="button" class="btn btn-primary btn-sm m-0 waves-effect"><i class="fa fa-share-alt-square fa-lg"></i></button>
            </td>
          </tr>
        </tbody>
      </table>
    </div>
  </div>
</section>	
	
	
<!----------------------------FOOTER---------------------------->
	<%@include file="/WEB-INF/views/static/footer.jsp"%>
</body>
</html>