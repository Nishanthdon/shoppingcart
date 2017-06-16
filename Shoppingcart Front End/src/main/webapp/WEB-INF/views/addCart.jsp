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


</style>


<!-- <style>

.table>tbody>tr>td, .table>tfoot>tr>td{
    vertical-align: middle;
}
@media screen and (max-width: 600px) {
    table#cart tbody td .form-control{
		width:20%;
		display: inline !important;
	}
	.actions .btn{
		width:36%;
		margin:1.5em 0;
	}
	
	.actions .btn-info{
		float:left;
	}
	.actions .btn-danger{
		float:right;
	}
	
	table#cart thead { display: none; }
	table#cart tbody td { display: block; padding: .6rem; min-width:320px;}
	table#cart tbody tr td:first-child { background: #333; color: #fff; }
	table#cart tbody td:before {
		content: attr(data-th); font-weight: bold;
		display: inline-block; width: 8rem;
	}
	
	
	
	table#cart tfoot td{display:block; }
	table#cart tfoot td .btn{display:block;}
	
}

</style> -->


</head>
<body>

<br><br>


<h2 style="text-align: center;">Welcome ${user.id} </h2>
<br>

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
				<th align="left">Days</th>
				<th align="left">Remove</th>

</tr>
<c:forEach items="${cartList}" var="cart" varStatus="status">
				<tr>
					<td>${status.count}</td>
					<td></td>
					<td>${cart.productname}</td>
					<td>${cart.price}</td>
					<td>${cart.quantity}</td>
					<td>${cart.total}</td>
					<td>${cart.days}</td>
					<td><a href="removeCart?cartId=${cart.cartId}"> <button style="background-color: red; color: white; border-radius:10px;"> Remove</button></a></td>
				</tr>
				
</c:forEach>

		<tr class="tot">
				<td colspan="5" style="text-align: right;">Grand Total :</td>
				<td colspan="2">${GrandTotal}</td>
				<td></td>
			</tr> 
			
		</table>
		</div>
		
		<br>
		<div style="text-align: center;">
			<a href="proceed"><button style="background-color: #fcb314; color: white; border-radius: 10px; height: 35px; width: 200px">Proceed</button></a>
			<a href="http://localhost:8080/SampleFE/afterlogin"><button style="background-color: #fcb314; color: white; border-radius: 10px; height: 35px; width: 200px"> Continue Shopping </button></a>
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







