<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>about us</title>

	
<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
	<script src="./resources/js/jquery.min.js"></script>
	<script src="./resources/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="./resources/css/jquery.dataTables.min.css">
	<link href="./resources/css/font-awesome.min.css" rel='stylesheet' type='text/css'>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
  </head>
  <style>
  h3 {
  display: inline-block;
  padding: 10px;
  background: #B9121B;
  border-top-left-radius: 10px;
  border-top-right-radius: 10px;
}
img{
opacity: 0.6;
}
.full-screen {
  background-size: cover;
  
  background-position: center;
  background-repeat: no-repeat;
}
  </style>
  <script>
  var $item = $('.carousel .item'); 
var $wHeight = $(window).height();
$item.eq(0).addClass('active');
$item.height($wHeight); 
$item.addClass('full-screen');

$('.carousel img').each(function() {
  var $src = $(this).attr('src');
  var $color = $(this).attr('data-color');
  $(this).parent().css({
    'background-image' : 'url(' + $src + ')',
    'background-color' : $color
  });
  $(this).remove();
});

$(window).on('resize', function (){
  $wHeight = $(window).height();
  $item.height($wHeight);
});

$('.carousel').carousel({
  interval: 6000,
  pause: "false"
});
  
  </script>
  <style>
  /* Place text in the middle of the image */
.hero-text {
    text-align: center;
	position: absolute;
    top: 50%;
    left: 65%;
    transform: translate(-50%, -50%);
    color: #ffcc00 !important;
	font-family:  Rockwell Extra Bold;
	font-size: 15px;
	
}
  
  </style>
  
  <body style="background-color:black;">
  <jsp:include page="header.jsp"/>
  <div class="container">
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">

      <div class="item active">
        <img src="${pageContext.request.contextPath}/resources/images/abt1.jpg" alt="Los Angeles" style="width:100%;">
        <div class="hero-text">
           <h1><b>Rated fastest growing website in top 20 </b> </h1>
            <h1><b>in</b></h1>
	       <h1><i><b>BUSSINESS TODAY</b></i></h1>
	        <br>
	        <br>
	    </div>
        <div class="carousel-caption">
          <h2>2015 acheivement</h2>
          <p>thank you, bussiness today!</p>
        </div>
      </div>

      <div class="item">
        <img src="${pageContext.request.contextPath}/resources/images/abt2.jpg" style="width:100%;">
         <div class="hero-text">
           <h1><b>Most stylish website category nomination </b> </h1>
                      <h1><b>in</b></h1>
	        <h1><i><b>TIMES NOW</b></i></h1>
	        <br>
	        <br>
	    </div>
        <div class="carousel-caption">
          <h2>2016 acheivement</h2>
          <p>Thank you,times now !</p>
        </div>
      </div>
    
      <div class="item">
        <img src="${pageContext.request.contextPath}/resources/images/abt3.jpg" alt="New York" style="width:100%;">
         <div class="hero-text">
           <h1><b>Customer satisfaction survey winner </b> </h1>
                       <h1><b>in</b></h1>
	          <h1><i><b>WORLD SURVEY ORGANISATION</b></i></h1>
	        <br>
	        <br>
	    </div>
        <div class="carousel-caption">
          <h2>2017 acheivement</h2>
          <p>thank you WSO</p>
        </div>
      </div>
  
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
  </div>
<jsp:include page="footer.jsp"/>
  
  </body>
  </html>