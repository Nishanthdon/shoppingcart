package com.niit.controller;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.shoppingcart.dao.RoleDAO;
import com.niit.shoppingcart.dao.UserDAO;
import com.niit.shoppingcart.domain.Role;
import com.niit.shoppingcart.domain.User;

@Controller
public class UserController {

	@Autowired
	UserDAO userDAO;
	@Autowired
	User user;
	@Autowired
	Role role;
	@Autowired
	RoleDAO roleDAO;

	@RequestMapping("newCustomer")
	public String signUp(@ModelAttribute User user, Model model) {

		user.setEnabled(true);
		role.setName(user.getName());
		role.setMail(user.getEmail());
		role.setRole("ROLE_USER");

		user.setRole(role);
		role.setUser(user);

		boolean flag = userDAO.save(user);
		boolean flag1 = roleDAO.save(role);
		System.out.println(flag);
		System.out.println(flag1);
		return "Login";
	}
	
	@RequestMapping("afterlogin")
	public String afterlogin(Principal p, Model model){
	
		String page;
	//	User user = userDAO.getByEmailId( p.getName());
		
		Role role = roleDAO.getByEmailId(p.getName());
		String r = role.getRole();
		System.out.println(r);
		if(r.equals("ROLE_USER")){
			model.addAttribute("isUser", "true");
			page = "userLogin";
		}
		else  {
			model.addAttribute("isAdmin", "true");
			page = "adminLogin";
		}
		return page;
		
	}
	
	
	
	
}
