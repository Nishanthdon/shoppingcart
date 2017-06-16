
<br><br><br><br><br>

<div class="container">
<div class="row " style="padding-left: 100px">
<!-- You can make it whatever width you want. I'm making it full width
on <= small devices and 4/12 page width on >= medium devices -->
<div class="col-xs-12 col-md-4">


<!-- CREDIT CARD FORM STARTS HERE -->
<div class="panel panel-default credit-card-box">
<div class="panel-heading display-table" >
<div class="row display-tr" >
<h3 class="panel-title display-td" >Payment Details</h3>
<div class="display-td" >                            
<img class="img-responsive pull-right" src="http://i76.imgup.net/accepted_c22e0.png">
</div>
</div>                    
</div>
<div class="panel-body">


<form action="ThankyouPage" role="form" id="payment-form" onsubmit="return validateForm()" method="post" name="myForm">
<div class="row">
<div class="col-xs-12">
<div class="form-group">
<label for="cardNumber">CARD NUMBER</label>
<div class="input-group">
<input type="tel" class="form-control" name="cardNumber" placeholder="Valid Card Number" autocomplete="cc-number">
<span class="input-group-addon"><i class="fa fa-credit-card"></i></span>
</div>
</div>                            
</div>
</div>
<div class="row">
<div class="col-xs-7 col-md-7">
<div class="form-group">
<label for="cardExpiry"><span class="hidden-xs">EXPIRATION</span><span class="visible-xs-inline">EXP</span> DATE</label>
<input type="tel" class="form-control" name="cardExpiry" placeholder="MM / YYYY" autocomplete="cc-exp" 
pattern="(0[1-9]|1[012])[-/.](20)\d\d" title="Date invalid" required />
</div>
</div>
<div class="col-xs-5 col-md-5 pull-right">
<div class="form-group">
<label for="cardCVC">CV CODE</label>
<input type="tel" class="form-control" name="cardCVC" placeholder="CVC" autocomplete="cc-csc" pattern="[0-9][0-9]{2,3}" title="CV should have 3 or 4 digits" required />
</div>
</div>
</div>

<div class="row">
<div class="col-xs-12">
<button type="submit" class="btn btn-success btn-lg btn-block"> Checkout </button>
</div>
</div>
<div class="row" style="display:none;">
<div class="col-xs-12">
<p class="payment-errors"></p>
</div>
</div>
</form>


</div>
</div>            
<!-- CREDIT CARD FORM ENDS HERE -->
</div>            
</div>
</div>



<script type="text/javascript">

function validateForm() {
    var x = document.forms["myForm"]["cardNumber"].value;
    if (x == "") {
        alert("Card number must be filled out");
        return false;
    }
    
    var x = document.forms["myForm"]["cardExpiry"].value;
    if (x == "") {
        alert("Exp date must be filled out");
        return false;
    }
    
    var x = document.forms["myForm"]["cardCVC"].value;
    if (x =="") {
        alert("cardCVC must be filled out");
        return false;
    }
   
}

</script>


