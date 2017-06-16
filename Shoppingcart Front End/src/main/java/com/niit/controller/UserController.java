package com.niit.controller;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.shoppingcart.dao.ProductDAO;
import com.niit.shoppingcart.dao.RoleDAO;
import com.niit.shoppingcart.dao.ShippingaddressDAO;
import com.niit.shoppingcart.dao.UserDAO;
import com.niit.shoppingcart.domain.Product;
import com.niit.shoppingcart.domain.Role;
import com.niit.shoppingcart.domain.Shippingaddress;
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
	@Autowired ProductDAO productDAO;
	@Autowired ShippingaddressDAO shippingaddressDAO;

	@RequestMapping("newCustomer")
	public String signUp(@ModelAttribute User user,@ModelAttribute Shippingaddress shippingaddress, Model model) {

		user.setEnabled(true);
		role.setName(user.getName());
		role.setMail(user.getEmail());
		role.setRole("ROLE_USER");

		user.setRole(role);
		role.setUser(user);
 
		boolean flag = userDAO.save(user);
		boolean flag1 = roleDAO.save(role);
		shippingaddress.setEmail(user.getEmail());
		shippingaddressDAO.saveOrUpdate(shippingaddress);
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
			List<Product> productList = productDAO.list();
			model.addAttribute("productList",productList);
			
			page = "userLogin";
		}
		else  {
			model.addAttribute("isAdmin", "true");
			page = "adminLogin";
		}
		return page;
		
	}
	
	
	/*@RequestMapping("addCart")
	public String addCartPage(Model model)
	{
		model.addAttribute("isUserClickedAddtocart", "true");
		
		return "userLogin";
	}
	*/
	
}
