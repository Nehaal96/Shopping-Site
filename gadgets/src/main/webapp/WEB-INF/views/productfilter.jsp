<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml"
	xmlns:th="http://www.thymeleaf.org">
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
	<meta charset="utf-8" />
	<title>Product filter</title>
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
</style>
<body>
<div class="kk"></div>
<jsp:include page="header.jsp"/>
	<div class="container">
   <div class="row">
   <p></p>
   <h1>Products List</h1>   
   <p> </p><p> </p>
<div class="col-md-10 col-md-offset-1">
<div class="panel panel-default panel-table">
             <div style="background-color: #f4511e;" class="panel-heading">
               <div class="row">
                 <div class="col col-xs-6">
                   <h3 class="panel-title" ></h3>
                 </div>
                 <!-- <div class="col col-xs-6 text-right">
                   <button type="button" class="btn btn-sm btn-primary btn-create">Create New</button>
                 </div> -->
               </div>
             </div>
             <div class="panel-body">
               <table class="table table-striped table-bordered table-list">
                 <thead style="color:black;">
                   <tr>
                       <!-- <th><em class="fa fa-cog"></em></th> -->
                       <th class="hidden-xs">ID</th>
                       <th>Name</th>
                       <th>Price</th>
                       <th>Category</th>
                       <th>Supplier</th>
                       <th>Image</th>                                                                        
                   </tr> 
                 </thead>
                 <tbody style="color:black;">
                         
                         <c:forEach items="${list }" var="p">
                         <tr>
                         
                           <td class="hidden-xs">${p.p_id }</td>
                           <td>${p.p_name }</td>
                           <td>${p. p_price}</td>
                           <td>${p.category.c_name}</td>     
                           <td>${p.supplier.s_name}</td>         
                            
                           <td><a href="product?id=${p.p_id}"><img src="./resources/images/${p.p_image}"  class="img-rounded" alt="${p.p_name }" width="75px" height="50px"/></a></td>         
                           <tr>       
                         </c:forEach>
                       </tbody>
               </table>
           
             </div>
             <div class="panel-footer">
               
           </div>

</div></div></div>
<div class="row">
                 <div class="col col-xs-4">Page 1
                 </div>
                 <div style="margin-left:20%;" class="col col-xs-8">
                   <ul class="pagination hidden-xs pull-right">
                     <li><a href="#">1</a></li>
                     
                   </ul>
                   <ul class="pagination visible-xs pull-right">
                       <li><a href="#">«</a></li>
                       <li><a href="#">»</a></li>
                   </ul>
                 </div>
               </div>
             </div>
   <!-- <script src="./resources/js/jquery.dataTables.min.js"></script>
	<script src="./resources/js/datatable.js"></script> --> 
<div class="navbar navbar-default navbar-fixed-bottom" style="background-color: #e62e00 !important;">
        <div class="container">
            <p class="navbar-text pull-left" style="color:black;">© 2017 - nehaal@gmail.com by Nehaal </p>
        </div>
    </div>
</body>
</html>