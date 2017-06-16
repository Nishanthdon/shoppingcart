<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>View Supplier</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>

<body>


<h4 style="color: red">Suppliers: </h4>

<br>
<div class="col-lg-1"></div>
<div class="col-lg-10">

<table class = "table table-bordered">
   
      <tr style="background-color: #56b881">
       <td>S.NO</td>
      	<th>ID</th>
      	<th>Name</th>
      	<th>Description</th>
      	<th>Contact</th>
      	<th>Mail</th>
        <th>Address</th>
        <th>Citycode</th>
        <th>EDIT</th>
        <th>DELETE</th>
      </tr>
   

	 <c:forEach items="${supplierList}" var="supplier" varStatus="status">
  <tr>
  <td>${status.count}</td>
  <td>${supplier.supplierid}</td>
   <td>${supplier.suppliername}</td>
    <td>${supplier.description}</td>
    <td>${supplier.contact}</td>
    <td>${supplier.mail}</td>
    <td>${supplier.address}</td>
    <td>${supplier.citycode}</td>
    <td><a href="editSupplier?supplierId=${supplier.supplierid}" ><button style="background-color: green; color: white; border-radius:10px;">edit </button></a></td>
    <td><a href="deleteSupplier?supplierId=${supplier.supplierid}" > <button style="background-color: red; color: white; border-radius:10px;">delete </button></a></td>
  
  </tr>
  
  </c:forEach>

</table>
</div>
<div class="col-lg-1"></div>


</body>
</html>