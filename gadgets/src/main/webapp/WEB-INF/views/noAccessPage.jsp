<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Access Denied Page</title>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
  <script	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
  <link href="./resources/css/Details.css" rel="stylesheet" type="text/css"/>
  <link href="./resources/css/adding.css" rel="stylesheet" type="text/css"/>
  
   
 <style>.carousel-inner > .item > img { width:100%; height:350px; } </style>
 <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css" rel="stylesheet"/>
</head>

<style>
 
html, body {
    height: 100%;
    width: 100%;
}

body {
    font-family: 'Raleway',sans-serif;
    position: relative;
    /*background: rgba(0, 0, 0, 0) url("../img/ptn.png") repeat scroll 0 0;*/
}
.main {
    position: relative;
}
.min-height {
    min-height: 380px;
}
.kk { 
   background-image:linear-gradient(rgba(0,0,0,.5), rgba(0,0,0,0.5)), url("http://ak6.picdn.net/shutterstock/videos/13717946/thumb/1.jpg");
    background-position: center;
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-size: cover;
    -moz-background-size: cover;
    -webkit-background-size: cover;
    position: fixed;
    top: 0;
    bottom: 0;
    right: 0;
    left: 0;
}

.kk:before {
    content: "";
    background: rgba(0,0,0, 0.0);
    position: absolute;
    width: 100%;
    height: 100%;
    top: 0;
    left: 0;
}
.hero-text {
    text-align: left;
	position: absolute;
    top: 15%;
    left: 20%;
    transform: translate(-50%, -50%);
    
	 background: none;
    height: 54px;
    color: #ffff00;
	font-size: 8px;
	
}
  </style>

<body>
<div class="kk"></div>
<jsp:include page="header.jsp"/>
<br/>
<div class="kk"></div>
<div class="container min-height" style="margin-top: 12%;" >
<div class="hero-text">
<h2>Access denied content</h2>
</div>
</div>
<jsp:include page="footer.jsp"/>
</body>
</html>