<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="resources/css/bootstrap.css">
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/js/bootstrap.min.js">
<link rel="stylesheet" href="resources/css/bjqs.css">
<link rel="stylesheet" href="resources/css/demo.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<script src="http://code.jquery.com/jquery-1.7.1.min.js"></script>  
<script src="resources/js/bjqs-1.3.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Admin</title>


<style>

.pa{
height:60px;
}
.pb{
height:450px;
}
.pc{
height:600px;
}
.pn{
height:20px;
}
.pnn{
height:50px;
}




.menu {
	background-color: #56a0d3;
    list-style-type: none;
    margin: 0;
    padding: 0;
} 
.submenu
{
	display : none;
	background-color: #ff9900;
	position: absolute;
	/* padding-left: 0px; */
}

.menu li{
float:left;
padding : 5px 15px;
}

.submenu li{
float: none;
padding:0px;
list-style:none;
}


.menu li:hover .submenu {
	display : block;
	
}

li a {
    display: block;
    color: black;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none; 
}

.bt1{
	height: 35px !important;
}

.ser1{
	height: 35px !important;
    padding: 0px 20px !important;
}




</style>



</head>
<body>


<div class="col-lg-12 " style="background-image: url('resources/images/Woodenback3.jpg');">
<div class="row">
<div class="col-lg-3 pa">
<img src="resources/images/logo.png" style="height:70px;width:200px;" >
</div>
<div class="col-lg-6 pa">
<form class="" style="padding-top:10px;">

<div class="row">

<input class="ser1 form-control col-lg-10" type="text" name="" placeholder="search products" >
<button class="bt1 btn btn-default col-lg-2" style="background-color: #7ac143 ;">GO</button> 
</div>

</form>
</div>

<div class="col-lg-3 pa">
<div class="row">
	<div class="col-lg-3">  </div>
	<div class="col-lg-3">  </div>
	<div class="col-lg-3"><a href="https://twitter.com/"><img src="resources/images/Twitter.png" style="height:50px;width:65px;float:right;" class="img-responsive" ></a></div>
	<div class="col-lg-3"><a href="https://www.facebook.com/"><img src="resources/images/Facebook.png" style="height:53px;width:68px;float:right;" class="img-responsive" ></a></div>

</div>
</div>

</div>
</div>


<div class="col-lg-12 navig">
<div class="row" >

<ul class="menu col-lg-8">
  <li><a href="http://localhost:8002/SampleFE/"><span class="glyphicon glyphicon-home"></span> Home</a></li>
  <c:if test="${isUser == 'true' }">
  <li><a href="#">Samsung <i class="glyphicon glyphicon-chevron-down"></i></a>
  
    	<ul class="submenu">
          <li><a href="#">Galaxy S4</a></li>
  	      <li><a href="#">Galaxy S5</a></li>
  	      <li><a href="#">Galaxy S6</a></li>
          <li><a href="#">Galaxy S7</a></li>
  	    </ul>
 
  </li>
  
   <li><a href="#">Sony<i class="glyphicon glyphicon-chevron-down"></i></a>
  	<ul class="submenu">
  	      <li><a href="#">Xperia Z5</a></li>
  		  <li><a href="#">Xperia XZ</a></li>
  	      <li><a href="#">Xperia C5</a></li>
          <li><a href="#">Xperia M4</a></li>
  	    </ul>
  </li>
  <li><a href="#">Motorola <i class="glyphicon glyphicon-chevron-down"></i></a>
  	<ul class="submenu">
  	      <li><a href="#">G4</a></li>
          <li><a href="#">G4 plus</a></li>
  	      <li><a href="#">G5</a></li>
  		  <li><a href="#">G5 plus</a></li>
  	    </ul>
  </li>
  <li><a href="#">Vivo <i class="glyphicon glyphicon-chevron-down"></i></a>
  	<ul class="submenu">
  		  <li><a href="#">V5</a></li>
  	      <li><a href="#">V5 plus</a></li>
  	      <li><a href="#">X9</a></li>
          <li><a href="#">X9 plus</a></li>
  	    </ul>
  </li>
</c:if>
  
 <c:if test="${isAdmin == 'true' }"> 
  <li><a href="#">Category <i class="glyphicon glyphicon-chevron-down"></i></a>
  
    	<ul class="submenu">
          <li><a href="CategoryPage">Add_Category</a></li>
  	      <li><a href="viewcategoryPage">View_Category</a></li>
  	    </ul>
 
  </li>
  
   <li><a href="#">Product<i class="glyphicon glyphicon-chevron-down"></i></a>
  	<ul class="submenu">
          <li><a href="ProductPage">Add_Product</a></li>
  	      <li><a href="viewproductPage">View_Product</a></li>
  	    </ul>
  </li>
  <li><a href="#">Supplier <i class="glyphicon glyphicon-chevron-down"></i></a>
  	<ul class="submenu">
          <li><a href="SupplierPage">Add_Supplier</a></li>
  	      <li><a href="viewsupplierPage">View_Supplier</a></li>
  	    </ul>
  </li>
  
  
  </c:if> 
  
  

  </ul>
<ul class="menu col-lg-4">

<c:if test="${pageContext.request.userPrincipal.name== null }">
	<li style="text-align:right"><a href="LoginPage"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    <li style="text-align:right"><a href="RegistrationPage"><span class="glyphicon glyphicon-registration-mark"></span> Register</a></li>
</c:if>

<c:if test="${isUser == 'true' }">
	<li style="text-align:right"><a href="#"><span class="glyphicon glyphicon-shopping-cart"></span>Cart</a></li>
</c:if>


<c:if test="${isUser == 'true' } && ${isAdmin == 'true' }">
	<li style="text-align:right"><a href="logout"><span class="glyphicon glyphicon-log-out"></span>Logout</a></li>
</c:if>
  
</ul>

</div>
</div>







</body>
</html>