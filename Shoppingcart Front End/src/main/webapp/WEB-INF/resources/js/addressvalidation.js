function formAddress(){
	var name = document.getElementById('name');
	var email = document.getElementById('email');
	var username = document.getElementById('address');
	var contact = document.getElementById('contact');
	var confirm = document.getElementById('zipcode');
	
	
	// Check each input in the order that it appears in the form!
	 if (notEmpty(name, "Yourname Should not be empty")) {
			if (isAlphabet(name, "Please enter only letters for Yourname")) {
				
			
				if (notEmpty(email,"EmailId Should not be empty")) {
					if (emailValidator(email,"EmailId Should be in format of abc@xyz.com ")) {
						if (notEmpty(email,"EmailId Should not be empty")) {
							
							if (notEmpty(contact, "Contactnumber Should not be empty")) {
								if (isNumeric(contact,"Please enter only number for Contactnumber")) {
	
		if (notEmpty(address, "Address Should not be empty")) {
		if (isAlphabet(address, "Please enter only letters for Address")) {
			

						if (notEmpty(zipcode, "Zipcode Should not be empty")) 
							if (isNumeric(zipcode,"Please enter only number for Zipcode")) {
					
							
									return true;
											}
										}
									}
								}
							}
						}
					}
				
			}
		}
	}
		return false;
	}
	function notEmpty(elem, helperMsg) {
		if (elem.value.length == 0) {
			alert(helperMsg);
			elem.focus(); // set the focus to this input
			return false;
		}
		return true;
	}
	function isNumeric(elem, helperMsg) {
		var numericExpression = /^[0-9]+$/;
		if (elem.value.match(numericExpression)) {
			return true;
		} else {
			alert(helperMsg);
			elem.focus();
			return false;
		}
	}
	function isAlphanumeric(elem, helperMsg) {
		var alphaExp = /^[0-9a-zA-Z]+$/;
		if (elem.value.match(alphaExp)) {
			return true;
		} else {
			alert(helperMsg);
			elem.focus();
			return false;
		}
	}
	function emailValidator(elem, helperMsg) {
		var emailExp = /^[\w\-\.\+]+\@[a-zA-Z0-9\.\-]+\.[a-zA-z0-9]{2,4}$/;
		if (elem.value.match(emailExp)) {
			return true;
		} else {
			alert(helperMsg);
			elem.focus();
			return false;
		}
	}
	function isAlphabet(elem, helperMsg) {
		var alphaExp = /^[a-z A-Z]+$/;
		if (elem.value.match(alphaExp)) {
			return true;
		} else {
			alert(helperMsg);
			elem.focus();
			return false;
		}
	}
	

	function validation(){
		var name = document.getElementById('name');
		var email = document.getElementById('email');
		var username = document.getElementById('address');
		var contact = document.getElementById('contact');
		var password = document.getElementById('password');
		var confirm = document.getElementById('zipcode');
		
		
		// Check each input in the order that it appears in the form!
		 if (notEmpty(name, "Yourname Should not be empty")) {
				if (isAlphabet(name, "Please enter only letters for Yourname")) {
					
				
					if (notEmpty(email,"EmailId Should not be empty")) {
						if (emailValidator(email,"EmailId Should be in format of abc@xyz.com ")) {
							if (notEmpty(email,"EmailId Should not be empty")) {
								
								if (notEmpty(contact, "Contactnumber Should not be empty")) {
									if (isNumeric(contact,"Please enter only number for Contactnumber")) {
		
			if (notEmpty(address, "Address Should not be empty")) {
			if (isAlphabet(address, "Please enter only letters for Address")) {
				
				if (notEmpty(password, "password Should not be empty")) {

					if (isAlphanumeric(password,"Numbers and Letters Only for Passwords")) {
						if (notEmpty(confirm, "password Should not be empty")) {

							if (notEmpty(zipcode, "Zipcode Should not be empty")) 
								if (isNumeric(zipcode,"Please enter only number for Zipcode")) {
						
								
										return true;
												}
											}
										}
									}
								}}}
							}
						}
					}
				}
			}
		}
			return false;
		}
		function notEmpty(elem, helperMsg) {
			if (elem.value.length == 0) {
				alert(helperMsg);
				elem.focus(); // set the focus to this input
				return false;
			}
			return true;
		}
		function isNumeric(elem, helperMsg) {
			var numericExpression = /^[0-9]+$/;
			if (elem.value.match(numericExpression)) {
				return true;
			} else {
				alert(helperMsg);
				elem.focus();
				return false;
			}
		}
		function isAlphanumeric(elem, helperMsg) {
			var alphaExp = /^[0-9a-zA-Z]+$/;
			if (elem.value.match(alphaExp)) {
				return true;
			} else {
				alert(helperMsg);
				elem.focus();
				return false;
			}
		}
		function emailValidator(elem, helperMsg) {
			var emailExp = /^[\w\-\.\+]+\@[a-zA-Z0-9\.\-]+\.[a-zA-z0-9]{2,4}$/;
			if (elem.value.match(emailExp)) {
				return true;
			} else {
				alert(helperMsg);
				elem.focus();
				return false;
			}
		}
		function isAlphabet(elem, helperMsg) {
			var alphaExp = /^[a-z A-Z]+$/;
			if (elem.value.match(alphaExp)) {
				return true;
			} else {
				alert(helperMsg);
				elem.focus();
				return false;
			}
		}
		

			 