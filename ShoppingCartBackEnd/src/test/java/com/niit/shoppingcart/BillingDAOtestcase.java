package com.niit.shoppingcart;

import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shoppingcart.dao.BillingDAO;
import com.niit.shoppingcart.domain.Billing;

public class BillingDAOtestcase {
	@Autowired
	static AnnotationConfigApplicationContext context;
	@Autowired
	static BillingDAO billingDAO;
	@Autowired
	static Billing billing;

	@BeforeClass
	public static void initialize() {
		context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.shoppingcart");
		context.refresh();

		// get the userDAO from context
		billingDAO = (BillingDAO) context.getBean("BillingDAO");

		// get the user from context

		billing = (Billing) context.getBean("billing");

	}

	@Test
	public void createBillingDAOTestCase() {

		billing.setName("Sony Company Pvt.Ltd");
		billing.setContact("9654823485");
		billing.setEmail("sony@gamil.com");
		
		
		boolean flag = billingDAO.save(billing);
		assertEquals("createBillingDAOTestCase", true, flag);

	}

}