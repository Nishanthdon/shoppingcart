package com.niit.shoppingcart.daoimpl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.shoppingcart.dao.ShippingDAO;
import com.niit.shoppingcart.domain.Shipping;

@Repository("ShippingDAO")
@Transactional
public class ShippingDAOImpl implements ShippingDAO{
	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	@Autowired
	public ShippingDAOImpl(SessionFactory sessionFactory)
	{
		this.setSessionFactory(sessionFactory);
	}
	public Shipping get(String id) {
		return 	(Shipping)  sessionFactory.getCurrentSession().get(Shipping.class, id);	
	}
	@SuppressWarnings("unchecked")
	public List<Shipping> list() {
		return  sessionFactory.getCurrentSession().createQuery("from Shipping").list();
	}
	
	public boolean save(Shipping shipping) {
		try
		{
		sessionFactory.getCurrentSession().save(shipping);
		}catch (Exception e) {
			//if any exception comes during execute of try block, catch will execute
			e.printStackTrace();
			return false;
		}
		return true;
	}

	public boolean update(Shipping shipping) {
		try
		{
		sessionFactory.getCurrentSession().update(shipping);
		}catch (Exception e) {
			//if any exception comes during execute of try block, catch will excute
			e.printStackTrace();
			return false;
		}
		return true;
	}

	
}
