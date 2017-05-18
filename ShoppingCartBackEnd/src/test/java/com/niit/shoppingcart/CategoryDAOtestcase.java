package com.niit.shoppingcart;

import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shoppingcart.domain.Category;
import com.niit.shoppingcart.dao.CategoryDAO;

public class CategoryDAOtestcase {

	@Autowired
	static AnnotationConfigApplicationContext context;
	@Autowired
	static CategoryDAO categoryDAO;
	@Autowired
	static Category category;

	@BeforeClass
	public static void initialize() {
		context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.shoppingcart");
		context.refresh();

		// get the userDAO from context
		categoryDAO = (CategoryDAO) context.getBean("CategoryDAO");

		// get the user from context

		category = (Category) context.getBean("category");

	}

	@Test
	public void createCategoryDAOTestCase() {

		category.setName("Headphone with mic");
		category.setDescription("headphones connected with mic");
		
		boolean flag = categoryDAO.save(category);
		assertEquals("createCategoryDAOTestCase", true, flag);

	}

}
