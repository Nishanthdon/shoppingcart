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




</head>
<body>

<jsp:include page="Head.jsp"></jsp:include>



<h3 align="center" style="color: red;">
	YOU CAN VIEW AND EDIT THE SITE HERE
</h3>

	<c:if test="${isUserClickedAdd_Category=='true'}">
		<jsp:include page="Category.jsp"></jsp:include>
	</c:if>
	
	<c:if test="${isUserClickedView_Category=='true'}">
		<jsp:include page="viewcategory.jsp"></jsp:include>
	</c:if>
	
	<c:if test="${isUserClickedEdit_Category=='true'}">
		<jsp:include page="editcategory.jsp"></jsp:include>
	</c:if>
	
	<c:if test="${isUserClickedAdd_Product=='true'}">
		<jsp:include page="Product.jsp"></jsp:include>
	</c:if>
	
	<c:if test="${isUserClickedView_Product=='true'}">
		<jsp:include page="viewproduct.jsp"></jsp:include>
	</c:if>
	
	<c:if test="${isUserClickedEdit_Product=='true'}">
		<jsp:include page="editproduct.jsp"></jsp:include>
	</c:if>
	
	<c:if test="${isUserClickedAdd_Supplier=='true'}">
		<jsp:include page="Supplier.jsp"></jsp:include>
	</c:if>
	
	<c:if test="${isUserClickedView_Supplier=='true'}">
		<jsp:include page="viewsupplier.jsp"></jsp:include>
	</c:if>
	
	<c:if test="${isUserClickedEdit_Supplier=='true'}">
		<jsp:include page="editsupplier.jsp"></jsp:include>
	</c:if>


</body>
</html>