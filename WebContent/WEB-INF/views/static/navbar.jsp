<!-- NAVBAR -->
	<nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
	  <div class="container">
	    <a class="navbar-brand btn js-scroll-trigger" href="<c:url value="/" />">Mind Tipper</a>
	    
	    <!-- STATIC SIZE, SEARCH BAR USING UNICODE  -->
	    <!-- <input class="col-lg-3 col-md-3 col-sm-5 col-xs-5 form-control" type="text" name="searchbar" id="searchbar" placeholder="&#128269 Search"/> -->
	
	    <!-- RESPONSIVE SIZE, SEARCH BAR USING UNICODE  -->
	    <input class="form-control js-scroll-trigger searchBar" type="text" name="searchbar" id="searchbar" placeholder="&#128269 Search Decisions"/>
	
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