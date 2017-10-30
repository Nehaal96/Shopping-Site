<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.niit.gadgets.model.*,java.util.List" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<style>
.kk {
    background-image:linear-gradient(rgba(0,0,0,.0), rgba(0,0,0,0.4)), url("https://cdn.pixabay.com/photo/2016/11/18/13/48/clothes-1834650_960_720.jpg");
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
body {
    margin: 0;
    font-family: 'Lato', sans-serif;
}

.overlay {
    height: 0%;
    width: 100%;
    position: fixed;
    z-index: 1;
    top: 0;
    left: 0;
    background-color: rgb(0,0,0);
    background-color: rgba(0,0,0, 0.9);
    overflow-y: hidden;
    transition: 0.5s;
}

.overlay-content {
    position: relative;
    
    top: 5%;
    width: 100%;
    text-align: center !important;
    margin-top: 30px;
}

.overlay a {
    padding: 2px;
    text-decoration: none;
    font-size: 36px;
    color: #818181;
    display: block;
    transition: 0.3s;
}

.overlay a:hover, .overlay a:focus {
    color: #f1f1f1;
}

.overlay .closebtn {
    position: absolute;
    top: 20px;
    right: 45px;
    font-size: 60px;
}

@media screen and (max-height: 450px) {
  .overlay {overflow-y: auto;}
  .overlay a {font-size: 20px}
  .overlay .closebtn {
    font-size: 40px;
    top: 15px;
    right: 35px;
  }
}
input[type=text], input[type=password] {
    width: 60%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}
.button {
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

<!--------------------------------------------Product scripting------------------------>
<script>
function validateAdd()
{
	
var pid=document.addform.pId.value;
var pname=document.addform.pName.value;
var pdesc=document.addform.pdesc.value;
var price=document.addform.pPrice.value;


if(pid==null||pid==" ")
	{
	alert("enter the id ");
	return false;
	}
else if(pname==null||pname==" ")
	{
	alert("Please enter the product name");
	return false;
	}else if(price==null || price==" ")
		{
		alert("enter the price ")
		}
}

</script> 

<!--------------------------------------------Category scripting------------------------>
<script>
function validatecat()
{
	
var cid=document.addcat.C_ID.value;
var cname=document.addcat.C_NAME.value;
if(cid==null||cid==" ")
	{
	alert("enter the id ");
	return false;
	}
else if(cname==null||cname==" ")
	{
	alert("Please enter the category name");
	return false;
	}
}

</script>
<!--------------------------------------------Supplier scripting------------------------>
<script>
function validatesup()
{
	
var sid=document.addsup.S_ID.value;
var sname=document.formsup.S_NAME.value;



if(sid==null||sid==" ")
	{
	alert("enter the id ");
	return false;
	}
else if(sname==null||sname==" ")
	{
	alert("Please enter the product name");
	return false;
	}
}

</script>
<!-------------------------------------------Confirmation of getting data------------------------>
<script>
$(function () {
    'use strict';

    function confirmDialog(title, message, success) {
        var confirmdialog = $('<div></div>').appendTo('body')
            .html('<div><h6>' + message + '</h6></div>')
            .dialog({
                modal: true,
                title: title,
                zIndex: 10000,
                autoOpen: false,
                width: 'auto',
                resizable: true,
                buttons: {
                    Yes: function () {
                        success();
                        $(this).dialog("close");
                    },
                    No: function () {
                        $(this).dialog("close");
                    }
                },
                close: function() {
                    $(this).remove();
                }
            });

        return confirmdialog.dialog("open");
    }

    $('form').on('submit', function (e) {
        e.preventDefault();
        var form = this;

        confirmDialog('Confirm', 'Shall i Get the Data? ', function () {
            form.submit();
        });
    });
});

</script>

</head>
<body>

<div class="kk">

<!---------------------------Category---------------------------------------->
<div class="container bg-overlay">
	<div class="row text-center">
<div id="myNav" class="overlay">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
   <div class="overlay-content">
    <a href="#">Category</a>
	<hr>
	
	<form action="add_category" class="form-horizontal" role="form" name="addcat">
        <div class="container">
            <div class="form-group"><div class="col-sm-8">
		        <label for="C_ID" class ="control-label col-sm-8" style="color:white;align:center;"><b>Category_Id</b></label>
		   <br>
		         <input type="text" class="form-control" name="C_ID" /></div></div>
		    <div class="form-group">
		         <label for="C_NAME" class ="control-label col-sm-8" style="color:white;"><b>Category_Name</b></label>
		    <div class="col-sm-8">
		         <input type="text"  class="form-control" name="C_NAME" /></div></div>
		    <button class="button" type="submit" onclick="validatecat()"><span>Add</span></button>
		        <button class="button" type="button" class="cancelbtn"><span>Cancel</span></button>
	      </div>
	  </form>
     </div>

  </div>

<!--------------------------Supplier------------------------------------------>
<div id="myNav1" class="overlay">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav1()">&times;</a>
 <div class="overlay-content">
    <a href="#">Supplier</a>
	<hr>
   <form action="add_supplier" class="form-horizontal" role="form" name="addsup">
	     <div class="container">
	           <div class="form-group">
			        <label for="S_ID" class ="control-label col-sm-8" style="color:white;align:center;"><b>Supplier_Id</b></label>
			    <div class="col-sm-8">
			        <input type="text" class="form-control" name="S_ID" /></div></div>
			   <div class="form-group">
			       <label for="S_NAME" class ="control-label col-sm-8" style="color:white;"><b>Supplier_Name</b></label>
			    <div class="col-sm-8">
			        <input type="text" class="form-control"name="S_NAME" /></div></div>
			   <button class="button" type="submit" onclick="validatesup"><span>Add</span></button>
			        <button class="button" type="button" class="cancelbtn"><span>Cancel</span></button>
	     </div>
	 </form>
     </div>
</div><!-------------------------Product-------------------------------------------->
<div id="myNav2" class="overlay">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav2()">&times;</a>
 <div class="overlay-content">
	  <form action="add_product" name="addform" class="form-horizontal" role="form" method="post" enctype="multipart/form-data"> 
	  <!-- <form action="add_product" class="form-horizontal" role="form"> -->
	           <div class="form-group">
			        <label for="pId" class ="control-label col-sm-8"  style="color:white;"><b>Product_Id</b></label>
			    <div class="col-sm-8">
			        <input type="text" class="form-control" name="pId" /></div></div>
			        
			   <div class="form-group">
			       <label for="pName" class ="control-label col-sm-8"  style="color:white;"><b>Product_Name</b></label>
			    <div class="col-sm-8">
			        <input type="text" class="form-control" name="pName" /></div></div>
			        
			            <div class="form-group">
			       <label for="pdesc" class ="control-label col-sm-8"  style="color:white;"><b>Product_Desc</b></label>
			    <div class="col-sm-8">
			    <input type="text" rows="2" class="form-control" name="pdesc">
			      <!--   <input type="text" class="form-control" name="pPrice" /> --></div></div>
			        
			    <div class="form-group">
			       <label for="pPrice" class ="control-label col-sm-8"  style="color:white;"><b>Product_Price</b></label>
			    <div class="col-sm-8">
			        <input type="text" class="form-control" name="pPrice" /></div></div>
			       <br> 
			       <br>
			    <div class="form-group">
		           <label for="pCategory" class ="control-label col-sm-4"  style="color:white;"><b>Product_Category</b></label>
		        <div class="col-sm-4">
		             <select class="form-control" name="pCategory">
		                  <option value="0">Select</option>
		                    <%
             	   List<Category> clist=(List<Category>) request.getAttribute("list");
    			   for(Category c : clist){
    				out.println("<option value='"+ c.getC_id() +"'>"+ c.getC_name() + "</option>");
    			}
    			
             %>
	                </select></div></div>
		          
		         <div class="form-group">
		            <label for="pSupplier" class ="control-label col-sm-4"  style="color:white;"><b>Product_Suppliers</b></label>
		         <div class="col-sm-4">
		             <select class="form-control" name="pSupplier">
		                  <option value="0"  style="color:white;">Select</option>
		                <%
             	List<Supplier> slist=(List<Supplier>) request.getAttribute("slist");
    			for(Supplier c : slist){
    				out.println("<option value='"+ c.getS_id() +"'>"+ c.getS_name() + "</option>");
    			}
    			
             %>      
                   </select>
                    </div></div>
					<br>
                     <div class="form-group">
                               <label for="img"  style="color:white;"><b>Upload Image</b></label>
                                <input type="file" id="img" name="file">
                       </div>
                          <button class="button" type="submit" class="btn btn-primary" onclick="validateAdd()" ><span>Save</span></button>
           </form>  
     </div>
     
</div>
<!--------------------------------------------------------------------------->

<style>
* {
    box-sizing: border-box;
}

.columns {
	margin-top: 10% !important;
    float: left !important;
    width: 33.3% !important;
    padding: 8px !important;
}

.price {
    list-style-type: none !important;
    border: 1px solid #eee !important;
    margin: 0 !important;
    padding: 0 !important;
    -webkit-transition: 0.3s !important;
    transition: 0.3s !important;
}

.price:hover {
    box-shadow: 0 8px 12px 0 rgba(0,0,0,0.3)
}

.price .header {
    background-color: #f4511e ;
    color: white ;
    font-size: 25px ;
}
.price .header1 {
    background-color: #f4511e ;
    color: white;
    font-size: 25px;
}

.price li {
    border-bottom: 1px solid #eee;
    padding: 20px;
    text-align: center;
}

.price .grey {
    background-color: #eee;
    font-size: 20px;
}

.button {
    background-color: #f4511e;
    border: none;
    color: white;
    padding: 10px 25px;
    text-align: center;
    text-decoration: none;
    font-size: 18px;
}

@media only screen and (max-width: 600px) {
    .columns {
        width: 100%;
    }
}
</style>
<div>
<a  style="align:center;margin-left:40%;top:10%;" href="index" class="button" ><span> click here -> HOME PAGE</span></a>
</div>
<div class="columns">
  <ul class="price">
    <li class="header">Category</li>
    <li class="grey" style="color:black;">Fields that can be added</li>
    <li style="background-color:white;color:black;">Category Id</li>
    <li style="background-color:white;color:black;">Category Name</li>
    <li class="grey"><a  style="background-color: black;" href="#" class="button" ><span onclick="openNav()">Add Category Details</span></a></li>
	 <li class="grey"><a  style="background-color: black;" href="categorylist" class="button" ><span>Existing Category List</span></a></li>
  </ul>
</div>

<div class="columns">
  <ul class="price">
    <li class="header1" style="background-color:black;">Supplier</li>
    <li class="grey" style="color:black;">Fields that can be added</li>
    <li style="background-color:white;color:black;">Supplier Id</li>
    <li style="background-color:white;color:black;">Supplier Name</li>
    <li class="grey"><a href="#" class="button"><span onclick="openNav1()">Add Supplier Details</span></a></li>
	 <li class="grey"><a  href="supplierlist" class="button" ><span>Existing Supplier List</span></a></li>
  </ul>
</div>

<div class="columns">
  <ul class="price">
    <li class="header">Product</li>
    <li class="grey" style="color:black;">Feilds that can be added</li>
    <li style="background-color:white;color:black;">Product Id</li>
    <li style="background-color:white;color:black;">Product Name & many more...</li>
    <li class="grey"><a  style="background-color: black;"  href="#" class="button"><span onclick="openNav2()">Add Product Details</span></a></li>
	 <li class="grey"><a  style="background-color: black;" href="productlist"  class="button" ><span>Existing Product List</span></a></li>
  </ul>
</div>
<script>
function openNav() {
    document.getElementById("myNav").style.height = "100%";
}

function closeNav() {
    document.getElementById("myNav").style.height = "0%";
}

function openNav1() {
    document.getElementById("myNav1").style.height = "100%";
}

function closeNav1() {
    document.getElementById("myNav1").style.height = "0%";
}

function openNav2() {
    document.getElementById("myNav2").style.height = "100%";
}

function closeNav2() {
    document.getElementById("myNav2").style.height = "0%";
}
</script>
</div>
</div>

</body>

</html>
