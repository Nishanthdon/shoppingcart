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
<title>Role Page</title>

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

<jsp:include page="Head.jsp"></jsp:include>



<div class="col-lg-12 pn" style="z-index: -1"> </div>


<div class="col-lg-12" style="z-index: -1">
	<div class="col-lg-2"></div>
	<div class="col-lg-8">
		
		
		<form action="newRole" method="post" style="border:3px solid #ccc">
		  <div class="container">
		  
		  	
		  	<label><b>Name</b></label>
		  	<input type="text" placeholder="Name of the product" name="name" required>

		
		    <label><b>Role</b></label>
		    <input type="text" placeholder="role" name="role" required>
		    
		    <label><b>Mail</b></label>
		    <input type="text" placeholder="enter the mail" name="mail" required>
		    
		
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








<footer class="col-lg-12 foot1">
	<div class="row">
	<div class="col-lg-12 pn"></div>
		<div class="col-lg-3"></div>
		<div class="col-lg-6">
			<center><h1 style="color: white; text-align: center;"> <u>ABOUT</u> </h1></center>
			<div class="col-lg-12">
				<div class="col-lg-6"> 
					<p style="color:white; font-size: 14px;">This is an Mobile Website, where you can see and buy your smart phones.you can find your best mobile and buy it. </p>
				</div>
				<div class="col-lg-6">
					<p style="color:white; font-size: 14px;"> From our website, you can compare two phones and buy your best choice. This website is more confortable to see the mobiles and choose what you want. </p>
				</div>
			</div>
		</div>
		<div class="col-lg-3"></div>
	</div>
</footer>

<footer class="col-lg-12 foot2">
	<div class="row">
	<div class="col-lg-12 pn"></div>
		<div class="col-lg-2"></div>
		<div class="col-lg-2">
			<h5 style="color:white; text-align: center;">LOCATION</h5>
			<div class="col-lg-12 pn"></div>
				<p style="color:white; text-align: center; font-size: 10px;">Peelamedu,Coimbatore</p>
		</div>
		<div class="col-lg-4">
			<h5 style="color:white; text-align: center;">AROUND THE WEB</h5>
			<div class="col-lg-12 pn"></div>
			
				<div class="col-lg-2"></div>
				<div class="col-lg-2">
					<img src="resources/images/Google  footer.png" style="width: 30px;height: 40px;">
				</div>
				<div class="col-lg-2">
					<img src="resources/images/Facebook foot.png" style="width: 30px;height: 40px;">
				</div>
				<div class="col-lg-2">
					<img src="resources/images/Twitter foot.png" style="width: 30px;height: 40px;">
				</div>
				<div class="col-lg-2">
					<img src="resources/images/Youtube foot.png" style="width: 40px;height: 50px;">
				</div>
				<div class="col-lg-2 "></div>
			
		</div>
		<div class="col-lg-2">
			<h5 style="color:white; text-align: center;">TERMS & CONDITIONS</h5>
			<div class="col-lg-12 pn"></div>
				<p style="color:white; text-align: center; font-size: 10px;">All our products are good and that are in good quality</p>
		</div>
		<div class="col-lg-2"></div>
	
	</div>
</footer>

<footer class="col-lg-12 foot3">
	<p style="text-align: center; font-size: 8px; color: white;"> copyrights @ nishanthdon </p>
</footer>



</body>
</html>