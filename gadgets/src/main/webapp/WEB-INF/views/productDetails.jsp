<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <title>Product View Page</title>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
  <script	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link href="./resources/css/Details.css" rel="stylesheet" type="text/css"/>
  <link href="./resources/css/adding.css" rel="stylesheet" type="text/css"/>
 
 
  
  
  

 <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css" rel="stylesheet"/>
</head>
<style>
.kk {
    background-image:linear-gradient(rgba(0,0,0,.5), rgba(0,0,0,0.5)), url("${pageContext.request.contextPath}/resources/images/c1.jpg");
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
.button {
  border-radius: 4px;
  background-color: #f4511e;
  border: none;
  color: #FFFFFF;
  text-align: center;
  font-size: 15px;
  padding: 6px;
  width: 100px;
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
 <script>
function sum() {
      var txtFirstNumberValue = document.getElementById('txt1').value;
      var txtSecondNumberValue = document.getElementById('txt2').value;
      var result = parseInt(txtFirstNumberValue) * parseInt(txtSecondNumberValue);
      if (!isNaN(result)) {
         document.getElementById('txt3').value = result;
      }
}
</script>
<br>
<body>
<div class="kk"></div>

	 <jsp:include page="header.jsp" />	
	<div class="container-fluid" style="margin-top:5%;">	
	
			<div class="col-md-12 product-info">
					<ul id="myTab" class="nav nav-tabs nav_tabs">
					<li class="active"><a href="#service-one" ><b style="color:white;">DESCRIPTION</b></a></li>
					</ul>
				
					
				</div>
				<hr>
				
    <div class="container-fluid">
    <div class="content-wrapper">	
		<div class="item-container">	
			<div class="container">	
				<div class="col-md-4">
					<div class="product col-md-3 service-image-left">
                    <br>
                    <br>
						<center>
<img id="item-display" src="./resources/images/${product.p_image}" alt="" width="150" height="150"></img>
						</center>
					</div>
					</div>
					
					<div class="product col-md-4 center">
                    <br>
                    <br>
						<center>
  
               <div class="desc">
               </div>
                    <h4 style="color: white;"><b>Product description:</b></h4>
                    <input type="text" id="txt4" name="desc" style="color:black;" value="${product.p_description}"/>
						</center>
						
					</div>
		
				
					 
				<div class="col-md-4">
				<div class="product-title" style="color:white;">${product.p_name}</div>
				
					<div style="color: white;" class="product-rating"><i class="fa fa-star gold"></i> <i class="fa fa-star gold"></i> <i class="fa fa-star gold"></i> <i class="fa fa-star gold"></i> <i class="fa fa-star-o"></i> </div>	
					<hr>
					<form action="productdetails" style="color:white;">
				
					<input type="hidden" style="color:black;" name="prodid" value="${product.p_id}"  onkeyup="sum();"/><br>
					
					<h4><b>ProductPrice:</b></h4>
					<input type="text" style="color:black;"id="txt1" name="prodprice" value="${product.p_price}" readonly onkeyup="sum();"/><br>
					
					<h4><b>ProductQuantity:</b></h4>
					<input type="text" style="color:black;" id="txt2" name="prodquantity" value="" onkeyup="sum();"/>
					
					<h4><b>TotalPrice:</b></h4>
					<input type="text" style="color:black;" id="txt3" name="pricetot" value=""/>
					<div class="product-stock">In Stock</div>
				the stock is	<div class="product-stock" >${cnt}</div>
					</div>
					
					<hr>
					<div class="btn-group cart">
						<input type="submit" class="button" class="btn btn-success" value="Add Cart"/>
							
					</div>
			</form>
					
				</div>
			</div> 
		
			</div>
		</div>
		
	</div>
	
	<br>
	<br>
	<br>
	<br>
	<br>

	<jsp:include page="footer.jsp" />
</body>
</html>