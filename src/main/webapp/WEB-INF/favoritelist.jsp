<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
      <link type="text/css" rel="stylesheet" href="./resources/style.css">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
      <link href='https://fonts.googleapis.com/css?family=Paprika' rel='stylesheet'>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://code.getmdl.io/1.3.0/material.indigo-pink.min.css">
    <script defer src="https://code.getmdl.io/1.3.0/material.min.js"></script>
<title>Movie Wiki - Favorites</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<!--  -->

</head>
<body>
 <div class="mdl-layout mdl-js-layout mdl-layout--fixed-header">
        <header class="mdl-layout__header">
            <div class="mdl-layout__header-row">
                <!-- Title -->
                <span class="mdl-layout-title">Movie Wiki</span>
                <!-- Icon -->
                <img class="mdl-layout-icon logo" src="https://i.ibb.co/V2cnc3N/pinklogo.png"></img>
                <!-- Add spacer, to align navigation to the right -->
                <div class="mdl-layout-spacer"></div>
                <!-- Navigation -->
                <nav class="mdl-navigation">
                    <a class="mdl-navigation__link" href="/customermovielist">Movie List</a>&nbsp;|
                </nav>
                 <nav class="mdl-navigation">
                    <a class="mdl-navigation__link" href="/myfavorites">My Favorites&nbsp;<span class="glyphicon glyphicon-star"></a>
                </nav>
            </div>
        </header>
        <div class="mdl-layout__drawer">
            <span class="mdl-layout-title">Select Role</span>
            <nav class="mdl-navigation">
                <a class="mdl-navigation__link" href="/index">Admin</a>
                <a class="mdl-navigation__link" href="/customermovielist">Customer</a>
            </nav>
        </div>
        <br><br>
  
	<center><h1 style="font-family: Paprika"><b>My Favorites</b> <span class="glyphicon glyphicon-star"></span></h1></center>
	<br>
	<br>
	<form action="add">
		
	</form>
	<br>
	 <!--    
<div class="searchbox">

<form class="searchform" action="">
  <input type="text" placeholder="Search.." name="getsearch">
  <button type="submit" href="searchresults?id=${menu_item.name }"><i class="fa fa-search"></i></button>
</form>
 </div>

 -->

		<!-- cards -->
		<div class="container">
		
		<div class="row">		
		<c:forEach items="${movies}" var="mov" varStatus="loopCounter">
		   <c:choose>
		     <c:when test="${mov.active== true}">
		        <c:set var="avail" value= "Active" />
		     </c:when>
		     <c:otherwise>
		      <c:set var="avail" value= "InActive" />
		     </c:otherwise>
		     </c:choose>
			<div class="card col-sm-3 mt-5" class="cardmargins" style="width: 15rem;background-color:  #ccccff;">
				<img class="card-img-top" src=${mov.link } height="265" width="370" style= "border:5px solid  #668cff" alt="image">
				<div class="card-body">
					<div class="card-title">
						<h4 style="font-family: Paprika" ><span id="title"><b>${mov.title}</b></span></h4>
						<span id="boxOffice" class="float-right">${mov.boxoffice }&nbsp;CR</span>
					</div>
					<div>
						<span id="genre" class="text-dark"><span class="badge badge-primary">${avail }</span ><br><b>${mov.genre }</b></span>
					</div>
					<div class="bottom-wrap">
							<span class="launch badge badge-success"><i class="fa fa-clock-o"></i>Release Date</span>
						<a href="/deletefromfavorites?id=${mov.id }" onclick="return confirm('Do you wish to delete this movie?')" class="btn btn-danger float-right" style="color: white;">Delete<i class="fa fa-trash"></i> </a>
                    </div>
					<div>
						<span  id="dateofLaunch" class="text-dark"><b>${mov.dateofrelease }</b></span>
					</div>
				</div>
			</div>
			&emsp; &emsp;
			<br>
			<c:set var = "totalitems" scope = "session" value = "${loopCounter.count}"/>
		</c:forEach>			
	</div>	
	<br>
	<br>
	  <hr class="my-4">
	 <h4 style="font-family: Paprika"><b><c:out value="Total number of movies in my favorite list: ${totalitems}"/></b></h4>
		</div>
		<!--  -->
		
		
		<br>
	<footer class="mdl-mini-footer ">
            <div class="mdl-mini-footer__left-section">
                <div class="mdl-logo">Copyright &copy; 2019 - Nayanika</div>
            </div>
        </footer>
</body>
</html>