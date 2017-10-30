<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
  <script	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
 <!-- <link href="./resources/css/Details.css" rel="stylesheet" type="text/css"/>-->
  <!--<link href="./resources/css/adding.css" rel="stylesheet" type="text/css"/>-->
 <!-- <link href="adding1.css" rel=stylesheet" type="text/css"/>-->
  
   
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
    background-image:linear-gradient(rgba(0,0,0,.5), rgba(0,0,0,.5)), url("https://ak2.picdn.net/shutterstock/videos/18034120/thumb/12.jpg");
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
    position: absolute;
    width: 100%;
    height: 100%;
    top: 0;
    left: 0;
}
.hero-text {
    text-align: left;
	position: absolute;
    top: 5% !important ;
    left: 20%;
    transform: translate(-50%, -50%);
    
	 background: none;
    height: 14px;
    color: #ffff00;
	
}
.button{
  border-radius: 4px;
  background-color: #f4511e;
  border: none;
  color: #FFFFFF;
  text-align: center;
  font-size: 28px;
  padding: 20px;
  width: 200px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
}

.button span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.button span:after {
  content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

.button:hover span {
  padding-right: 25px;
}

.button:hover span:after {
  opacity: 1;
  right: 0;
}
  </style>
 <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css" rel="stylesheet"/>
</head>
<body class="main" >
<jsp:include page="header.jsp"/>

<br/>
<div class="kk">
<div class="container min-height" style="margin-top: 10% " >
<div class="hero-text">
<h1>Name : ${name}</h1>
<h1>Shipping Address : ${add}</h1>
<h1>Phone : ${phone}</h1>
<h1>Email : ${email}</h1>
<h1>Total : ${tot}</h1>
<a href="Confirm">
<div class="btn btn-Primary">
<button  type="button" class="btn btn-success" >Success</button>
</div>
</a>
</div>
</div>
</div>
	
</body>
</html>