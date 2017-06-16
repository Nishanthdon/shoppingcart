<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
.pr{
height:10px !important;
}


.menu {
	background-color: #242f3a;
    list-style-type: none;
    margin: 0;
    padding: 10;
} 
.submenu
{
	display : none;
	background-color: #8ec06c;
	position: absolute;
	z-index: +1 !important;
	
}

.menu li{
float:left;
padding : 5px 15px;
}

.submenu li{
float: none;
padding:3px 0px;
list-style:none;
}

.submenu li a{
color: black !important;
}


.menu li:hover .submenu {
	display : block;
	border-radius:10px;
        padding:0px 20px;
        box-shadow:0px 2px 0px #923045;
        /* margin:10px 10px 10px 10px; */
        font-size:12px;
        letter-spacing:0.07em;
        /* height:30px; */
       /*  line-height:30px; */
        text-decoration:none;
}



.menu li a {
    display: block;
    color: white;
    text-align: center;
    padding: 14px 16px;
  
}


.bt1,.bt4{
	height: 35px !important;
	width: 10% !important;
	border-radius: 20px !important;
}

.bt3{
	height: 35px !important;
	width: 25% !important;
	border-radius: 20px !important;
	text-align: center !important;
	background-color: white !important;
	color: black !important;
}

.bt3:hover{
	background-color: #56b881 !important;
}

.bt4:hover{
	background-color: #56b881 !important;
}

.ser1{
	height: 35px !important;
    padding: 0px 20px !important;
}

.about:hover{
	color: white !important;
	font-size: 15px !important;
}

/* .fullnav{
	border: 30px solid white;
}
 */
 
 .eff{
  -webkit-transition: width 1s !important;
    transition: width 500ms !important;  
 }
 
 .eff:hover {  
    width: 150px !important;  
}  


</style>



</head>
<body>

<div class="fullnav navbar-fixed-top">

<div class="col-lg-12" style="background-color: #242f3a">
<div class="row">
<div class="col-lg-3 pa">
<img src="resources/images/logo.png" style="height:70px;width:200px;" >
</div>
<div class="col-lg-6 pa">
<form class="" style="padding-top:10px;">

<div class="row">

<input class="ser1 bt2 form-control col-lg-10" type="text" name="" placeholder="search products" >
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

<div class="menu col-lg-8">
	
  <a href="http://localhost:8080/SampleFE/"><button class="bt4 btn btn-default eff" style="float: left;"> <span class="glyphicon glyphicon-home"></span> Home</button></a>
  
  
  <c:if test="${isUser == 'true' }">
  <li class=""><a href="#">Samsung <i class="glyphicon glyphicon-chevron-down"></i></a>
  
    	<ul class="submenu">
  	      <li><a href="#">Galaxy S5</a></li>
  	      <li><a href="#">Galaxy S6</a></li>
          <li><a href="#">Galaxy S7</a></li>
          <li><a href="http://localhost:8080/SampleFE/DescriptionPage?productid=1">Galaxy S8</a></li>
  	    </ul>
 
  </li>
  
   <li><a href="#">Sony<i class="glyphicon glyphicon-chevron-down"></i></a>
  	<ul class="submenu">
  	      <li><a href="#">Xperia Z5</a></li>
  		  <li><a href="http://localhost:8080/SampleFE/DescriptionPage?productid=36">Xperia XZ</a></li>
  	      <li><a href="#">Xperia C5</a></li>
          <li><a href="#">Xperia M4</a></li>
  	    </ul>
  </li>
  <li><a href="#">Motorola <i class="glyphicon glyphicon-chevron-down"></i></a>
  	<ul class="submenu">
  	      <li><a href="#">G4</a></li>
          <li><a href="http://localhost:8080/SampleFE/DescriptionPage?productid=35">G4 plus</a></li>
  	      <li><a href="#">G5</a></li>
  		  <li><a href="#">G5 plus</a></li>
  	    </ul>
  </li>
  <li><a href="#">Vivo <i class="glyphicon glyphicon-chevron-down"></i></a>
  	<ul class="submenu">
  		  <li><a href="#">V5</a></li>
  	      <li><a href="http://localhost:8080/SampleFE/DescriptionPage?productid=34">V5 plus</a></li>
  	      <li><a href="#">X9</a></li>
          <li><a href="#">X9 plus</a></li>
  	    </ul>
  </li>
  
  <li style="text-align:right"><a href="mycart"><span class="glyphicon glyphicon-shopping-cart"></span>Cart</a></li>
  
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
  
  

  </div>
<div class="menu col-lg-4">
	<a href="AboutPage"><li class="about " style="text-align:right; color: #9f9fa3; font-size: 16px">About</li></a>

<c:if test="${pageContext.request.userPrincipal.name== null }">
	<a href="LoginPage"><button class="bt3 btn btn-default eff" style="float: right;"><span class="glyphicon glyphicon-log-in"></span> Login</button></a>
    <a href="RegistrationPage"><button class="bt3 btn btn-default eff" style="float: right;"><span class="glyphicon glyphicon-registration-mark"></span> Register</button></a>
</c:if>


<c:if test="${pageContext.request.userPrincipal.name!= null }">
	<a href="logout"><button class="bt3 eff" style="float: right;"><span class="glyphicon glyphicon-log-out"></span>Logout</button></a>

  
</c:if>
  
</div>

</div>
</div>
<div class="col-lg-12 pn" style="background-color: #242f3a; z-index: -1 "></div>

<div class="col-lg-12 pr " style="background-color: #56b881; z-index: -1"></div>

</div>


</body>
</html>