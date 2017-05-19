package com.niit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.shoppingcart.dao.ProductDAO;
import com.niit.shoppingcart.domain.Category;
import com.niit.shoppingcart.domain.Product;

@Controller
public class ProductController {

	@Autowired
	private ProductDAO productDAO;
	
	@RequestMapping("newProduct")
	public String submit(@ModelAttribute Product product){
		boolean flag = productDAO.save(product);
		System.out.println(flag);
		return "Product";
	}
	
	@RequestMapping("deleteProduct")
	public String deleteProduct(@RequestParam(value = "productId") String id) {
		
		productDAO.delete(id);
		
		return "redirect:/viewproductPage";

	}
	
	

	@RequestMapping("/ProductPage")
	public String productPage(Model model)
	{
		model.addAttribute("isUserClickedAdd_Product", "true");
		
		return "adminLogin";
	}
	

	@RequestMapping("/viewproductPage")
	public String viewproductPage(Model model)
	{
		List<Product> productList = productDAO.list();
		model.addAttribute("productList", productList);
		model.addAttribute("isUserClickedView_Product", "true");
		
		return "adminLogin";
	}

	@RequestMapping("/editproductPage")
	public String editproductPage(Model model)
	{
		model.addAttribute("isUserClickedEdit_Product", "true");
		
		return "adminLogin";
	}
	@ModelAttribute
	public void adminProduct(Model model){
		model.addAttribute("isAdmin", "true");
	}
}
