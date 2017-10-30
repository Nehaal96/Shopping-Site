<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="image" value="/resources/image" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">



<html lang="en">
<head>
 
  <title>Prokart</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href="./resources/css/New.css" rel="stylesheet" type="text/css"/>
  </head>
  <style>
  .navbar {
    margin-bottom: 0 !important;
    background-color: #f4511e !important;
    z-index: 9999;
    border: 0 !important;
    font-size: 11px !important;
    line-height: 1.42857143 !important;
    letter-spacing: 4px;
    border-radius: 0 !important;
    padding: 2px 10px !important;
}

.navbar li a, .navbar .navbar-brand {
    color: #fff !important;
}

.navbar-nav li a:hover, .navbar-nav li.active a {
    color: #f4511e !important;
    background-color: #ffffcc !important;
}

.navbar-default .navbar-toggle {
    border-color: transparent !important;
    color: #fff !important;
}
</style>
  <script>
function openNav() {
    document.getElementById("mySidenav").style.width = "250px";
    document.getElementById("main").style.marginLeft = "250px";
    document.body.style.backgroundColor = "rgba(0,0,0,0.4)";
}

function closeNav() {
    document.getElementById("mySidenav").style.width = "0";
    document.getElementById("main").style.marginLeft= "0";
    document.body.style.backgroundColor = "white";
}
</script>
  <body >
  <!--------------------*****************************************Navigation Bar****************************************------------------------------------>
  <nav class="navbar navbar-default navbar-fixed-top">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span> 
      </button>
      <a class="navbar-brand" id="hh" href="#"><b>ProKart</b></a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
	<ul class="nav navbar-nav navbar-right">	
        <!------------------------------------****************Sign up******************--------------------------------------->	
	    <c:if test="${pageContext.request.userPrincipal.name == null }">
	      <li>
		   <a href="registration"><span class="glyphicon glyphicon-user"></span> Sign Up</a>
		  </li>
		
		</c:if>
		<!--------------------------------------------------Login Tab-------------------------------------------------->
		<li>
		
		<c:if test="${pageContext.request.userPrincipal.name  == 'admin@gmail.com'}">
		<li>
		<a href="<c:url value="/admin/adding" />" role="button" aria-haspopup="true" aria-expanded="false">Add</a>
		</li>
		</c:if>
		
		<c:if test="${pageContext.request.userPrincipal.name  == null}">
	    <li><a href="<c:url value="/login"/>" role="button" aria-haspopup="true" aria-expanded="false">
		<span class="glyphicon glyphicon-log-in"></span> Login</a>
		</li>
		</c:if>
		
		</li>
		<!--------------------------------------------------Cart Symbol Badge-------------------------------------------->
		 <!--   	<c:if test="${pageContext.request.userPrincipal.name  =='name'}">
		   <li><a href="viewCart"><span class="badge">5</span><span class="glyphicon glyphicon-shopping-cart"></span></a></li>
     </c:if>-->
         </ul>
<!-------------------------------**********************************Tabs start******************************************---------------->	
      <ul class="nav navbar-nav navbar-right">
        <li><a href="./">HOME</a></li>
		
		
		<!--------------------------------Category------------------------------------>
		<!--<c:if test="${pageContext.request.userPrincipal.name  != 'admin@gmail.com'}">
        <li class="dropdown">
		<a class="dropdown-toggle" data-toggle="dropdown" href="#contact">CATEGORY</a>
		<ul class="dropdown-menu">
		    <c:forEach items="${catlist}" var="p">
				<li><a href="productfilter?id=${p.c_id}">${p.c_name}</a></li>
			</c:forEach>
		</ul>
		
		</li>
		</c:if>-->
		<c:if test="${pageContext.request.userPrincipal.name  != 'admin@gmail.com'}">
        <li>
		<a href="#contact"style="cursor:pointer" onclick="openNav()">CATEGORY</a>
		<div id="mySidenav" class="sidenav">
		<ul>
		    <c:forEach items="${catlist}" var="p">
		    <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
				<li><a href="productfilter?id=${p.c_id}">${p.c_name}</a></li>
			</c:forEach>
			</ul> 
		</div>
		
		</li>
		
		</c:if>
		<!------------------------------------------------------------------------------------------------------------>
		
        <li><a href="aboutus">ABOUT US</a></li>
        <li><a href="#pricing">FASHION GALLERY</a></li>
        	<c:if test="${pageContext.request.userPrincipal.name  != null}">
        	<li><a href="viewCart"><span class="badge">5</span><span class="glyphicon glyphicon-shopping-cart"></span></a></li>
					<li><a>Welcome: ${pageContext.request.userPrincipal.name}</a></li>
					<li><a href='<c:url value="/logout" />'>SIGN OUT</a></li>
		</c:if>
      </ul>
<!-------------------------------******************************************Tabs End*************************************************---------------------->
	  
	  </div>
  </div>
  
</nav>
<!-------------------------------****************************************NavBar ends**********************************************-------------------------->
</body>
</html>
