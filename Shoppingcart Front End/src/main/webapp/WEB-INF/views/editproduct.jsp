<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<title>Edit Product Page</title>

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

<p> Edit Product </p>

<div class="col-lg-12" style="z-index: -1">
	<div class="col-lg-2"></div>
	<div class="col-lg-8">
		
		
		<form action="afterEditProduct" method="post" style="border:3px solid #ccc">
		  <div class="container">
		  
		  	<label><b>ID</b></label>
		  	<input type="text" placeholder="enter the ID" name="productid"  value="${product.productid}" readonly="true">
		  	
		  	<label><b>Name</b></label>
		  	<input type="text" placeholder="Name of the product" name="productname" value="${product.productname}">
		  	
		  	<label><b>Brand</b></label>
		    <input type="text" placeholder="enter the brand" name="brand" value="${product.brand}">
		  	
		  	<select name="category">
  			<option value="">Select Category</option>
  			<c:forEach items="${categoryList}" var="category"><br><br>
  				<option value="${category.categoryname}">${category.categoryname}</option>
  			</c:forEach>
	   </select>
 <br><br>
	  <select name="supplier">
  			<option value="">Select Supplier</option>
  			<c:forEach items="${supplierList}" var="supplier"><br><br>
  				<option value="${supplier.suppliername}">${supplier.suppliername}</option>
  			</c:forEach>
	  </select>
		
		    <label><b>Description</b></label>
		    <input type="text" placeholder="description" name="description" value="${product.description}">
		    
		    <label><b>Price</b></label>
		    <input type="text" placeholder="enter the price" name="price" value="${product.price}">
		    
		    <label><b>Colour</b></label>
		    <input type="text" placeholder="enter the colour" name="colour" value="${product.colour}">
		    
		    <label><b>quantity</b></label>
		    <input type="text" placeholder="enter the quantity" name="quantity" value="${product.quantity}">
		    
		    <label><b>RAM</b></label>
		    <input type="text" placeholder="enter the RAM capacity" name="ram" value="${product.ram}">
		    
		    <label><b>Battery</b></label>
		    <input type="text" placeholder="enter the battery capacity" name="battery" value="${product.battery}">
		    
		    <label><b>Camera</b></label>
		    <input type="text" placeholder="enter the Camera capacity" name="camera" value="${product.camera}">
		    
		    <label><b>Internal Storage</b></label>
		    <input type="text" placeholder="enter the Storage capacity" name="internalstorage" value="${product.internalstorage}">
		    
		    <label><b> Video URL </b></label>
		    <input type="text" placeholder="enter the Video URL" name="videourl" value="${product.videourl}">
		
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