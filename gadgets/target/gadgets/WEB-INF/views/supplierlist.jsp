<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml"
	xmlns:th="http://www.thymeleaf.org">
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	
<head>
	<meta charset="utf-8" />
	<title>Supplier List Page</title>
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
    background: rgba(0,0,0, 0.6);
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
   <h1>Supplier List</h1>   
<div class="col-md-10 col-md-offset-1">
<div class="panel panel-default panel-table"  style="background-color: transparent;">
             <div style="background-color: #f4511e;" class="panel-heading">
               <div class="row">
                 <div class="col col-xs-6">
                   <h3 class="panel-title"></h3>
                 </div>
                 <div class="col col-xs-6 text-right">
                   <button type="button" style="background-color:black;border-style:hidden;" class="btn btn-sm btn-primary btn-create">Create New</button>
                 </div>
               </div>
             </div>
             <div style="border-style:hidden;" class="panel-body">
               <table class="table table-striped table-bordered table-list">
                 <thead>
                   <tr>
                       <th><em class="fa fa-cog"></em></th>
                       <th class="hidden-xs" style="color:white;">ID</th>
                       <th style="color:white;">Name</th>                                                                     
                   </tr> 
                 </thead>
                 <tbody>
                         
                         <c:forEach items="${list }" var="s">
                         <tr  style="background-color: transparent;">
                         <td>
                             <a class="btn btn-default"><em class="fa fa-pencil"></em></a>
                             <a class="btn btn-danger"><em class="fa fa-trash"></em></a>
                           </td>
                           <td class="hidden-xs" style="color:white;">${s.s_id }</td>
                           <td style="color:white;">${s.s_name }</td>

						   
                         </tr></c:forEach>
                       </tbody>
               </table>
           
             </div>
             
              

</div></div></div>
 <div class="row">
                <span> <div class="col col-xs-4">Page 1
                 </div></span>
                <span> <div class="col col-xs-8">
                   <ul style="margin-right:30%;"class="pagination hidden-xs pull-right">
                     <li><a href="#">1</a></li>
                   </ul>
                   <ul class="pagination visible-xs pull-right">
                       <li><a href="#">«</a></li>
                       <li><a href="#">»</a></li>
                   </ul>
                 </div></span>
               </div>
 </div>


   <script src="./resources/js/jquery.dataTables.min.js"></script>
	<script src="./resources/js/datatable.js"></script> 
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>