<%@ page language="java" contentType="text/html; charset=ISO-8859-1" 
    pageEncoding="ISO-8859-1"%>
    
    <!-- TAGLIB FOR RESOURCES -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
    
<!DOCTYPE html>
<html>

<head>
<!----------------------------HEADER---------------------------->
	<%@include file="/WEB-INF/view/static/header.jsp"%>
	<title>Search - MIND TIPPER</title>
</head>
	
<body>
<!----------------------------NAVBAR---------------------------->
	<%@include file="/WEB-INF/view/static/navbar.jsp"%>
	
<!----------------------------CONTENT---------------------------->


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
      <table class="table table-bordered" id="dataTable">
        <thead>
          <tr style="cursor: pointer">
           	<th>Decision ID<span style="float: right"><i class="fa fa-sort"></i></span></th>
            <th>Stars<span style="float: right"><i class="fa fa-sort"></i></span></th>
            <th>Decisions<span style="float: right"><i class="fa fa-sort"></i></span></th>
            <th>Date Created<span style="float: right"><i class="fa fa-sort"></i></span></th>
            <th>Win Percentage<span style="float: right"><i class="fa fa-sort"></i></span></th>
            <th>Winner<span style="float: right"><i class="fa fa-sort"></i></span></th>
            <th>User Info<span style="float: right"><i class="fa fa-sort"></i></span></th>
            <th>Template / Share</th>
          </tr>
        </thead>
                        
		<tbody>
		<c:forEach var="tempDecisions" items="${decisions}">
          <tr>
            <td>#${tempDecisions.decision_id}</td>
            <td>${tempDecisions.star}</td>
            <td class="text-center">DECISION TITLE HERE <br> DECISIONCHOICEA HERE VS DECISIONCHOICEB HERE </td>
            <td>${tempDecisions.date_created}</td>
            <td>${tempDecisions.win_percent}%</td>
            <td>${tempDecisions.winner}</td>
            <td>#${tempDecisions.user_id} (USERNAME) (USERLVL)</td>
            <td>  <button type="button" class="btn btn-danger btn-sm m-0 waves-effect"><i class="fa fa-paste"></i></button>
                    <button type="button" class="btn btn-primary btn-sm m-0 waves-effect"><i class="fa fa-share-alt-square fa-lg"></i></button>
            </td>
          </tr>
          </c:forEach>
        </tbody>
       
      </table>
    </div>
  </div>
</section>	

	
	
	
	
	
<!----------------------------FOOTER---------------------------->
	<%@include file="/WEB-INF/view/static/footer.jsp"%>
</body>
</html>