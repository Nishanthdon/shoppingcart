package com.niit.shoppingcart;

import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shoppingcart.dao.MycartDAO;
import com.niit.shoppingcart.domain.Mycart;

public class MycartDAOtestcase {

	@Autowired
	static AnnotationConfigApplicationContext context;
	@Autowired
	static MycartDAO mycartDAO;
	@Autowired
	static Mycart mycart;

	@BeforeClass
	public static void initialize() {
		context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.shoppingcart");
		context.refresh();

		// get the userDAO from context
		mycartDAO = (MycartDAO) context.getBean("MycartDAO");

		// get the user from context

		mycart = (Mycart) context.getBean("mycart");

	}

	@Test
	public void createMycartDAOTestCase() {

		mycart.setName("ewewdwdd");
		mycart.setDate("12313131");
		mycart.setQuantity("313");
		mycart.setPrice("31313");
		mycart.setTotal("131131313");
		
		boolean flag = mycartDAO.save(mycart);
		assertEquals("createMycartDAOTestCase", true, flag);

	}

}
