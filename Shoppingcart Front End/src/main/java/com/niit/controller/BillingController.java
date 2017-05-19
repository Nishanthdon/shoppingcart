package com.niit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.shoppingcart.dao.BillingDAO;
import com.niit.shoppingcart.domain.Billing;

@Controller
public class BillingController {

	@Autowired
	private BillingDAO billingDAO;
	
	@RequestMapping("newBilling")
	public String submit(@ModelAttribute Billing billing){
		boolean flag = billingDAO.save(billing);
		System.out.println(flag);
		return "Billing";
	}
}
