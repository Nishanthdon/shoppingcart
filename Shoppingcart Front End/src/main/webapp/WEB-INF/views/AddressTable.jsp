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




.pa{
height:60px;
}
.pb{
height:450px;
}
.pc{
height:350px;
}
.pn{
height:20px;
}





.foot1{
    background-color: #56a0d3;
    height: 240px;
}

.foot2{
	background-color: #16214d;
	height: 130px;
}

.foot3{
	background-color:black;
	height: 30px;
}





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







</style>


</head>
<body>





<div class="col-lg-12 pn" style="z-index: -1"> </div>


<div class="col-lg-12" style="z-index: -1">
	<div class="col-lg-2"></div>
	<div class="col-lg-8">
		<h2 style="color: green">Address</h2>
		
		<form action="newCustomer" method="post" style="border:3px solid #ccc">
		  <div class="container">
		  
		  	
		  	<label><b>Line 1</b></label>
		  	<input type="text" placeholder="Address line 1" name="line1" required>

		
		    <label><b>Line 2</b></label>
		    <input type="text" placeholder="Address line 2" name="line2" required>
		    
		    <label><b>City</b></label>
		  	<input type="text" placeholder="Enter your city" name="city" required>
		    
		
		    <label><b>State</b></label>
		    <input type="text" placeholder="Enter your State" name="state" required>
		    
		    <label><b>Pincode</b></label>
		    <input type="text" placeholder="Enter your pincode" name="pincode" required>
		    
		    <label><b>Country</b></label>
		    <input type="text" placeholder="Enter your country" name="country" required>
		    
		    
		    <div class="clearfix">
		      <a href="http://localhost:8080/SampleFE/"> <button type="button" class="cancelbtn">Cancel</button> </a>
		      <button type="submit" class="signupbtn">Submit</button>
		    </div>
		  </div>
		</form>
	</div>
	<div class="col-lg-2"></div>

</div>


<div class="col-lg-12 pa"></div>






</body>
</html>