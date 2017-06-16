package com.niit.controller;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.shoppingcart.dao.CartDAO;
import com.niit.shoppingcart.dao.ProductDAO;
import com.niit.shoppingcart.dao.UserDAO;
import com.niit.shoppingcart.domain.Cart;
import com.niit.shoppingcart.domain.Product;
import com.niit.shoppingcart.domain.User;

@Controller
public class CartController {
	@Autowired
	ProductDAO productDAO;
	@Autowired
	UserDAO userDAO;
	@Autowired
	CartDAO cartDAO;
	@Autowired
	Cart cart;
	@Autowired
	Product product;

	@RequestMapping("/DescriptionPage")
	public String productdetails(@RequestParam("productid") String productid, Model model) {

		Product product = productDAO.get(productid);

		model.addAttribute("isUserClickedView", true);
		model.addAttribute("product", product);
		return "userLogin";
	}
	
	@RequestMapping("mycart")
	public String mycart(Principal p, Model model) {
		List<Cart> cartList = cartDAO.getByEmailId(p.getName());
		Long GrandTotal = cartDAO.getTotalAmount(p.getName());
		
		model.addAttribute("cartList", cartList);
		model.addAttribute("GrandTotal", GrandTotal);
		model.addAttribute("isUserClickedAddtocart", "true");

		return "userLogin";
	}

	@RequestMapping("addCart")
	public String addCart(@RequestParam("productid") String productid, Principal p, Model model) {

		Product product = productDAO.get(productid);
		System.out.println(p.getName());
		User user = userDAO.getByEmailId(p.getName());
		
		/*System.out.println(user.getEmail());
		System.out.println(user.getId());
		System.out.println(user.getContact());*/
		
		Cart crt = cartDAO.getByUserandProduct(p.getName(), productid);

		if (product.getQuantity() > 0) {

			if (cartDAO.itemAlreadyExist(p.getName(), productid, true)) {
				int quantity = crt.getQuantity() + 1;
				crt.setQuantity(quantity);
				crt.setTotal(product.getPrice() * quantity);
				cartDAO.update(crt);
			} else {

				cart.setProductid(productid);
				cart.setProductname(product.getProductname());
				cart.setEmail(p.getName());

				cart.setQuantity(1);
				cart.setPrice(product.getPrice());
				cart.setStatus('N');
				cart.setTotal(product.getPrice() * cart.getQuantity());
				cart.setId(user.getId());
				cart.setDays(1);

				cartDAO.save(cart);
			}
			int quantity = product.getQuantity() - 1;
			product.setQuantity(quantity);

			productDAO.saveOrUpdate(product);

			return "redirect:mycart";

		} else {
			model.addAttribute("product", product);
			model.addAttribute("message", "Out of stock");
			model.addAttribute("isUserClickedView", true);
			return "userLogin";
		}
	}

	@RequestMapping("removeCart")
	public String removeCart(@RequestParam("cartId") int cartId, Model model) {
		Cart cart = cartDAO.getByCartId(cartId);
		Product product = productDAO.getByProductid(cart.getProductid());
		int quantity = product.getQuantity() + cart.getQuantity();
		product.setQuantity(quantity);
		productDAO.save(product);
		cartDAO.delete(cartId);
		return "redirect:mycart";
	}

}