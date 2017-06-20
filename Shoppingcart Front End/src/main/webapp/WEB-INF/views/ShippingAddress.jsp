

<style>
.bt:HOVER{
	background-color: green;
}
</style>




<br><br><br><br>

<h4 style="color: red; text-align: center;">Enter your new Shipping ID here</h4>
<br><br>

<div class="col-lg-12">
<div class="col-lg-2"></div>

<div class="col-lg-8">
<div class="container">
  <form action="addShippingaddress" method="post" onsubmit="return formAddress()" class="form-horizontal">
    <div class="form-group">
      <label class="control-label col-sm-2" for="Name"> User Name:</label>
      <div class="col-sm-10">
        <input type="text" name="name" class="form-control" id="name" placeholder="Enter User Name">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="email">Email:</label>
      <div class="col-sm-10">          
        <input type="text" name="email" class="form-control" id="email" placeholder="Enter Your Email">
      </div>
    </div>
     <div class="form-group">
      <label class="control-label col-sm-2" for="contactNumber">Contact Number:</label>
      <div class="col-sm-10">
        <input type="text" name="contact" class="form-control" id="contact" placeholder="Enter Contact Number">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">Shipping Address:</label>
      <div class="col-sm-10">          
        <input type="text" name="address" class="form-control" id="address" placeholder="Enter Shipping Address">
      </div>
    </div>
     <div class="form-group">
      <label class="control-label col-sm-2" for="zipcode"> Zipcode:</label>
      <div class="col-sm-10">
        <input type="text" name="zipcode" class="form-control" id="zipcode" placeholder="Enter Zipcode ">
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

<script type="text/javascript" src="resources/js/addressvalidation.js"></script>

