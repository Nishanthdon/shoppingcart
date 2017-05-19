<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>View Product</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<p> View Product </p>

<table class = "table table-bordered">
   
   
      <tr>
      <td>S.NO</td>
      	 <th>ID</th>
      	 <th>Name</th>
      	 <th>Description</th>
      	 <th>Prize</th>
      	 <th>Brand</th>
      	 <th>Color</th>
      	 <th>Quantity</th>
         <th>EDIT</th>
         <th>DELETE</th>
         
      </tr>
   
   <c:forEach items="${productList}" var="product" varStatus="status">
  <tr>
  <td>${status.count}</td>
  <td>${product.id}</td>
   <td>${product.name}</td>
    <td>${product.description}</td>
    <td>${product.price}</td>
    <td>${product.brand}</td>
    <td>${product.colour}</td>
    <td>${product.quantity}</td>
    <td>edit</td>
    <td><a href="deleteProduct?productId=${product.id}" >delete</a></td>
  
  </tr>
  
  </c:forEach>

	
</table>
</body>
</html>