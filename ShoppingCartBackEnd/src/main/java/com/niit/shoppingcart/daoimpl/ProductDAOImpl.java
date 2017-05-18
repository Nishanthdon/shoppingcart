package com.niit.shoppingcart.daoimpl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.shoppingcart.dao.ProductDAO;
import com.niit.shoppingcart.domain.Product;


@Repository("ProductDAO")
@Transactional
public class ProductDAOImpl implements ProductDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public ProductDAOImpl(SessionFactory sessionFactory)
	{
		this.setSessionFactory(sessionFactory);
	}

	public boolean save(Product product) {
		try
		{
		sessionFactory.getCurrentSession().save(product);
		}catch (Exception e) {
			//if any excpetion comes during execute of try block, catch will excute
			e.printStackTrace();
			return false;
		}
		return true;
	}

	public boolean update(Product product) {
		try
		{
		sessionFactory.getCurrentSession().update(product);
		}catch (Exception e) {
			//if any excpetion comes during execute of try block, catch will excute
			e.printStackTrace();
			return false;
		}
		return true;
	}

	@SuppressWarnings("unchecked")
	public List<Product> list() {
		return  sessionFactory.getCurrentSession().createQuery("from Product").list();
	}

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	public Product get(String id) {
		
		//get method get the date from user table based on primary key i.e., id
		// and set it to User class
		//like select * from user where id = ?
	  return 	(Product)  sessionFactory.getCurrentSession().get(Product.class, id);
		
	}

}
