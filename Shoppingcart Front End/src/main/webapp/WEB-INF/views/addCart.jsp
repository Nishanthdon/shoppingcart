<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<style type="text/css">
table,td,th{
border-color:#56b881;
border-style: groove;
}
th{
	padding: 10px;
}
td{
	padding: 40px;
	background-color: #c4dff6;
}

tr.tot td{
	padding: 10px;
}

.bt11{
	background-color: #fcb314; 
	color: white;
	 border-radius: 10px; 
	 height: 35px;
	 width: 200px;

}

.bt11:HOVER {
	background-color: #85c446;
}

</style>




</style> -->


</head>
<body>

<br><br><br>


<h3 style="color: red"> Your Cart : </h3>

<br>

<div class="col-lg-1"></div>

<div class="col-lg-10">

<div id="page">
<!-- <div class="row">
		<div class="qty-changer">
		 <input class="qty-input form-group" type="number" value="1"/> -->
<table style="width: 100%">

			<tr style="background: #333; color: #fff; ">
				<th align="left">S.No</th>
				<th align="left">Image</th>
				<th align="left">Product Name</th>
				<th align="left">Price</th>
				<th align="left">Quantity</th>
				<th align="left">Total</th>
				<th align="left">Days to Deliver</th>
				<th align="left">Remove</th>

</tr>
<c:forEach items="${cartList}" var="cart" varStatus="status">
				<tr>
					<td>${status.count}</td>
					<td><img src="resources/images/Products/${cart.productid}.jpg" style="height: 100px; width: 80px"></td>
					<td>${cart.productname}</td>
					<td>Rs:${cart.price}</td>
					<td>${cart.quantity}</td>
					<td>Rs:${cart.total}</td>
					<td>${cart.days}</td>
					<td><a href="removeCart?cartId=${cart.cartId}"> <button style="background-color: red; color: white; border-radius:10px;"> Remove</button></a></td>
				</tr>
				
</c:forEach>

		<tr class="tot">
				<td colspan="5" style="text-align: right;">Grand Total :</td>
				<td colspan="2">Rs:${GrandTotal}</td>
				<td></td>
			</tr> 
			
		</table>
		</div>
		
		<br>
		<div style="text-align: center;">
			<c:if test="${isCartEmpty=='true' }">
				No Items
			</c:if>
			<c:if test="${isCartEmpty=='false' }">
			<a href="proceed"><button class="bt11">Proceed</button></a>
			</c:if>
			<a href="http://localhost:8080/SampleFE/afterlogin"><button class="bt11"> Continue Shopping </button></a>
		</div>



</div>

<div class="col-lg-1"></div>

<div class="col-lg-12 pa"></div>


<%-- 
<div class="container">
	<table id="cart" class="table table-hover table-condensed">
    				<thead>
						<tr>
							<th style="width:50%">Product</th>
							<th style="width:10%">Price</th>
							<th style="width:8%">Quantity</th>
							<th style="width:22%" class="text-center">Subtotal</th>
							<th style="width:10%"></th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td data-th="Product">
								<div class="row">
									<div class="col-sm-2 hidden-xs"><img src="http://placehold.it/100x100" alt="..." class="img-responsive"/></div>
									<div class="col-sm-10">
										<h4 class="nomargin">Product 1</h4>
										<p>Quis aute iure reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet.</p>
									</div>
								</div>
							</td>
							<td data-th="Price">$1.99</td>
							<td data-th="Quantity">
								<input type="number" class="form-control text-center" value="1">
							</td>
							<td data-th="Subtotal" class="text-center">1.99</td>
							<td class="actions" data-th="">
								<a href="removeCart?cartId=${cart.cartId}"><button type="button" class="btn btn-link btn-xs">
									<span class="glyphicon glyphicon-trash"> </span>
								</button></a>								
							</td>
						</tr>
					</tbody>
					<tfoot>
						<tr class="visible-xs">
							<td class="text-center"><strong>Total 1.99</strong></td>
						</tr>
						<tr>
							<td><a href="#" class="btn btn-warning"><i class="fa fa-angle-left"></i> Continue Shopping</a></td>
							<td colspan="2" class="hidden-xs"></td>
							<td class="hidden-xs text-center"><strong>Total $1.99</strong></td>
							<td><a href="#" class="btn btn-success btn-block">Checkout <i class="fa fa-angle-right"></i></a></td>
						</tr>
					</tfoot>
				</table>
</div>
 --%>
</body>
</html>







