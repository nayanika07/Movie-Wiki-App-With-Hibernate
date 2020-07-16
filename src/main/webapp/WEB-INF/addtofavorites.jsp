<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add To Favorites</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
 <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
      <link type="text/css" rel="stylesheet" href="./resources/style.css">
      <link href='https://fonts.googleapis.com/css?family=Paprika' rel='stylesheet'>
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://code.getmdl.io/1.3.0/material.indigo-pink.min.css">
    <script defer src="https://code.getmdl.io/1.3.0/material.min.js"></script>
</head>

<body>
<div class="mdl-layout mdl-js-layout mdl-layout--fixed-header">
        <header class="mdl-layout__header">
            <div class="mdl-layout__header-row">
                <!-- Title -->
                <span class="mdl-layout-title">Movie Cruiser</span>
                <!-- Icon -->
                <img class="mdl-layout-icon logo" src="https://i.ibb.co/V2cnc3N/pinklogo.png"></img>
                <!-- Add spacer, to align navigation to the right -->
                <div class="mdl-layout-spacer"></div>
                <!-- Navigation -->
                <nav class="mdl-navigation">
                    <a class="mdl-navigation__link" href="/customermovielist">Movie List</a>
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

<div class="container"> 
<div class="editbox">
	<h1 class="text-primary" style="font-family: Paprika"> Add To Favorite List - View & Confirm</h1>
		<f:form method="post" action="updateMovieInFavoriteList" class="col-6" modelAttribute="movie">
			
			
			<div class="form-group">
	          <div class="uneditable">
				<f:label path="id">Movie Id</f:label>
				<f:input path="id" class="form-control"/>
				<f:errors  path="id" cssStyle="color:red"></f:errors>
			</div>
			</div>
			
			<div class="form-group">
			<div class="uneditable">
				<f:label path="link">Movie Image Source</f:label>
				<f:input path="link" class="form-control"/>
				<f:errors  path="link" cssStyle="color:red"></f:errors>
				</div>
			
			<div class="form-group">
			<div class="uneditable">
				<f:label path="title">Movie Title</f:label>
				<f:input path="title" class="form-control"/>
				<f:errors  path="title" cssStyle="color:red"></f:errors>
				</div>
			
			</div>
				<div class="form-group">
				<div class="uneditable">
				<f:label path="boxoffice">Movie Box Office Collection(In CR)</f:label>
				<f:input path="boxoffice" class="form-control"/>
				<f:errors  path="boxoffice" cssStyle="color:red"></f:errors>
			</div>
			</div>
			<div class="form-group control-radio">
			<div class="uneditable">
				<f:label path="active">Active?</f:label>
				<f:radiobutton path="active" value="Yes" label="Yes"/>
				<f:radiobutton path="active" value="No" label="No"/>
			</div>
			</div>
			
			</div>
				<div class="form-group">
				<div class="uneditable">
				<f:label path="dateofrelease">Date Of Release</f:label>
				<f:input path="dateofrelease" class="form-control"/>
				<f:errors  path="dateofrelease" cssStyle="color:red"></f:errors>
			
			</div>
           </div>
			
			<div class="form-group">
			<div class="uneditable">
				<f:label path="genre">Genre</f:label>
				<f:select path="genre" class="form-control">
					<f:option value="">Select Genre</f:option>
					<f:option value=" Animation">Animation</f:option>
					<f:option value=" Adventure">Adventure</f:option>
					<f:option value=" Comedy">Comedy</f:option>
					<f:option value=" Romance">Romance</f:option>
					<f:option value=" Fantasy">Fantasy</f:option>
					<f:option value=" Thriller">Thriller</f:option>
					<f:option value=" Drama">Drama</f:option>
				</f:select>
				<f:errors  path="genre" cssStyle="color:red"></f:errors>
			
			</div>
			</div>
			
			
			<div class="form-group control-radio">
			<div class="uneditable">
				<f:label path="hasteaser">HasTeaser?</f:label>
				<f:radiobutton path="hasteaser" value="Yes" label="Yes"/>
				<f:radiobutton path="hasteaser" value="No" label="No"/>
			</div>
			</div>
			  
			   <div class = "addincartfont">
				<div class="form-group control-radio">
				<f:label path="fav"><h3>Add To Favorite List? &emsp;</h3></f:label>
				<f:radiobutton path="fav" value="Yes" label="Yes"/>&emsp;
				<f:radiobutton path="fav" value="No" label="No"/>
			</div>
			</div>
		
		
		<input type="submit" value="ADD TO MY FAVORITES" class="btn btn-primary btn-lg" href="/myfavorites"/>
		</f:form>
	</div>
	<br>
	<br>
	</div>
	<footer class="mdl-mini-footer ">
            <div class="mdl-mini-footer__left-section">
                <div class="mdl-logo">Copyright &copy; 2019 - Nayanika</div>
            </div>
        </footer>

</body>
</html>