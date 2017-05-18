package com.niit.shoppingcart;

import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shoppingcart.dao.SupplierDAO;
import com.niit.shoppingcart.domain.Supplier;

public class SupplierDAOtestcase {

	@Autowired
	static AnnotationConfigApplicationContext context;
	@Autowired
	static SupplierDAO supplierDAO;
	@Autowired
	static Supplier supplier;

	@BeforeClass
	public static void initialize() {
		context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.shoppingcart");
		context.refresh();

		// get the userDAO from context
		supplierDAO = (SupplierDAO) context.getBean("SupplierDAO");

		// get the user from context

		supplier = (Supplier) context.getBean("supplier");

	}

	@Test
	public void createSupplierDAOTestCase() {

		supplier.setName("shun");
		supplier.setContact("243242424");
		supplier.setMail("ad@gmail.com");
		supplier.setAddress("sdbdsbvdbh,fdsfdsdsg.");
		supplier.setCitycode("6848884648");
		
		boolean flag = supplierDAO.save(supplier);
		assertEquals("createSupplierDAOTestCase", true, flag);

	}

}
