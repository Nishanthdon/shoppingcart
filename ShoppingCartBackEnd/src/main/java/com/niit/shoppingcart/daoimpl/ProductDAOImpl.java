package com.niit.shoppingcart.daoimpl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.shoppingcart.dao.ProductDAO;
import com.niit.shoppingcart.domain.Cart;
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

	public boolean saveOrUpdate(Product product) {
		try
		{
		sessionFactory.getCurrentSession().saveOrUpdate(product);
		}catch (Exception e) {
			//if any exception comes during execute of try block, catch will execute
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
	public Product get(String productid) {
		
		//get method get the date from user table based on primary key i.e., id
		// and set it to User class
		//like select * from user where id = ?
	  return 	(Product)  sessionFactory.getCurrentSession().get(Product.class, productid);
		
	}
	
	
	public void delete(String productid) {
		Product productToDelete = new Product();
		productToDelete.setProductid(productid);
        sessionFactory.getCurrentSession().delete(productToDelete);
		
	}

	public void save(Product product) {
		// TODO Auto-generated method stub
		
	}

	public Product getByProductid(String productid) {
		// TODO Auto-generated method stub
		 return 	(Product)  sessionFactory.getCurrentSession().get(Product.class, productid);
	}

	public List<Product> list(String categoryName) {
		String hql = "from Product where category ='" + categoryName + "'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Product> list = (List<Product>) query.list();

		return list;  
	}	
	


}
