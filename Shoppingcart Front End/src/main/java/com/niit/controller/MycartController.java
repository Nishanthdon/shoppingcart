package com.niit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.shoppingcart.dao.MycartDAO;
import com.niit.shoppingcart.domain.Mycart;

@Controller
public class MycartController {

	@Autowired
	private MycartDAO mycartDAO;
	
	@RequestMapping("newMycart")
	public String submit(@ModelAttribute Mycart mycart){
		boolean flag = mycartDAO.save(mycart);
		System.out.println(flag);
		return "Mycart";
	}
}
