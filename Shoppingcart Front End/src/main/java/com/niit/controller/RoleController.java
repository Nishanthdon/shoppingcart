package com.niit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.shoppingcart.dao.RoleDAO;
import com.niit.shoppingcart.domain.Role;

@Controller
public class RoleController {

	@Autowired
	private RoleDAO roleDAO;
	
	@RequestMapping("newRole")
	public String submit(@ModelAttribute Role role){
		boolean flag = roleDAO.save(role);
		System.out.println(flag);
		return "Role";
	}
}
