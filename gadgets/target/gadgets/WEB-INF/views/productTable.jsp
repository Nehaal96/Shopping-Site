<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
  <script	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
  <link href="./resources/css/Details.css" rel="stylesheet" type="text/css"/>
  
 <style>.carousel-inner > .item > img { width:100%; height:350px; } </style>
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
    background: rgba(0,0,0, 0.6);
    position: absolute;
    width: 100%;
    height: 100%;
    top: 0;
    left: 0;
}
</style>
<body>
<div class="kk">
<jsp:include page="header.jsp"/>

  <hr/>
  <br/>
  <br/>
  
 <table  class="table table-striped">
 	<thead style="backgroung-color: transparent;">
 		<tr style="color: white;">
 			<th>Id</th>
 			<th>Brand</th>
 			<th>Name</th>
 			<th>Description</th>
 			<th>Price</th>
 		</tr>
 	</thead>
 	<tbody style="backgroung-color: transparent;">
 		<c:forEach var="lists" items="${ProductModel}">
 		     <tr>
 		     <td>
 		     <li style="color: white;">
 		     ${lists.id}
 		     </li>
 		     </td>
 		     
 		     <td>
 		     <li style="color: white;">
 		     ${lists.name}
 		     </li>
 		     </td>
 		     </tr>
 		</c:forEach>
 		
 		
 	</tbody>
 
 
 
 </table>
 </div>
 <jsp:include page="footer.jsp"/>
</body>
</html>
