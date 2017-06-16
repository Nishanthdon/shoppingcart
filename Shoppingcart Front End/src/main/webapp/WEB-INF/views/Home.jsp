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

<script src="http://code.jquery.com/jquery-1.7.1.min.js"></script>  
<script src="resources/js/bjqs-1.3.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<title>Mobile Shop</title>


<!-- 
<link href='https://fonts.googleapis.com/css?family=Kelly Slab' rel='stylesheet'>
<style>

sub,.title{
	font-family: 'Kelly Slab';
}
</style> -->


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


.explore_btn {
    padding: 10px 12px;
    background-color: #56b881;
    float: left;
    width: 35%;
    border-radius: 30px;
}

.rbut{
	float: right;
}

.bgcol{
	background-color: #d7d7d8;
}

.eff1{
	-webkit-transition: width 1s !important;
    transition: width 400ms !important;
}
.eff1:HOVER {
	width: 300px !important;
}


/* Image hover effect */

.image {
  opacity: 1;
  display: block;
  width: 100%;
  height: auto;
  transition: .5s ease;
  backface-visibility: hidden;
}

.middle {
  transition: .5s ease;
  opacity: 0;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  -ms-transform: translate(-50%, -50%)
}

.img:hover .image {
  opacity: 0.3;
}

.img:hover .middle {
  opacity: 1;
}

.text {
  background-color: #4CAF50;
  color: white;
  font-size: 16px;
  padding: 16px 32px;
}



</style>



</head>
<body >

<jsp:include page="Head.jsp"></jsp:include>
<br><br><br><br><br><br>


<c:choose>
<c:when test="${isUserClickedLogin=='true'}">
		<jsp:include page="Login.jsp"></jsp:include>
	</c:when>

<c:when test="${isUserClickedRegister=='true' }">
		<jsp:include page="Register.jsp"></jsp:include>
	</c:when>

<c:when test="${isUserClickedExplore=='true' }">
		<jsp:include page="Productgrid1.jsp"></jsp:include>
	</c:when>
	
<c:when test="${isUserClickedAbout=='true' }">
		<jsp:include page="About.jsp"></jsp:include>
	</c:when>


<c:otherwise>

		

<div class="col-lg-12">
	<jsp:include page="Slideshow.jsp"></jsp:include>
</div>


</c:otherwise>
</c:choose>


<div class="col-lg-12 ">
<div class="row">

</div>
</div>

<div class="col-lg-12 pn ">  </div>


<div class="col-lg-12 bgcol">
<div class="row">

<div class="col-lg-1"> </div>
<div class="col-lg-5 pc">
	<h1 style="font-size: 55px;">  <b class="title">Galaxy <sub style="font-size: 16px;">SAMSUNG</sub> </b> </h1>
	<p style=" font-size: 20px;">The revolutionary design of the Galaxy S8 and S8+ begins from the inside out. We rethought every part of the phone's layout to break through the confines of the smartphone screen. So all you see is pure content and no bezel. It's the biggest, most immersive screen on a Galaxy smartphone of this size. And it's easy to hold in one hand.</p>
	
	<div class="col-lg-12 pnn " style="">  </div>
	<a href="categories?categoryName=Samsung"><button type="button" class="explore_btn lbut eff1" style="color: black;">Explore</button></a>
</div>

<div class="col-lg-6 pc img">
<div class="row">

	<img class="image" src="resources/images/Samsung Home.png" style="height:560px;width:600px;">
	<div class="middle">
    	<a href="categories?categoryName=Samsung"> <div class="text">Galaxy S8</div> </a>
    </div>

</div>
</div>


</div>
</div>



<div class="col-lg-12 pn " style="">  </div>




<div class="col-lg-12 pn " style="">  </div>

<div class="col-lg-12 ">
<div class="row">


<div class="col-lg-6 pc img">
<div class="row">

	<img class="image" src="resources/images/Sony Home.png" style="height:560px;width:600px;">
	<div class="middle">
    	<a href="categories?categoryName=Sony"> <div class="text">Xperia XZ</div> </a>
    </div>

</div>
</div>


<div class="col-lg-5 pc">
	<h1 style="font-size: 55px; text-align: right;">  <b>Xperia <sub style="font-size: 16px;">SONY</sub> </b> </h1>
	<p style=" font-size: 20px;text-align: right; ">The revolutionary design of the Xperia Z5 and Z5 Premium begins from the inside out. We rethought every part of the phone's layout to break through the confines of the smartphone screen. So all you see is pure content and no bezel. It's the biggest, most immersive screen on a Xperia smartphone of this size. And it's easy to hold in one hand.</p>
	
	<div class="col-lg-12 pnn " style="">  </div>
	<a href="categories?categoryName=Sony"><button type="button" class="explore_btn rbut eff1" style="color: black;">Explore</button></a>

</div>

<div class="col-lg-1"> </div>
</div>
</div>



<div class="col-lg-12 pn " style="">  </div>






<div class="col-lg-12 bgcol">
<div class="row">

<div class="col-lg-1"> </div>
<div class="col-lg-5 pc">
	<h1 style="font-size: 55px">  <b> Z Play <sub style="font-size: 16px;">MOTOROLA</sub> </b> </h1>
	<p style=" font-size: 20px;">The revolutionary design of the Z Play & Z Style begins from the inside out. We are thought every part of the phone's layout to break through the confines of the smartphone screen. So all you see is pure content and no bezel. It's the biggest, most immersive screen on a Moto smartphone of this size. And it's easy to hold in one hand.</p>
	
	<div class="col-lg-12 pnn " style="">  </div>
	<a href="categories?categoryName=Motorola"> <button type="button" class="explore_btn eff1" style="color: black;">Explore</button></a>
	
	

</div>

<div class="col-lg-6 pc img">
<div class="row">

	<img class="image" src="resources/images/Motorola Home.png" style="height:560px;width:600px;">
	<div class="middle">
    	<a href="categories?categoryName=Motorola"> <div class="text">Moto Z Play</div> </a>
    </div>

</div>
</div>


</div>
</div>


<div class="col-lg-12 pn " style="">  </div>





<div class="col-lg-12 pn " style="">  </div>

<div class="col-lg-12">
<div class="row">


<div class="col-lg-6 pc img">
<div class="row">

	<img class="image" src="resources/images/Vivo Home.jpg" style="height:560px;width:600px;">
	<div class="middle">
    	<a href="categories?categoryName=Vivo"> <div class="text">Vivo V5</div> </a>
    </div>

</div>
</div>


<div class="col-lg-5 pc">
	<h1 style="font-size: 55px; text-align: right;">  <b>Vivo V5 <sub style="font-size: 16px;">VIVO</sub> </b> </h1>
	<p style=" font-size: 20px;">The revolutionary design of the Vivo V5 begins from the inside out. We rethought every part of the phone's layout to break through the confines of the smartphone screen. So all you see is pure content and no bezel. It's the biggest, most immersive screen on a Vivo smartphone of this size. And it's easy to hold in one hand.</p>
	
	<div class="col-lg-12 pnn " style="">  </div>
	<a href="categories?categoryName=Vivo"> <button type="button" class="explore_btn rbut eff1" style="color: black;">Explore</button></a>

</div>

<div class="col-lg-1"> </div>
</div>
</div>


<div class="col-lg-12 pn " style="">  </div>	


<div class="col-lg-12 pn " style="">  </div>

<jsp:include page="Footer.jsp"></jsp:include>


</body>
</html>