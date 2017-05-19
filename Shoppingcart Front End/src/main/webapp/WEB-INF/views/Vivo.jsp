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
<title>Vivo Mobiles </title>

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

.explore_btn {
    padding: 10px 12px;
    background-color: #56a0d3;
    
    width: 100%;
    border-radius: 30px;
}

.explore_btn:hover {
    opacity: 0.7;
}







body {
    margin: 0;
    font-family: 'Lato', sans-serif;
}

.overlay {
    height: 100%;
    width: 0;
    position: fixed;
    z-index: 1;
    top: 0;
    left: 0;
    background-color: rgb(0,0,0);
    background-color: rgba(0,0,0, 0.9);
    overflow-x: hidden;
    transition: 0.5s;
}

.overlay-content {
    position: relative;
    top: 25%;
    width: 100%;
    text-align: center;
    margin-top: 30px;
    color: white;
}



.overlay .closebtn {
    position: absolute;
    top: 20px;
    right: 45px;
    font-size: 60px;
    color: red;
}

@media screen and (max-height: 450px) {
  .overlay a {font-size: 20px}
  .overlay .closebtn {
    font-size: 40px;
    top: 15px;
    right: 35px;
  }
}







</style>


</head>
<body>

<jsp:include page="Head.jsp"></jsp:include>



<div class="col-lg-12" style="z-index:-1;">
	<div class="row">
<img src="resources/images/Vivo Page img.png" style="height:550px;width:1440px;float:center;" class="img-responsive" >

	</div>
</div>


<div class="col-lg-12 pn"> </div>
<div class="col-lg-12 pn"> </div>
<div class="col-lg-12 pn"> </div>



<div class="col-lg-12 pb">
<div class="row">
	<div class="col-lg-3">
	<div class="col-lg-12 pb" style=" border: 3px dashed gray ;">
		<center><h3> <b>Vivo V5</b> </h3></center>
		<img class="col-lg-12 img-resposive" src="resources/images/vivopage/Vivo V5.jpg" style="height: 320px;">
		<div class="col-lg-12">
			<div class="col-lg-3"></div>
			<div class="col-lg-6">
				<button type="button" class="explore_btn" style="color: black;" onclick="openNav1()"> Details </button>
	        </div>
	        <div class="col-lg-3"></div>
	    </div>
	</div>
	</div>
	
	<div class="col-lg-3">
	<div class="col-lg-12 pb" style=" border: 3px dashed gray;">
		<center><h3> <b>Vivo V5 Plus</b> </h3></center>
		<img class="col-lg-12 img-resposive" src="resources/images/vivopage/Vivo V5 plus.png" style="height: 320px;">
		<div class="col-lg-12">
			<div class="col-lg-3"></div>
			<div class="col-lg-6">
				<button type="button" class="explore_btn" style="color: black;" onclick="openNav2()"> Details </button>
	        </div>
	        <div class="col-lg-3"></div>
	    </div>
	</div>
	</div>
	
	<div class="col-lg-3">
	<div class="col-lg-12 pb" style=" border: 3px dashed gray;">
		<center><h3> <b>Vivo X9</b> </h3></center>
		<img class="col-lg-12 img-resposive" src="resources/images/vivopage/Vivo X9.png" style="height: 320px;">
		<div class="col-lg-12">
			<div class="col-lg-3"></div>
			<div class="col-lg-6">
				<button type="button" class="explore_btn" style="color: black;" onclick="openNav3()"> Details </button>
	        </div>
	        <div class="col-lg-3"></div>
	    </div>
	</div>
	</div>
	
	<div class="col-lg-3">
	<div class="col-lg-12 pb" style=" border: 3px dashed gray;">
		<center><h3> <b>Vivo X9 Plus</b> </h3></center>
		<img class="col-lg-12 img-resposive" src="resources/images/vivopage/Vivo X9 plus.jpg" style="height: 320px; width: 200px;">
		<div class="col-lg-12">
			<div class="col-lg-3"></div>
			<div class="col-lg-6">
				<button type="button" class="explore_btn" style="color: black;" onclick="openNav4()"> Details </button>
	        </div>
	        <div class="col-lg-3"></div>
	    </div>
	</div>
	</div>


</div>
</div>

<div class="col-lg-12 pn"> </div>
<div class="col-lg-12 pn"> </div>
<div class="col-lg-12 pn"> </div>










<div id="myNav1" class="overlay">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav1()">&times;</a>
  <div class="overlay-content">
   
   <h4> Vivo V5</h4> 
   
  </div>
</div>

<div id="myNav2" class="overlay">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav2()">&times;</a>
  <div class="overlay-content">
   
   <h4> Vivo V5 Plus </h4> 
   
   
  </div>
</div>






<script>


function openNav1() {
    document.getElementById("myNav1").style.width = "100%";
}


function closeNav1() {
    document.getElementById("myNav1").style.width = "0%";
}


function openNav2() {
    document.getElementById("myNav2").style.width = "100%";
}


function closeNav2() {
    document.getElementById("myNav2").style.width = "0%";
}
</script>








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