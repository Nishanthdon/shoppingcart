<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<style>

.bt6{
	width: 20%;
}

.bt6:HOVER {
	background-color: green;
}

.bt7:HOVER {
	background-color: red;
}

.bt8:HOVER {
	background-color: yellow;
}

.pad{
	padding-bottom: 10px;
}
</style>

<br><br><br>

<div style="background-color: #6a737b">

<br><br>

<div class="container" style="height: 1000px;">
<div class="jumbotron" style="box-shadow:5px;">


 <c:forEach items="${shippingaddressList}" var="shipping" >




<div style="text-align: center;"> <font color="#ff0066" size="6px"> Address for Shipping </font> </div>


<br><br>

	<div style="color: green; font-size: 20px; float: left;"> <b>Address:</b> 
	
	<a class="btn btn-info bt7" href="deleteshippingAddress?shippingId=${shipping.sid}">
	<span style="float: left;" class="glyphicon glyphicon-trash"></span> 
	</a>
	<a class="btn btn-info bt8" href="editshippingAddress?shippingId=${shipping.sid }">
	<span style="float: left;" class="glyphicon glyphicon-pencil"></span>
	</a>
	</div>
	
	
	<br><br>
	
	<div>
	<b>Name:</b>				${shipping.name}<br>
	<b>Contact Number:</b>		${shipping.contact}<br>
	<b>Address:</b>				${shipping.address}<br>
	<b>Zipcode:</b>				${shipping.zipcode}
	</div>

<br><br><br>

<a href="shippingAddress?shippingId=${shipping.sid}"><button class="btn btn-info bt6" >Deliver Here</button></a>
or
 <a href="shippingaddressPage"> <button  class="btn btn-info bt6" type="button"><span style="float: center;">New Shipping Address</span></button> </a>
 

<hr>

</c:forEach>
<br><br> 


</div>
</div>
</div>


