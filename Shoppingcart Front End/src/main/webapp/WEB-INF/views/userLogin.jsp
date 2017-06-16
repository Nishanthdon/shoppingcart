<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> Welcome User</title>
</head>
<body>

<jsp:include page="Head.jsp"></jsp:include>

<br><br><br><br><br>





<c:choose>
<c:when test="${isUserClickedView=='true'}">
		<jsp:include page="Description.jsp"></jsp:include>
	</c:when>
	
<c:when test="${isUserClickedAddtocart=='true'}">
		<jsp:include page="addCart.jsp"></jsp:include>
	</c:when>
	
<c:when test="${isUserClickedProceed=='true'}">
		<jsp:include page="ViewShippingaddress.jsp"></jsp:include>
	</c:when>
	
<c:when test="${isUserClickednewshippingaddress=='true'}">
		<jsp:include page="ShippingAddress.jsp"></jsp:include>
	</c:when>
	
<c:when test="${editShippingAddressClicked=='true'}">
		<jsp:include page="EditShippingaddress.jsp"></jsp:include>
	</c:when>
	
<c:when test="${deliverhereClicked=='true'}">
		<jsp:include page="Payment.jsp"></jsp:include>
	</c:when>
	
<c:when test="${checkoutClicked=='true'}">
		<jsp:include page="Thankyou.jsp"></jsp:include>
	</c:when>
	
<c:otherwise>
<jsp:include page="Productgrid1.jsp"></jsp:include>
</c:otherwise>	
</c:choose>
	

	
	
</body>
</html>