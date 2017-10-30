<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Customer Details</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
  <script	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
  <!--<link href="./resources/css/Details.css" rel="stylesheet" type="text/css"/>-->
  <!--<link href="./resources/css/adding.css" rel="stylesheet" type="text/css"/>-->
  
   
 
 <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css" rel="stylesheet"/>
</head>
<style>

.kk {
    background-image: linear-gradient(rgba(0,0,0,.4), rgba(0,0,0,.4)), url("${pageContext.request.contextPath}/resources/images/ii6.jpg");    background-position: center;
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

<jsp:include page="header.jsp"/>
<div class="kk"></div>
<script type="text/javascript">
$(document).ready(function() {
    $('#contact_form').bootstrapValidator({
        // To use feedback icons, ensure that you use Bootstrap v3.1.0 or later
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
            first_name: {
                validators: {
                        stringLength: {
                        min: 2,
                    },
                        notEmpty: {
                        message: 'Please enter your First Name'
                    }
                }
            },
             last_name: {
                validators: {
                     stringLength: {
                        min: 2,
                    },
                    notEmpty: {
                        message: 'Please enter your Last Name'
                    }
                }
            },
			
			
			
            email: {
                validators: {
                    notEmpty: {
                        message: 'Please enter your Email Address'
                    },
                    emailAddress: {
                        message: 'Please enter a valid Email Address'
                    }
                }
            },
            contact_no: {
                validators: {
                  stringLength: {
                        min: 12, 
                        max: 12,
                    notEmpty: {
                        message: 'Please enter your Contact No.'
                     }
                }
            },
			 
                }
            }
        })
        .on('success.form.bv', function(e) {
            $('#success_message').slideDown({ opacity: "show" }, "slow") // Do something ...
                $('#contact_form').data('bootstrapValidator').resetForm();

            // Prevent form submission
            e.preventDefault();

            // Get the form instance
            var $form = $(e.target);

            // Get the BootstrapValidator instance
            var bv = $form.data('bootstrapValidator');

            // Use Ajax to submit form data
            $.post($form.attr('action'), $form.serialize(), function(result) {
                console.log(result);
            }, 'json');
        });
});
</script>
<script>
function check()
{
	alert("data stroed");
	
	}
</script>

    <div class="container">

    <form style="width: 60%;background-color: transparent;" class="well form-horizontal"  action="invoice" method="post"  id="contact_form">
<fieldset>

<!-- Form Name -->
<legend ><center><h2 style="color:white;"><b>Customer Details</b></h2></center></legend><br>

<!-- Text input-->

<div class="form-group">
  <label class="col-md-4 control-label" style="color:white;"><b>Name</b></label>  
  <div class="col-md-4 inputGroupContainer">
  <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  <input  name="name" placeholder="Name" class="form-control"  type="text">
    </div>
  </div>
</div>


<div class="form-group">
  <label class="col-md-4 control-label" style="color:white;"><b>Shipping Address</b></label> 
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  <textarea rows="5" cols="40" name="add" required></textarea>
    </div>
  </div>
</div>

<!-- Text input-->
       <div class="form-group">
  <label class="col-md-4 control-label" style="color:white;"><b>E-Mail</b></label>  
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
  <input name="email" placeholder="E-Mail Address" class="form-control"  type="text" required>
    </div>
  </div>
</div>


<!-- Text input-->
       
<div class="form-group">
  <label class="col-md-4 control-label" style="color:white;"><b>Contact No.</b></label>  
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
  <input name="contact_no" placeholder="(+91)" class="form-control" type="text" required>
    </div>
  </div>
</div>

<input type="hidden" name="tot" value="${tot}"/>

<h3>Total Amount = ${tot}</h3>
<!-- Button -->
<div class="form-group">
 
  <div class="col-md-12"><br>

	<button  type="submit" class="btn btn-warning" onlick="check()" value="Confirm">SUBMIT <span class="glyphicon glyphicon-send"></span></button>
  </div>
</div>

</fieldset>
</form>
</div>
  
    <jsp:include page="footer.jsp"/>
    <!-- /.container -->
</body>
</html>

