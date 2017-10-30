<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.Date" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Confirm Page</title>
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
.kk {
    background-image:linear-gradient(rgba(0,0,0,.5), rgba(0,0,0,.7)), url("https://ak2.picdn.net/shutterstock/videos/18034120/thumb/12.jpg");
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
    background: rgba(0,0,0, 0.6);
    position: relative;
    width: 100%;
    height: 100%;
    top: 0;
    left: 0;
}
.hero-text {
    text-align: left;
	position: absolute;
    top: %10 !important ;
    left: 20%;
    transform: translate(-50%, -50%);
    font-family:  Rockwell Extra Bold !important;
	font-size: 28px !important;
	
	 background: none;
    height: 14px;
    color: #ffff00;
	
}

</style>
<body>
<div class="kk"></div>

<jsp:include page="header.jsp"></jsp:include>
<h2>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>




<div class="container" style="bg-color: silver;" width="20px" height="50px" align="center">
<div class="hero-text">
<b>Thank you Shopping <br/>Product will be delivered after two days from now.<br>
For Registered Address.</b>
</div>
</div>
</h2>


<%
session.invalidate();
%>

</body>
</html>