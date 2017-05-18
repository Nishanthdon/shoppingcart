package com.niit.shoppingcart;

import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shoppingcart.dao.ShippingDAO;
import com.niit.shoppingcart.domain.Shipping;

public class ShippingDAOtestcase {

	@Autowired
	static AnnotationConfigApplicationContext context;
	@Autowired
	static ShippingDAO shippingDAO;
	@Autowired
	static Shipping shipping;

	@BeforeClass
	public static void initialize() {
		context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.shoppingcart");
		context.refresh();

		// get the userDAO from context
		shippingDAO = (ShippingDAO) context.getBean("ShippingDAO");

		// get the user from context

		shipping = (Shipping) context.getBean("shipping");

	}

	@Test
	public void createShippingDAOTestCase() {

		shipping.setName("asfsfsf");
		shipping.setContact("242424");
		shipping.setMail("sfsfsdf@dgdg.com");
		shipping.setAddress("afsfsf,effwf.");
		shipping.setCitycode("1241414124");
		
		boolean flag = shippingDAO.save(shipping);
		assertEquals("createShippingDAOTestCase", true, flag);

	}

}
