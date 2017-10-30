<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Product List</title>
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
<style>

   
   .kk {
     background-image: linear-gradient(rgba(0,0,0,.0), rgba(0,0,0,.5)), url("https://cdn.pixabay.com/photo/2016/11/18/13/48/clothes-1834650_960_720.jpg");
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
  padding: 10px;
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
<body style="background-image: linear-gradient(rgba(0,0,0,.5), rgba(0,0,0,.5)), url("https://cdn.pixabay.com/photo/2016/11/18/13/48/clothes-1834650_960_720.jpg")>

<jsp:include page="header.jsp" />
<h2 style><b>Edit Product Details</b></h2>
<hr/>
  <form action="product_update" enctype="multipart/form-data">
    <div class="form-group">
      <label for="pId" style="float:left;font-size:20px;color:white;"><b>Product  ID :</b></label>
      <input type="number" class="form-control" id="pId" style="background-color: transparent;color:white;" placeholder="Enter Product ID" name="pId" value="${product.p_id}" readonly="true">
    </div>
    <div class="form-group">
      <label for="pName" style="float:left;font-size:20px;color:white;"><b>Product Name :</b></label>
      <input type="text" class="form-control" id="pName" style="background-color: transparent;color:white;" placeholder="Enter Product Name " name="pName" value="${product.p_name}">
    </div>
    <div class="form-group">
      <label for="p_description" style="float:left;font-size:20px;color:white;"><b>Product Description :</b></label>
      <input type="text" class="form-control" id="p_description" style="background-color: transparent;color:white;"  name="p_description" value="${product.p_description}" >
    </div>
    <div class="form-group">
      <label for="pPrice" style="float:left;font-size:20px;color:white;" ><b>Product Price :</b></label>
      <input type="number" class="form-control" id="pPrice" style="background-color: transparent;color:white;" placeholder="Enter Product Price " name="pPrice" value="${product.p_price}" >
    </div>
    <div class="form-group">
  <label class="col-md-4 control-label" for="pCategory" style="font-size:20px;color:white;" ><b>Select Category :</b></label>
  <div class="col-md-4">
    <select id="pCategory" style="background-color: transparent;color:white;" class="form-control" name="pCategory">
      <c:forEach var="clist" items="${clist}">

                <option value="${clist.c_id}">${clist.c_name}</option>

            </c:forEach>
    </select>
  </div>
</div>
<br/>
<br/>
<div class="form-group">
  <label class="col-md-4 control-label" for="s_id" style="font-size:20px;color:white;" ><b>Select Supplier :</b></label>
  <div class="col-md-4">
    <select id="s_id" style="background-color: transparent;color:white;" class="form-control" name="pSupplier">
      <c:forEach var="slist" items="${slist}">

                <option value="${slist.s_id}">${slist.s_name}</option>

            </c:forEach>
    </select>
  </div>
</div>
<br/>
<br/>
<br/>

<div class="form-group">
      <label for="img" style="float:left;font-size:20px;color:white;"> Upload Image :</label>
      <input type="file" id="img" name="file">
    </div>
    <button type="submit" class="button" class="btn btn-primary" >Save</button>
  </form>
 
  <jsp:include page="footer.jsp" />
  
</body>
</html>