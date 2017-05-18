package com.niit.shoppingcart;

import static org.junit.Assert.*;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shoppingcart.dao.RoleDAO;
import com.niit.shoppingcart.dao.UserDAO;
import com.niit.shoppingcart.domain.Role;
import com.niit.shoppingcart.domain.User;

public class UserDAOtestcase {

	
	@Autowired static AnnotationConfigApplicationContext context;
	
	@Autowired  static UserDAO  userDAO;
	
	@Autowired  static User user;

	@Autowired
	static RoleDAO roleDAO;

	@Autowired
	static Role role;
	
	/*public UserDAOtestcase(){
		initialize();
		createUserDAOTestCase();
	}*/
	
	@BeforeClass
	public static void initialize()
	{
		context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.shoppingcart");
		context.refresh();
		
		//get the userDAO from context
		userDAO =  (UserDAO) context.getBean("UserDAO");
		roleDAO =  (RoleDAO) context.getBean("RoleDAO");
		//get the user from context
		
		user = (User)context.getBean("user");
		role = (Role)context.getBean("role");
		
	}
	
	@Test
	public void createUserDAOTestCase()
	{
		
		user.setName("nishanth");
		user.setPassword("1234");
		user.setEmail("nishanth@gmail.com");
		user.setContact("759164835");
		
		role.setName("nish");
		role.setRole("1111");
		role.setMail("nish@gmail.com");
		
		user.setRole(role);
		role.setUser(user);

		roleDAO.save(role);

		
		boolean flag =  userDAO.save(user);
		
		
		assertEquals("createUserDAOTestCase",true,flag);
	
	}
	
	
	
}











