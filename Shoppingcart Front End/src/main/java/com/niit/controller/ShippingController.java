package com.niit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.shoppingcart.dao.ShippingDAO;
import com.niit.shoppingcart.domain.Shipping;

@Controller
public class ShippingController {

	@Autowired
	private ShippingDAO shippingDAO;
	
	@RequestMapping("newShipping")
	public String submit(@ModelAttribute Shipping shipping){
		boolean flag = shippingDAO.save(shipping);
		System.out.println(flag);
		return "Shipping";
	}
}
