<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">


  <head>
    
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>eCommerce Product Detail</title>
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700" rel="stylesheet">



<style type="text/css">




body {
    background: #f1f1f1;
}

.product-item {
    padding: 15px;
    background: #fff;
    margin-top: 20px;
    position: relative;
}
.product-item:hover {
    box-shadow: 5px 5px rgba(234, 234, 234, 0.9);
}
.product-item:after {
    content: ".";
    display: block;
    height: 0;
    clear: both;
    visibility: hidden;
    font-size: 0;
    line-height:0;
}

.pi-img-wrapper {
    position: relative;
}
.pi-img-wrapper div {
    background: rgba(0,0,0,0.3);
    position: absolute;
    left: 0;
    top: 0;
    display: none;
    width: 100%;
    height: 100%;
    text-align: center;
}
.product-item:hover>.pi-img-wrapper>div {
    display: block;
}
.pi-img-wrapper div .btn {
    padding: 3px 10px;
    color: #fff;
    border: 1px #fff solid;
    margin: -13px 5px 0;
    background: transparent;
    text-transform: uppercase;
    position: relative;
    top: 50%;
    line-height: 1.4;
    font-size: 12px;
}

.pi-img-wrapper{

}

.product-item .btn:hover {
    background: #e84d1c;
    border-color: #c8c8c8;
}

.product-item h3 {
    font-size: 14px;
    font-weight: 300;
    padding-bottom: 4px;
    text-transform: uppercase;
}
.product-item h3 a {
    color: #3e4d5c;
}
.product-item h3 a:hover {
    color: #E02222;
}
.pi-price {
    color: #e84d1c;
    font-size: 18px;
    float: left;
    padding-top: 1px;
}
.product-item .add2cart {
    float: right;
    color: #a8aeb3;
    border: 1px #ededed solid;
    padding: 3px 6px;
    text-transform: uppercase;
}
        .product-item .add2cart:hover {
            color: #fff;
            background: #e84d1c;
            border-color: #e84d1c;
        }




</style>






  </head>

  <body>
  
  <br><br>
  
<h3 style="color: red"> Mobiles: </h3>
 
   
<div class="grid">
      <c:forEach items="${productList}" var="product" varStatus="status">
        <div class="col-md-3">
            <div class="product-item">
              <div class="pi-img-wrapper">
                <img  src="resources/images/Products/${product.productid}.jpg" style="height: 300px;">
                <div>
                  
                  <a href="DescriptionPage?productid=${product.productid}" class="btn">View</a>
                </div>
              </div>
              <h3 style="text-align: center;"> <b> ${product.productname} </b></h3>
              <div class="pi-price">Rs: ${product.price}</div>
            </div>
        </div>
       
    </c:forEach>    
</div>

 <br><br><br><br><br><br>


  </body>
</html>
