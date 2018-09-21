<%@ page language="java" contentType="text/html; charset=ISO-8859-1" 
    pageEncoding="ISO-8859-1"%>
    
    <!-- TAGLIB FOR RESOURCES -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
    
<!DOCTYPE html>
<html>

<head>
<!----------------------------HEADER---------------------------->
	<%@include file="/WEB-INF/view/static/header.jsp"%>
	<title>New Decision - MIND TIPPER</title>
</head>
	
<body>
<!----------------------------NAVBAR---------------------------->
	<%@include file="/WEB-INF/view/static/navbar.jsp"%>
	
<!----------------------------CONTENT---------------------------->


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
	
	
	
<!----------------------------FOOTER---------------------------->
	<%@include file="/WEB-INF/view/static/footer.jsp"%>
</body>
</html>