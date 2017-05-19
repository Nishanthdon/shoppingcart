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


<!-- Start WOWSlider.com HEAD section -->
<link rel="stylesheet" type="text/css" href="resources/engine1/style.css" />
<script type="text/javascript" src="resources/engine1/jquery.js"></script>
<!-- End WOWSlider.com HEAD section -->



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

.explore_btn {
    padding: 10px 12px;
    background-color: #56a0d3;
    float: left;
    width: 35%;
    border-radius: 30px;
}

.explore_btn:hover {
    opacity: 0.7;
}
.rbut{
	float: right;
}

.bgcol{
	background-color: #d7d7d8;
}




</style>



</head>
<body >

<jsp:include page="Head.jsp"></jsp:include>





<c:if test="${isUserClickedLogin=='true'}">
		<jsp:include page="Login.jsp"></jsp:include>
	</c:if>

<c:if test="${isUserClickedRegister=='true' }">
		<jsp:include page="Register.jsp"></jsp:include>
	</c:if>
	

		




<div class="col-lg-12 pn" style= "z-index:-1; background-image: url('resources/images/Woodenback2.jpg');">  </div>


<div class="col-lg-12 " style="z-index:-1; background-image: url('resources/images/Woodenback2.jpg');" >
<div class="row pb">

<!-- Start WOWSlider.com BODY section -->
<div id="wowslider-container1">
<div class="ws_images"><ul>
        <li><img src="resources/images/Sony Mobile.png" alt="Xperia XZ" title="Xperia XZ" id="wows1_0"/></li>
		<li><img src="resources/data1/images/galaxy_j5__j7.jpg" alt="Galaxy J5 & J7" title="Galaxy J5 & J7" id="wows1_0"/></li>
		<li><img src="resources/data1/images/galaxy_s7.jpg" alt="Galaxy S7" title="Galaxy S7" id="wows1_1"/></li>
		<li><img src="resources/data1/images/galaxy_s8+.jpg" alt="Galaxy S8+" title="Galaxy S8+" id="wows1_2"/></li>
		<li><img src="resources/data1/images/moto_g4_plus.jpg" alt="Moto G4 plus" title="Moto G4 plus" id="wows1_3"/></li>
		<li><img src="resources/data1/images/moto_z_play.jpg" alt="Moto Z play" title="Moto Z play" id="wows1_4"/></li>
		<li><img src="resources/data1/images/moto_z_style.jpg" alt="Moto Z style" title="Moto Z style" id="wows1_5"/></li>
		<li><img src="resources/data1/images/sony_xperia_water_proof.jpg" alt="Sony Xperia Water Proof" title="Sony Xperia Water Proof" id="wows1_6"/></li>
		<li><img src="resources/data1/images/sony_xperia.jpg" alt="Sony Xperia" title="Sony Xperia" id="wows1_7"/></li>
		<li><img src="resources/data1/images/xperia_water_proof.jpg" alt="Xperia water Proof" title="Xperia water Proof" id="wows1_9"/></li>
	</ul></div>
	<div class="ws_bullets"><div>
		<a href="#" title="Galaxy J5 & J7"><span><img src="resources/data1/tooltips/galaxy_j5__j7.jpg" alt="Galaxy J5 & J7"/>1</span></a>
		<a href="#" title="Galaxy S7"><span><img src="resources/data1/tooltips/galaxy_s7.jpg" alt="Galaxy S7"/>2</span></a>
		<a href="#" title="Galaxy S8+"><span><img src="resources/data1/tooltips/galaxy_s8+.jpg" alt="Galaxy S8+"/>3</span></a>
		<a href="#" title="Moto G4 plus"><span><img src="resources/data1/tooltips/moto_g4_plus.jpg" alt="Moto G4 plus"/>4</span></a>
		<a href="#" title="Moto Z play"><span><img src="resources/data1/tooltips/moto_z_play.jpg" alt="Moto Z play"/>5</span></a>
		<a href="#" title="Moto Z style"><span><img src="resources/data1/tooltips/moto_z_style.jpg" alt="Moto Z style"/>6</span></a>
		<a href="#" title="Sony Xperia Water Proof"><span><img src="resources/data1/tooltips/sony_xperia_water_proof.jpg" alt="Sony Xperia Water Proof"/>7</span></a>
		<a href="#" title="Sony Xperia"><span><img src="resources/data1/tooltips/sony_xperia.jpg" alt="Sony Xperia"/>8</span></a>
		<a href="#" title="Xperia water Proof"><span><img src="resources/data1/tooltips/xperia_water_proof.jpg" alt="Xperia water Proof"/>10</span></a>
	</div></div><div class="ws_script" style="position:absolute;left:-99%"><a href="http://wowslider.com/vi">cssslider</a> by WOWSlider.com v8.7</div>
<div class="ws_shadow"></div>
</div>	
<script type="text/javascript" src="resources/engine1/wowslider.js"></script>
<script type="text/javascript" src="resources/engine1/script.js"></script>
<!-- End WOWSlider.com BODY section -->

</div>
</div>






<div class="col-lg-12 ">
<div class="row">

</div>
</div>

<div class="col-lg-12 pn ">  </div>


<div class="col-lg-12 bgcol">
<div class="row">

<div class="col-lg-1"> </div>
<div class="col-lg-5 pc">
	<h1 style="font-size: 55px; font-family: fantasy;">  <b>Galaxy </b> </h1>
	<p style=" font-size: 20px;">The revolutionary design of the Galaxy S8 and S8+ begins from the inside out. We rethought every part of the phone's layout to break through the confines of the smartphone screen. So all you see is pure content and no bezel. It's the biggest, most immersive screen on a Galaxy smartphone of this size. And it's easy to hold in one hand.</p>
	
	<div class="col-lg-12 pnn " style="">  </div>
	<a href="#"><button type="button" class="explore_btn lbut" style="color: black;">Explore</button></a>
	
	

</div>

<div class="col-lg-6 pc">
<div class="row">

<img src="resources/images/Samsung Home.png" style="height:560px;width:600px;">

</div>
</div>


</div>
</div>



<div class="col-lg-12 pn " style="">  </div>




<div class="col-lg-12 pn " style="">  </div>

<div class="col-lg-12 ">
<div class="row">


<div class="col-lg-6 pc">
<div class="row">

<img src="resources/images/Sony Home.png" style="height:560px;width:600px;">

</div>
</div>


<div class="col-lg-5 pc">
	<h1 style="font-size: 55px; font-family: fantasy; text-align: right;">  <b>Xperia </b> </h1>
	<p style=" font-size: 20px;text-align: right; ">The revolutionary design of the Xperia Z5 and Z5 Premium begins from the inside out. We rethought every part of the phone's layout to break through the confines of the smartphone screen. So all you see is pure content and no bezel. It's the biggest, most immersive screen on a Xperia smartphone of this size. And it's easy to hold in one hand.</p>
	
	<div class="col-lg-12 pnn " style="">  </div>
	<a href="#"><button type="button" class="explore_btn rbut" style="color: black;">Explore</button></a>

</div>

<div class="col-lg-1"> </div>
</div>
</div>



<div class="col-lg-12 pn " style="">  </div>






<div class="col-lg-12 bgcol">
<div class="row">

<div class="col-lg-1"> </div>
<div class="col-lg-5 pc">
	<h1 style="font-size: 55px; font-family: fantasy;">  <b> Z Play </b> </h1>
	<p style=" font-size: 20px;">The revolutionary design of the Z Play & Z Style begins from the inside out. We rethought every part of the phone's layout to break through the confines of the smartphone screen. So all you see is pure content and no bezel. It's the biggest, most immersive screen on a Moto smartphone of this size. And it's easy to hold in one hand.</p>
	
	<div class="col-lg-12 pnn " style="">  </div>
	<a href="#"><button type="button" class="explore_btn" style="color: black;">Explore</button></a>
	
	

</div>

<div class="col-lg-6 pc">
<div class="row">

<img src="resources/images/Motorola Home.png" style="height:560px;width:600px;">

</div>
</div>


</div>
</div>


<div class="col-lg-12 pn " style="">  </div>





<div class="col-lg-12 pn " style="">  </div>

<div class="col-lg-12">
<div class="row">


<div class="col-lg-6 pc">
<div class="row">

<img src="resources/images/Vivo Home.jpg" style="height:560px;width:600px;">

</div>
</div>


<div class="col-lg-5 pc">
	<h1 style="font-size: 55px; font-family: fantasy; text-align: right;">  <b>Vivo V5 </b> </h1>
	<p style=" font-size: 20px;">The revolutionary design of the Vivo V5 begins from the inside out. We rethought every part of the phone's layout to break through the confines of the smartphone screen. So all you see is pure content and no bezel. It's the biggest, most immersive screen on a Vivo smartphone of this size. And it's easy to hold in one hand.</p>
	
	<div class="col-lg-12 pnn " style="">  </div>
	<a href="#"><button type="button" class="explore_btn rbut" style="color: black;">Explore</button></a>

</div>

<div class="col-lg-1"> </div>
</div>
</div>


<div class="col-lg-12 pn " style="">  </div>











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