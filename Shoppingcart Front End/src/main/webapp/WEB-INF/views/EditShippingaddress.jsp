
<style>
.bt:HOVER{
	background-color: green;
}
</style>








<br><br><br>

<h4 style="color: red; text-align: center;">Edit your Shipping ID here</h4>
<br><br>

<div class="col-lg-12">
<div class="col-lg-2"></div>
<div class="col-lg-8">
<div class="container">
  <form action="aftereditshippingAddress" method="post" class="form-horizontal">
  <div class="form-group">
      <label class="control-label col-sm-2" for="pwd" style="color: red">Shipping Id:</label>
      <div class="col-sm-10">          
        <input type="text" name="sid" class="form-control" id="sid" value="${shippingaddress.sid }" readonly="true" >
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="Name" style="color: red"> User Name:</label>
      <div class="col-sm-10">
        <input type="text" name="name" class="form-control" id="name" value="${shippingaddress.name }">
      </div>
      </div>
     <div class="form-group">
      <label class="control-label col-sm-2" for="contactNumber" style="color: red">Contact Number:</label>
      <div class="col-sm-10">
        <input type="text" name="contact" class="form-control" id="contact" value="${shippingaddress.contact }">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd" style="color: red">Shipping Address:</label>
      <div class="col-sm-10">          
        <input type="text" name="address" class="form-control" id="address" value="${shippingaddress.address }">
      </div>
    </div>
     <div class="form-group">
      <label class="control-label col-sm-2" for="zipcode" style="color: red"> Zipcode:</label>
      <div class="col-sm-10">
        <input type="text" name="zipcode" class="form-control" id="zipcode"value="${shippingaddress.zipcode }">
      </div>
    </div>
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10" style="text-align: center;">
        <button type="submit" class="btn btn-default bt" style="width: 25%">Submit</button>
      </div>
    </div>
  </form>
</div>
</div>
<div class="col-lg-2"></div>
</div>