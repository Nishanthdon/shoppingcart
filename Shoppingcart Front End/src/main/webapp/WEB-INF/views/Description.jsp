<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>


<style type="text/css">


body {
  font-family: 'open sans';
  overflow-x: hidden; }

img {
  max-width: 100%; }

.preview {
  display: -webkit-box;
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-orient: vertical;
  -webkit-box-direction: normal;
  -webkit-flex-direction: column;
      -ms-flex-direction: column;
          flex-direction: column; }
  @media screen and (max-width: 996px) {
    .preview {
      margin-bottom: 20px; } }

.preview-pic {
  -webkit-box-flex: 1;
  -webkit-flex-grow: 1;
      -ms-flex-positive: 1;
          flex-grow: 1; }

.preview-thumbnail.nav-tabs {
  border: none;
  margin-top: 15px; }
  .preview-thumbnail.nav-tabs li {
    width: 18%;
    margin-right: 2.5%; }
    .preview-thumbnail.nav-tabs li img {
      max-width: 100%;
      display: block; }
    .preview-thumbnail.nav-tabs li a {
      padding: 0;
      margin: 0; }
    .preview-thumbnail.nav-tabs li:last-of-type {
      margin-right: 0; }

.tab-content {
  overflow: hidden; }
  .tab-content img {
    width: 100%;
    -webkit-animation-name: opacity;
            animation-name: opacity;
    -webkit-animation-duration: 1s;
            animation-duration: 1s; }

.card {
  background: #f0e6c8;
  padding: 2em;
  line-height: 1.5em;
   }

@media screen and (min-width: 997px) {
  .wrapper {
    display: -webkit-box;
    display: -webkit-flex;
    display: -ms-flexbox;
    display: flex; } }

.details {
  display: -webkit-box;
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-orient: vertical;
  -webkit-box-direction: normal;
  -webkit-flex-direction: column;
      -ms-flex-direction: column;
          flex-direction: column; }

.colors {
  -webkit-box-flex: 1;
  -webkit-flex-grow: 1;
      -ms-flex-positive: 1;
          flex-grow: 1; }

.price, .sizes, .colors {
  text-transform: UPPERCASE;
  font-weight: bold; }
  
  
  .product-title{
  	text-transform: UPPERCASE;
  	color: red;
  	font-size: 40px;
  }

.checked, .price span {
  color: #ff9f1a; }

.product-title, .rating, .product-description, .price, .vote, .sizes {
  margin-bottom: 15px; }

.product-title {
  margin-top: 0; }

.size {
  margin-right: 10px; }
  .size:first-of-type {
    margin-left: 40px; }

.color {
  display: inline-block;
  vertical-align: middle;
  margin-right: 10px;
  height: 2em;
  width: 2em;
  border-radius: 2px; }
  .color:first-of-type {
    margin-left: 20px; }

.add-to-cart, .like {
  background: #ff9f1a;
  padding: 1.2em 1.5em;
  border: none;
  text-transform: UPPERCASE;
  font-weight: bold;
  color: #fff;
  -webkit-transition: background .3s ease;
          transition: background .3s ease; }
  .add-to-cart:hover, .like:hover {
    background: #b36800;
    color: #fff; }



.tooltip-inner {
  padding: 1.3em; }

@-webkit-keyframes opacity {
  0% {
    opacity: 0;
    -webkit-transform: scale(3);
            transform: scale(3); }
  100% {
    opacity: 1;
    -webkit-transform: scale(1);
            transform: scale(1); } }

@keyframes opacity {
  0% {
    opacity: 0;
    -webkit-transform: scale(3);
            transform: scale(3); }
  100% {
    opacity: 1;
    -webkit-transform: scale(1);
            transform: scale(1); } }







.mfp-fade.mfp-bg {
	opacity: 0;
	-webkit-transition: all 0.15s ease-out; 
	-moz-transition: all 0.15s ease-out; 
	transition: all 0.15s ease-out;
}
.mfp-fade.mfp-bg.mfp-ready {
	opacity: 0.8;
}
.mfp-fade.mfp-bg.mfp-removing {
	opacity: 0;
}

.mfp-fade.mfp-wrap .mfp-content {
	opacity: 0;
	-webkit-transition: all 0.15s ease-out; 
	-moz-transition: all 0.15s ease-out; 
	transition: all 0.15s ease-out;
}
.mfp-fade.mfp-wrap.mfp-ready .mfp-content {
	opacity: 1;
}
.mfp-fade.mfp-wrap.mfp-removing .mfp-content {
	opacity: 0;
}









</style>




</head>
<body>


<br><br><br>

<div style="text-align: center">
	
	<a class="image-popup-vertical-fit" href="https://youtube.com/embed/${product.videourl}?autoplay=1">
		<button class="like btn btn-default"> Watch Official Video </button>
	</a>
</div>


<div class="col-lg-12 pnn"></div>

<div class="container">
	   
		<div class="card">
			<div class="container-fliud">
				<div class="wrapper row">
				
					<div class="col-md-1"></div>
					  
					<div class="preview col-md-5">
						
						<div class="preview-pic tab-content">
						  <div class="tab-pane active" id="pic-1"><img src="resources/images/Products/${product.productid}.jpg" style="height: 430px; width: 330px"></div>
						</div>
						 
					</div>
					<div class="details col-md-5">
					  <form>
					  <div class="container">
						<label class="product-title">  ${product.productname} </label>
						
						<br><br><br>
						
						<!-- <div class="rating">
							 <div class="stars">
								<span class="fa fa-star checked"></span>
								<span class="fa fa-star checked"></span>
								<span class="fa fa-star checked"></span>
								<span class="fa fa-star"></span>
								<span class="fa fa-star"></span>
							</div> 
						</div> -->
						
						
						<label class="product-description price">Description:<span>${product.description} </span>  </label>
					
						
						<h5 class="price">current price: <span>Rs: ${product.price} </span></h5>
						
						<h5 class="price">RAM: <span>${product.ram} </span> </h5>
						
						<h5 class="price">Internal Storage: <span>${product.internalstorage} </span> </h5>
						
						<h5 class="price">Camera: <span>${product.camera} </span> </h5>
						
						<h5 class="price">Battery Capacity: <span>${product.battery} </span> </h5>
						
						<h5 class="colors">Available color:
							<a href="#"> <button  class="color" style="background-color: ${product.colour}"></button> </a>
						</h5>
						
						<br>
						<h5 class="price">Available Stock: <span>${product.quantity} </span> </h5>
						
						<h3 style="color: red; font-size: 30px;">${message}</h3>
						<br><br>
						
						<div class="action">
						<c:if test="${pageContext.request.userPrincipal.name!=null }">
							<a href="addCart?productid=${product.productid}" class="add-to-cart btn btn-default">add to cart </a>
						</c:if>
						<c:if test="${pageContext.request.userPrincipal.name==null }">
							<a href="LoginPage" class="add-to-cart btn btn-default">add to cart </a>
						</c:if>
							
							<a  href="http://localhost:8080/SampleFE/afterlogin" > <button class="like btn btn-default" type="button" style="float: right;"> back</button></a>
						</div>
						</div>
					  </form>	
					</div>
					<div class="col-md-1"></div>			
					
				</div>
			</div>
		</div>
	</div>

<div class="col-lg-12 pnn"></div>
				








<script type="text/javascript">


$(document).ready(function() {
	$('.popup-youtube, .popup-vimeo, .popup-gmaps').magnificPopup({
		disableOn: 700,
		type: 'iframe',
		mainClass: 'mfp-fade',
		removalDelay: 160,
		preloader: false,

		fixedContentPos: false
	});
});



</script>







				    


<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>



</body>
</html>