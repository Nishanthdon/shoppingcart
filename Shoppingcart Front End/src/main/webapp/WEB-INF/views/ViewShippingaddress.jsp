<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<br><br><br>

 <a href="shippingaddressPage"> <button  class="btn btn-info" type="button"><span style="float: center;">New Shipping Address</span></button> </a>
 
 <br><br>

 <c:forEach items="${shippingaddressList}" var="shipping" >
 <div class="col-sm-3 col-sm-offset-1" style="width:300px;heigth:500px;border:5px solid grey; float: left; margin-left: 1.5em;" >

<a class="btn btn-info" href="deleteshippingAddress?shippingId=${shipping.sid}">
<span style="float: left;margin-right:1em;" class="glyphicon glyphicon-trash"></span> 
</a>
<a class="btn btn-info" href="editshippingAddress?shippingId=${shipping.sid }">
<span style="float: left; margin-right:1em;"class="glyphicon glyphicon-pencil"></span>
</a>

<br><font color="#ff0066">Shipping address</font><br><br>

Name:${shipping.name}<br>
<%-- Email:${shipping.email}<br> --%>
Contact Number:${shipping.contact}<br>
Address:${shipping.address}<br>
Zipcode:${shipping.zipcode}

<br><br>

<a href="shippingAddress?shippingId=${shipping.sid}"><button class="btn btn-info" >Deliver Here</button></a>

<br><br>
</div>
</c:forEach>
<br><br> 