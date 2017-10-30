<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html lang="en">
<head>
 
  <title>Prokart</title>
  <link rel="stylesheet" href="login.css">
  <link rel="stylesheet" href="login.js">
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

  </head>
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

.in-page {
    min-height: 520px;
}

.main {
    position: relative;
}

a {
    color: #1b5a7c;
}

a:hover, a:focus {
    color: #f4511e;
}

.btn-cyan {
    background-color: #f4511e;
    color: #fff;
}#f4511e

.btn-cyan:hover {
    color: #fff;
    opacity: 0.9;
}

.form-control:focus {
    border-color: #f4511e;
    box-shadow: 0 1px 1px rgba(0, 0, 0, 0.075) inset, 0 0 8px rgba(24, 204, 162, 0.6);
    outline: 0 none;
}

.min-height {
    min-height: 680px;
}


.login-screen {
   background-image:linear-gradient(rgba(0,0,0,.0), rgba(0,0,0,0.4)), url("https://cdn.pixabay.com/photo/2016/08/01/11/15/tie-1560848_960_720.jpg");

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

.login-screen:before {
    content: "";
    background: rgba(0,0,0, 0.5);
    position: absolute;
    width: 100%;
    height: 100%;
    top: 0;
    left: 0;
}
/*style="color:#ffff00"*/
.login-center {
    text-align: left;
}

.login {
    width: 320px;
    color: #fff;
}

.login .login-form {
    text-align: left;
}

.login label {
    color: #fff;
}

.login-form .input-group .form-control {
    background: none;
    height: 54px;
    color: #ffff00;
}

.login-form .input-group .input-group-addon {
    background: none;
}

.login-form .input-group .input-group-addon .glyphicon {
    color: #f4511e;
}

.login-form .input-group .form-control::-moz-placeholder {
    color: #fff;
    opacity: 0.3;
}

.login .sign-btn input.btn {
    background: #f4511e;
    border-color: #f4511e;
    color: #fff;
    width: 180px;
}


.login .sign-btn a {
    text-decoration: none;
}

.login .checkbox {
    margin-top: 20px;
    margin-bottom: 20px;
}

.login .forgot {
    display: inline-block;
    margin: 20px 0;
}
   </style>
   <script>

   $().ready(function() {
   	$("#card").flip({
   	  trigger: 'manual'
   	});
   });


   $(".signup_link").click(function() {

   	$(".signin_form").css('opacity', '0');
   	$(".signup_form").css('opacity', '100');
   	
   	
   	$("#card").flip(true);
   	
   	return false;
   });

   $("#unflip-btn").click(function(){
     
   	$(".signin_form").css('opacity', '100');
   	$(".signup_form").css('opacity', '0');
   	
     	$("#card").flip(false);
   	
   	return false;
   	
   });
   </script>
  <body class="main">
   <jsp:include page="header.jsp"/>
 

<!--------------*************************************************Registeration work starts*******************************************--------------------------------->
<div class="login-screen" ></div>
    <div class="login-center">
        <div class="container min-height" style="margin-top: 12%;">
        	<div class="row">
                <div class="col-xs-6">
                    <div class="login" id="card">
                    	<div class="front signin_form">
                    	<p> 
                        <h2>Register Your  New Account</h2>
                        </p>
                      
                             
							  
				 <form class="login-form" action="register"  method="post">
                              <div class="form-group">
                                  <div class="input-group">
                                      <input type="text" class="form-control" placeholder="Username" name="name" pattern="[A-Za-z]+[ ][A-Za-z]+" title="First name & last name with space in between no special charectars & numbers." required="required">
                                      <span class="input-group-addon">
                                          <i class="glyphicon glyphicon-user"></i>
                                      </span>
                                  </div>
                              </div>
							  
                             
                              <div class="form-group">
                                  <div class="input-group">
                                      <input type="password" class="form-control" placeholder="Confirm Password" pattern=".{6,}" title="enter valid password of more than 6" required="required">
                                      <span class="input-group-addon">
                                          <i class="glyphicon glyphicon-lock"></i>
                                      </span>
                                  </div>
                              </div>
                              <div class="form-group">
                                  <div class="input-group">
                                      <input type="email" class="form-control" placeholder="Email"  name="mail" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" required="required">
                                      <span class="input-group-addon">
                                          <i class="glyphicon glyphicon-envelope"></i>
                                      </span>
                                  </div>
                              </div>
							  
							   <div class="form-group">
                                  <div class="input-group">
                                      <input type="number" class="form-control" placeholder="Age" name="age" required="required">
                                        <span class="input-group-addon">
                                          <i class="glyphicon glyphicon-star"></i>
                                      </span>
                                  </div>
                              </div>
							
							   <div class="form-group">
                                  <div class="input-group">
                                      <input type="number" class="form-control" placeholder="Phone number"   name="phone" pattern="^([+][9][1]|[9][1]|[0]){0,1}([7-9]{1})([0-9]{9})$" title="enter valid number with 7,8,9" required="required">
                                        <span class="input-group-addon">
                                          <i class="glyphicon glyphicon-phone"></i>
                                      </span>
                                  </div>
                              </div>
							   <div class="form-group">
                                  <div class="input-group" >
                                      <input  class="form-control" placeholder="Address" name="address" >
                                        <span class="input-group-addon">
                                          <i class="glyphicon glyphicon-asterisk"></i>
                                      </span>
                                  </div>
                              </div>
                              
                              <div class="form-group sign-btn">
                                  <input type="submit" class="btn" value="Sign up">
                                  <br><br>
                                  <p>You have already Account So <a href="login" id="unflip-btn" class="signup">Login</a></p>
                              </div>
                              <div class="checkbox">
                              <label><input type="checkbox" style="color:#f4511e">Remember me next time.</label>
                              </div>
                            </form>
                        </div>
						
						
						     
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jQuery-Flip/1.0.18/jquery.flip.js"></script>
     <jsp:include page="footer.jsp"/>
    </body>
	</html>