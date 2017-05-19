package com.niit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.shoppingcart.dao.SupplierDAO;
import com.niit.shoppingcart.domain.Category;
import com.niit.shoppingcart.domain.Supplier;

@Controller
public class SupplierController {

	@Autowired
	private SupplierDAO supplierDAO;
	
	@RequestMapping("newSupplier")
	public String submit(@ModelAttribute Supplier supplier){
		boolean flag = supplierDAO.save(supplier);
		System.out.println(flag);
		return "Supplier";
	}
	
	

	@RequestMapping("/SupplierPage")
	public String supplierPage(Model model)
	{
		model.addAttribute("isUserClickedAdd_Supplier", "true");
		
		return "adminLogin";
	}
	
	
	@RequestMapping("deleteSupplier")
	public String deleteSupplier(@RequestParam(value = "supplierId") String id) {
		
		supplierDAO.delete(id);
		
		return "redirect:/viewsupplierPage";

	}

	
	@RequestMapping("/viewsupplierPage")
	public String viewsupplierPage(Model model)
	{
		List<Supplier> supplierList = supplierDAO.list();
		model.addAttribute("supplierList", supplierList);
		model.addAttribute("isUserClickedView_Supplier", "true");
		
		return "adminLogin";
	}

	@RequestMapping("/editsupplierPage")
	public String editsupplierPage(Model model)
	{
		model.addAttribute("isUserClickedEdit_Supplier", "true");
		
		return "adminLogin";
	}

	@ModelAttribute
	public void adminSupplier(Model model){
		model.addAttribute("isAdmin", "true");
	}
	
	
	
}
