package com.niit.controller;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.shoppingcart.dao.CategoryDAO;
import com.niit.shoppingcart.dao.ProductDAO;
import com.niit.shoppingcart.domain.Category;
import com.niit.shoppingcart.domain.Product;


@Controller
public class HomeController {
	
	@Autowired 
	ProductDAO productDAO;
	
	@Autowired 
	CategoryDAO categoryDAO;
	
	@RequestMapping("/")
	public  String    goToHome(Model model)
	
	{
		List<Product> productList = productDAO.list();
		model.addAttribute("productList",productList);
		//model.addAttribute("message", "Thank you for visiting Shopping Cart");
		model.addAttribute("isUser", true);
		return "Home";
		
	}
	
	
	@RequestMapping("/HomePage")
	public String homePage(Model model)
	{
		model.addAttribute("isUserClickedHome", "true");
	
		return "Home";
	}
	
	@RequestMapping("/LoginPage")
	public String loginPage(Model model)
	{
		model.addAttribute("isUserClickedLogin", "true");
	
		return "Home";
	}
	
	/**  Register and user are same     **/
	
	@RequestMapping("/RegistrationPage")
	public String registrationPage(Model model)
	{
		model.addAttribute("isUserClickedRegister", "true");
		
		return "Home";
	}

	@RequestMapping("categories")
	public String categories(@RequestParam(value = "categoryName") String categoryName, Model model)
	{
		System.out.println(categoryName);
		List<Product> productList = productDAO.list(categoryName);
		model.addAttribute("productList",productList);
		
		
		model.addAttribute("isUserClickedExplore", "true");
		
		return "Home";
	}

	@RequestMapping("/AboutPage")
	public String aboutPage(Model model)
	{
		model.addAttribute("isUserClickedAbout", "true");
		
		return "Home";
	}
	
	
	

}
