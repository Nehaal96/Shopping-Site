<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
  <link rel="icon" type="image/gif/png" href="E:\projt\project2\logopr.jpg">
  <title>Prokart</title>
      <link rel="stylesheet" href="login.css">
  <link rel="stylesheet" href="login.js">
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
   
 <link href="./resources/css/login.css" rel="stylesheet" type="text/css"/>
  <link href="./resources/js/login.css" rel="stylesheet" type="text/js"/>

  </head>
<!--<style>
.imageAndText {
position: relative;
} 

 .imageAndText .cal {position: absolute; top: 0%;
    left: 0;
    width: 100%;
    height: 100%;
    }

</style>-->
  
  <body class="main">
  <!--------------------*****************************************Navigation Bar****************************************------------------------------------>
 <jsp:include page="header.jsp" />
<!---------------------******************************************************************************************************---------------------------->



<div class="login-screen" ></div>
    <div class="login-center">
        <div class="container min-height" style="margin-top: 12%;">
		
        	<div class="row">
                <div class="col-xs-6">
                    <div class="login" id="card">
                    	<div class="front signin_form"> 
                        <p>
                        <h2>Login Your Account</h2>
                        </p>
		<!---------------------------------form task starts here-------------------------------------->				
						<c:url var="loginUrl" value="/j_spring_security_check" />
                          <form class="login-form"  name="formLogin" action="${loginUrl}"  method="post" class="text-left" onsubmit="return validateForm()">
                              <div class="form-group">
                                  <div class="input-group">
                                      <input type="email" class="form-control" name="j_username" placeholder="Type your email">
                                      <span class="input-group-addon">
                                          <i class="glyphicon glyphicon-user"></i>
                                      </span>
                                  </div>
                              </div>
                              <div class="form-group">
                                  <div class="input-group" >
                                      <input type="password" class="form-control"  name="j_password" placeholder="Type your password" >
                                      <span class="input-group-addon">
                                          <i class="glyphicon glyphicon-lock"></i>
                                      </span>
                                  </div>
                              </div>
                              <div class="checkbox">
                              <label><input type="checkbox" style="color:#f4511e">Remember me next time.</label>
                              </div>
                              
                              <div class="form-group sign-btn">
                                  <input type="submit" name="submit" class="btn" value="Log in">
                                  <p  style="color:#f4511e"><a href="#" class="forgot">Can't access your account?</a></p>
                                  <p style="color:#f4511e"><strong>New to TimeInfo?</strong><br><a href="registration" id="flip-btn" class="signup signup_link">Sign up for a new account</a></p>
                              </div>
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                          </form>
                        </div>
                       
                    </div>
                </div>
            </div>
        </div>
   
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jQuery-Flip/1.0.18/jquery.flip.js"></script>
    </div>
	<!-- ------------------------------footer ------------------------------------->
	<jsp:include page="footer.jsp" />
	
	
    </body>
	</html>