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
<title> Edit Supplier Page</title>

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







</style>


</head>
<body>


<div class="col-lg-12 pn" style="z-index: -1"> </div>

<p> Edit Supplier </p>

<div class="col-lg-12" style="z-index: -1">
	<div class="col-lg-2"></div>
	<div class="col-lg-8">
		
		
		<form action="afterEditSupplier" method="post" style="border:3px solid #56b881">
		  <div class="container">
		  
		  	<label><b>ID</b></label>
		  	<input type="text" placeholder="enter the ID" name="supplierid" value="${supplier.supplierid}" readonly="true">
		  	
		  	<label><b>Name</b></label>
		  	<input type="text" placeholder="Name of the product" name="suppliername" value="${supplier.suppliername}">

		    <label><b>Description</b></label>
		    <input type="text" placeholder="description" name="description" value="${supplier.description}">

		    <label><b>Contact</b></label>
		    <input type="text" placeholder="enter your number" name="contact" value="${supplier.description}">
		    
		    <label><b>Mail</b></label>
		    <input type="text" placeholder="enter the mail" name="mail" value="${supplier.mail}">
		    
		    <label><b>Address</b></label>
		    <input type="text" placeholder="enter the address" name="address" value="${supplier.address}">
		    
		    <label><b>Citycode</b></label>
		    <input type="text" placeholder="enter the Citycode" name="citycode" value="${supplier.citycode}">
		    
		
		    <div class="clearfix">
		      <a href="http://localhost:8080/SampleFE/afterlogin"> <button type="button" class="cancelbtn">Cancel</button> </a>
		      <button type="submit" class="signupbtn">Submit</button>
		    </div>
		  </div>
		</form>
	</div>
	<div class="col-lg-2"></div>

</div>






</body>
</html>