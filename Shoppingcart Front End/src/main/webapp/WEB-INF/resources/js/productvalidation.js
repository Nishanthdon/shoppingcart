function productvalidation(){
	var productname = document.getElementById('productname');
	var brand = document.getElementById('brand');
	var category = document.getElementById('category');
	var supplier = document.getElementById('supplier');
	var description = document.getElementById('description');
	var price = document.getElementById('price');
	var colour = document.getElementById('colour');
	var quantity = document.getElementById('quantity');
	var ram = document.getElementById('ram');
	var battery = document.getElementById('battery');
	var camera = document.getElementById('camera');
	var internalstorage = document.getElementById('internalstorage');
	
	
	// Check each input in the order that it appears in the form!
	 if (notEmpty(productname, "Your productname Should not be empty")) {
			if (isAlphabet(productname, "Please enter only letters for Your productname")) {
				
				if (notEmpty(brand, "Your brand Should not be empty")) {
					if (isAlphabet(brand, "Please enter only letters for Your brand")) {
			
			
			if (notEmpty(category, "category Should not be empty")) {
				if (isAlphabet(category, "Please enter only letters for category")) {
					
					if (notEmpty(supplier, "supplier Should not be empty")) {
						if (isAlphabet(supplier, "Please enter only letters for supplier")) {
							
							if (notEmpty(description, "description Should not be empty")) {
								if (isAlphabet(description, "Please enter only letters for description")) {
			

						if (notEmpty(price, "price Should not be empty")) {
							if (isNumeric(price,"Please enter only number for price")) {
								
								if (notEmpty(colour, "colour Should not be empty")) {
									if (isAlphabet(colour, "Please enter only letters for colour")) {
										
										if (notEmpty(quantity, "quantity Should not be empty")) {
											if (isNumeric(quantity, "Please enter only numbers for quantity")) {
												
												if (isAlphanumeric(ram,"Numbers and Letters Only for ram")) {
													if (notEmpty(ram, "password Should not be ram")) {
														
														if (isAlphanumeric(battery,"Numbers and Letters Only for battery")) {
															if (notEmpty(battery, "password Should not be battery")) {
																
																if (isAlphanumeric(camera,"Numbers and Letters Only for camera")) {
																	if (notEmpty(camera, "password Should not be camera")) {
																		
																		if (isAlphanumeric(internalstorage,"Numbers and Letters Only for internalstorage")) {
																			if (notEmpty(internalstorage, "password Should not be internalstorage")) {
					
							
									return true;
											}
										}
									}
								}
					}}}}}}}}}}}}}}}
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
	

		 