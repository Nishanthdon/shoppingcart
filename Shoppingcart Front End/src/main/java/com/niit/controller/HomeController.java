package com.niit.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	
	//http://localhost:8080/ShoppingCart/
	
	@RequestMapping("/")
	public  String    goToHome(Model model)
	
	{
		model.addAttribute("message", "Thank you for visiting Shopping Cart");
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

/*	@RequestMapping("/SonyPage")
	public String sonyPage(Model model)
	{
		model.addAttribute("isUserClickedSony", "true");
		
		return "Sony";
	}

	@RequestMapping("/SamsungPage")
	public String samsungPage(Model model)
	{
		model.addAttribute("isUserClickedSamsung", "true");
		
		return "Samsung";
	}

	@RequestMapping("/MotorolaPage")
	public String motorolaPage(Model model)
	{
		model.addAttribute("isUserClickedMotorola", "true");
		
		return "Motorola";
	}

	@RequestMapping("/VivoPage")
	public String vivoPage(Model model)
	{
		model.addAttribute("isUserClickedVivo", "true");
		
		return "Vivo";
	}*/
	
	
	

}
