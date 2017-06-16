<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link rel="stylesheet" href="resources/css/bootstrap.css">
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/js/bootstrap.min.js">
<link rel="stylesheet" href="resources/css/bjqs.css">
<link rel="stylesheet" href="resources/css/demo.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration Page</title>

<style type="text/css">






/* Full-width input fields */
input[type=text], input[type=password] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}

/* Set a style for all buttons */
button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
}

/* Extra styles for the cancel button */
.cancelbtn {
    padding: 14px 20px;
    background-color: #f44336;
}

/* Float cancel and signup buttons and add an equal width */
.cancelbtn,.signupbtn {
    float: left;
    width: 50%;
}

/* Add padding to container elements */
.container {
    padding: 16px;
}

/* Clear floats */
.clearfix::after {
    content: "";
    clear: both;
    display: table;
}

/* Change styles for cancel button and signup button on extra small screens */
@media screen and (max-width: 300px) {
    .cancelbtn, .signupbtn {
       width: 100%;
    }
}

.imgcontainer {
    text-align: center;
    margin: 24px 0 5px 0;
}

img.avatar {
    width: 35%;
    
}






</style>


</head>
<body>

<br>


<div class="col-lg-12" style="z-index: -1; background-image: url('resources/images/Registerback.jpg'); background-size: cover; ">
	<div class="col-lg-3"></div>
	<div class="col-lg-6">
	
		<div class="imgcontainer">
        	<img src="resources/images/Registerimg.gif" alt="Avatar" class="avatar">
  		</div>
		<h2 style="color: green">Signup</h2>
		
		<form action="newCustomer" name="myForm" onsubmit="return validation()" method="post" style="border:3px solid #ccc">
		  <div class="container">
		  
		  	
		  	<label><b>Name</b></label>
		  	<input type="text" placeholder="Enter your name" name="name" id="name">

		
		    <label><b>Password</b></label>
		    <input type="password" placeholder="Enter Password" name="password" id="password">
		    
		    <label><b>Contact</b></label>
		  	<input type="text" placeholder="Enter your contact" name="contact" id="contact">
		    
		    <label><b>Email</b></label>
		    <input type="text" placeholder="Enter Email" name="email" id="email">
		    
		    <label><b>Address</b></label>
		    <input type="text" placeholder="Enter the address" name="address" id="address">
		    
		    <label><b>Zipcode</b></label>
		    <input type="text" placeholder="Enter the zipcode" name="zipcode" id="zipcode">
		    
		    
		    <p> Already have an Account ? <a href="http://localhost:8080/SampleFE/LoginPage"> Sign In </a></p>
		
		    <div class="clearfix">
		      <a href="http://localhost:8080/SampleFE/"> <button type="button" class="cancelbtn">Cancel</button> </a>
		      <button type="submit" class="signupbtn">Sign Up</button>
		    </div>
		  </div>
		</form>
	</div>
	<div class="col-lg-3"></div>

</div>


<div class="col-lg-12 pn"></div>



<script type="text/javascript" src="resources/js/registervalidation.js"></script>





</body>
</html>