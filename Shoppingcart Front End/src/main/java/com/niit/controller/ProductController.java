package com.niit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.niit.shoppingcart.dao.CategoryDAO;
import com.niit.shoppingcart.dao.ProductDAO;
import com.niit.shoppingcart.dao.SupplierDAO;
import com.niit.shoppingcart.domain.Category;
import com.niit.shoppingcart.domain.Product;
import com.niit.shoppingcart.domain.Supplier;
import com.niit.util.FileUtil;

@Controller
public class ProductController {

	@Autowired
	private ProductDAO productDAO;
	
	@Autowired
	private CategoryDAO categoryDAO;
	
	@Autowired
	private SupplierDAO supplierDAO;
	
	@RequestMapping("newProduct")
	public String submit(@ModelAttribute Product product, @RequestParam("image") MultipartFile file, Model model){
		
		
		String path = "C://Users/Nishanth Don/workspace/SampleFE/src/main/webapp/WEB-INF/resources/images/Products";
 		boolean flag = productDAO.saveOrUpdate(product);
		FileUtil.upload(path, file, product.getProductid()+ ".jpg");
		model.addAttribute("isUserClickedProduct", "true");
		System.out.println(flag);
		return "redirect:/viewproductPage";
	}
	
	@RequestMapping("deleteProduct")
	public String deleteProduct(@RequestParam(value = "productId") String id) {
		
		productDAO.delete(id);
		
		return "redirect:/viewproductPage";

	}
	

@RequestMapping("editProduct")
	public String editProduct(@RequestParam(value = "productId") String productid, Model model) {
	
	List<Category> categoryList = categoryDAO.list();
	model.addAttribute("categoryList", categoryList);
	
	List<Supplier> supplierList = supplierDAO.list();
	model.addAttribute("supplierList", supplierList);
	
		
		Product product = productDAO.get(productid);
		model.addAttribute("product", product);
		model.addAttribute("isUserClickedEdit2", "true");
		return "adminLogin";

	}

@RequestMapping("afterEditProduct")
	public String afterEditProduct(@ModelAttribute Product product, Model model){
		boolean flag = productDAO.saveOrUpdate(product);
		System.out.println(flag);
		return "redirect:/viewproductPage";
		
	}


	@RequestMapping("/ProductPage")
	public String productPage(Model model)
	{  
		List<Category> categoryList = categoryDAO.list();
		model.addAttribute("categoryList", categoryList);
		
		List<Supplier> supplierList = supplierDAO.list();
		model.addAttribute("supplierList", supplierList);
		
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
