<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
  <script	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link href="./resources/css/Details.css" rel="stylesheet" type="text/css"/>
  <link href="./resources/css/adding.css" rel="stylesheet" type="text/css"/>
  <style>.carousel-inner > .item > img { width:100%; height:350px; } </style>
 <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css" rel="stylesheet"/>
 
 <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
<script src="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.9/jquery-ui.js" type="text/javascript"></script>
<link href="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.9/themes/blitzer/jquery-ui.css"
    rel="stylesheet" type="text/css" /></head>
<style>
.kk {
    background-image: linear-gradient(rgba(0,0,0,.4), rgba(0,0,0,.4)), url("${pageContext.request.contextPath}/resources/images/c1.jpg");   
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
    position: relative;
    width: 100%;
    height: 100%;
    top: 0;
    left: 0;
}
</style>
	
<body>
<div class="kk">
<jsp:include page="header.jsp" />

<div style="margin-top: 10%;" align="CENTER">

<h1 style="color:white;"> <b>PRODUCT IS ADDED TO CART</b> </h1>
<hr size="10" >
<br>
<br>
<div>
<div>
<a href="viewCart"><button type="button" style="background-color: #f4511e;border-style: hidden;width:200px;" class="btn btn-primary">VIEW CART</button></a>
</div>
</div>
</div>
</div>
</body>
</html>