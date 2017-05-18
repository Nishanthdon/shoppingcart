package com.niit.shoppingcart.daoimpl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.shoppingcart.dao.MycartDAO;
import com.niit.shoppingcart.domain.Mycart;

@Repository("MycartDAO")
@Transactional
public class MycartDAOImpl implements MycartDAO {
	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	@Autowired
	public MycartDAOImpl(SessionFactory sessionFactory)
	{
		this.setSessionFactory(sessionFactory);
	}
	public Mycart get(String id) {
		return 	(Mycart)  sessionFactory.getCurrentSession().get(Mycart.class, id);	
	}
	@SuppressWarnings("unchecked")
	public List<Mycart> list() {
		return  sessionFactory.getCurrentSession().createQuery("from Mycart").list();
	}
	
	public boolean save(Mycart mycart) {
		try
		{
		sessionFactory.getCurrentSession().save(mycart);
		}catch (Exception e) {
			//if any exception comes during execute of try block, catch will execute
			e.printStackTrace();
			return false;
		}
		return true;
	}

	public boolean update(Mycart mycart) {
		try
		{
		sessionFactory.getCurrentSession().update(mycart);
		}catch (Exception e) {
			//if any exception comes during execute of try block, catch will excute
			e.printStackTrace();
			return false;
		}
		return true;
	}

	
}
