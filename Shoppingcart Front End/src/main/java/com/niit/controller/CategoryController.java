package com.niit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.shoppingcart.dao.CategoryDAO;
import com.niit.shoppingcart.domain.Category;

@Controller
public class CategoryController {

	@Autowired
	private CategoryDAO categoryDAO;

	@RequestMapping("newCategory")
	public String submit(@ModelAttribute Category category, Model model) {
		boolean flag = categoryDAO.save(category);
		model.addAttribute("isUserClickedView_Category", "true");
		System.out.println(flag);
		return "adminLogin";

	}

	@RequestMapping("/CategoryPage")
	public String categoryPage(Model model) {
		model.addAttribute("isUserClickedAdd_Category", "true");

		return "adminLogin";
	}

	@RequestMapping("/viewcategoryPage")
	public String viewcategoryPage(Model model) {
		List<Category> categoryList = categoryDAO.list();
		model.addAttribute("categoryList", categoryList);
		model.addAttribute("isUserClickedView_Category", "true");

		return "adminLogin";
	}

	@RequestMapping("deleteCategory")
	public String deleteCategory(@RequestParam(value = "categoryId") String id) {
		
		categoryDAO.delete(id);
		
		return "redirect:/viewcategoryPage";

	}

	@RequestMapping("/editcategoryPage")
	public String editcategoryPage(Model model) {
		model.addAttribute("isUserClickedEdit_Category", "true");

		return "adminLogin";
	}

	@ModelAttribute
	public void adminCategory(Model model) {
		model.addAttribute("isAdmin", "true");
	}
}
