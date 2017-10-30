<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="image" value="/resources/image" />


<!DOCTYPE html>
<html lang="en">
<head>
  <link rel="icon" type="image/gif/png" href="E:\projt\project2\logopr.jpg">
  <title>Prokart</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
   <link href="./resources/css/New.css" rel="stylesheet" type="text/css"/>
   
  </head>
  
  <body style="background-color: black;">
 <jsp:include page="header.jsp"/>
<!--------------------------------*****************************Page Content begins*******************************------------------------------------------>
<div class="hero-image" class="container-fluid" id="main">
<img src="${pageContext.request.contextPath}/resources/images/jj8.jpg" alt="kkk" style="width:100%;height:100%;" alt="image load"/>


  
  <div class="hero-text">
    <h1><b>Experience shopping </b> </h1>
    <h1><b>with</b></h1>
	<h1><i><b>PROKART</b></i></h1>
	<br>
	<br>
	</div>
	</div>
<!----------------------********************************************shopping preferrences****************************************************------------->	
<div class="container-fluid" >
<div class="row">
<div class="col-sm-4">
<img style="opacity: 0.7;" src="${pageContext.request.contextPath}/resources/images/hh2.jpg" alt="kkk"/>
<div class="text1" style="font-size: 12px;">
    <h1><b>Men's Sculpting Accessories</b> </h1>
	<br>
	<br>
	</div>
</div>
<div class="col-sm-4">
<img src="${pageContext.request.contextPath}/resources/images/kk.jpg" style="opacity: 0.6;" alt="kkk"/>
<div class="text2" style="font-size: 12px;">
    <h1><b>Women's Craving Accessories</b> </h1>
	
	<br>
	<br>
	</div>
</div>

<div class="col-sm-3">
<img src="${pageContext.request.contextPath}/resources/images/ii.jpg"style="opacity: 0.7;" alt="kkk" />
<div class="text2" style="font-size: 12px;">
    <h1><b>Kid's Accessories</b> </h1>

	<br>
	<br>
	</div>
</div>

</div>
</div>
</div>
<!------------------------------------------------------------------------------------------------------------------------------------------------->
   <div class="modal fade" id="login-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
					 	
        <div id="loginbox" style="margin-top:50px;" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">                    
            <div class="panel panel-info" >
                    <div class="panel-heading">
                        <div class="panel-title">Sign In</div>
                        <div style="float:right; font-size: 80%; position: relative; top:-10px"><a href="#">Forgot password?</a></div>
                    </div>     

                    <div style="padding-top:30px" class="panel-body" >

                        <div style="display:none" id="login-alert" class="alert alert-danger col-sm-12"></div>
                            
                        
 <div class="container-wrapper">
    <div class="login-container">
        <div id="login-box">
 
            <h2>Login with Username and Password</h2>
 
            <c:if test="${not empty msg}">
                <div class="msg">${msg}</div>
            </c:if>
 
            <form name="loginForm" action="<c:url value="/admin" />" method="post">
                <c:if test="${not empty error}">
                    <div class="error" style="color: #ff0000;">${error}</div>
                </c:if>
                <div class="form-group">
                    <label for="username">User: </label>
                    <input type="text" id="username" name="username" class="form-control" />
                </div>
                <div class="form-group">
                    <label for="password">Password:</label>
                    <input type="password" id="password" name="password" class="form-control" />
                </div>
 
                <input type="submit" value="Submit" class="btn btn-default">
 				<c:if test="${pageContext.request.userPrincipal.name  == 'admin'}">
                                <li><a href="<c:url value="/admin" />">Admin</a></li>
                            </c:if>
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
            </form>
 
        </div>
    </div>
</div>
 
 </div>
 </div>
  </div> 
 </div>
 <!--------------------------------------------------------------------------------------------------------------------------------------------------->
  <jsp:include page="footer.jsp"/>
  </body>
  
  </html>