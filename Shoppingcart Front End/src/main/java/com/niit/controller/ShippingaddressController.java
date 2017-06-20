package com.niit.controller;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingcart.dao.CartDAO;
import com.niit.shoppingcart.dao.ShippingaddressDAO;
import com.niit.shoppingcart.dao.UserDAO;
import com.niit.shoppingcart.domain.Cart;
import com.niit.shoppingcart.domain.Shippingaddress;
import com.niit.shoppingcart.domain.User;


@Controller
public class ShippingaddressController {
	@Autowired
	private ShippingaddressDAO shippingaddressDAO;
	
	@Autowired
	private UserDAO userDAO;
	
	@Autowired
	private CartDAO cartDAO;
	
	@Autowired
	private Cart cart;
	
	@RequestMapping("shippingaddressPage")
	public ModelAndView newShippingaddress(){
		
		ModelAndView mv = new ModelAndView("userLogin");
		mv.addObject("isUserClickednewshippingaddress", "true");
		return mv;
	}
	@RequestMapping("proceed")
	public String Proceed(Principal p, Model model){
		String email = 	p.getName();
		List<Shippingaddress> shippingaddressList = shippingaddressDAO.list(email);
		model.addAttribute("shippingaddressList", shippingaddressList);
		model.addAttribute("isUserClickedProceed", true);
	 return "userLogin";
	}
	@RequestMapping("addShippingaddress")
	public String addShippingaddress(Principal p, @ModelAttribute Shippingaddress shippingaddress){
		User user = userDAO.getByEmailId(p.getName());
		/*shippingaddress.setUserId(user.getUserId());
		shippingaddress.setEmailId(email);
		*/
		
		shippingaddress.setEmail(p.getName());
		shippingaddress.setEmail(user.getEmail());
		
		
		
		shippingaddressDAO.saveOrUpdate(shippingaddress);
		return "redirect:proceed";
		
	}
	@RequestMapping("shippingAddress")
	public String shippingAddress(@RequestParam("shippingId") int sid, Principal p, Model model){
		
		String email = p.getName();
		List<Cart> cartList = cartDAO.getByEmailId(email);
		
		for(Cart c : cartList){
			c.setSid(sid);
			c.setStatus('P');
			c.setProductid(c.getProductid()+" ");
			cartDAO.update(c);
		}
		model.addAttribute("deliverhereClicked", true);
		model.addAttribute("thankyouPage", true);
		return "userLogin";	
}
	
	@RequestMapping("deleteshippingAddress")
	public String deleteshippingAddress(@RequestParam("shippingId") int sid, Model model){
		shippingaddressDAO.delete(sid);
		return "redirect:proceed";
		
	}
	@RequestMapping("editshippingAddress")
	public String editshippingAddress(@RequestParam("shippingId")int sid,Model model){
	Shippingaddress shippingaddress=shippingaddressDAO.getBySid(sid);
		model.addAttribute("shippingaddress", shippingaddress);
		model.addAttribute("editShippingAddressClicked", true);
		return "userLogin";
		
	}
	@RequestMapping("aftereditshippingAddress")
	public String editShippingAddress(Principal p, @ModelAttribute Shippingaddress shippingaddress, Model model){
		
		String email = p.getName();
		User user = userDAO.getByEmailId(email);
		
		shippingaddress.setEmail(email);
		shippingaddress.setName(user.getEmail());
		
		shippingaddressDAO.saveOrUpdate(shippingaddress);
		return "redirect:proceed";
	}
	
	@RequestMapping("ThankyouPage")
	public String ThankyouPage( Model model){
		model.addAttribute("checkoutClicked", true);
		return "userLogin";
}
	
	@ModelAttribute
	public void commonToUser(Model model){
		model.addAttribute("isUser", "true");
	}
	
}
