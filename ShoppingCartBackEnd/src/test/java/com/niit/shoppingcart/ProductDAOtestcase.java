package com.niit.shoppingcart;

import static org.junit.Assert.*;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shoppingcart.dao.ProductDAO;
import com.niit.shoppingcart.domain.Product;

public class ProductDAOtestcase {

	@Autowired
	static AnnotationConfigApplicationContext context;
	@Autowired
	static ProductDAO productDAO;
	@Autowired
	static Product product;

	@BeforeClass
	public static void initialize() {
		context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.shoppingcart");
		context.refresh();

		// get the userDAO from context
		productDAO = (ProductDAO) context.getBean("ProductDAO");

		// get the user from context

		product = (Product) context.getBean("product");

	}

	@Test
	public void createProductDAOTestCase() {

		product.setName("Sony XS76");
		product.setDescription("Sonyheadphones connected with mic");
		product.setBrand("Sony");
		product.setColour("Blue");
		product.setQuantity("16");
		product.setPrice("850");
		
		boolean flag = productDAO.save(product);
		assertEquals("createProductDAOTestCase", true, flag);

	}

}
