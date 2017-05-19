package com.niit.shoppingcart.daoimpl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.shoppingcart.dao.RoleDAO;
import com.niit.shoppingcart.domain.Role;

@Repository("RoleDAO")
@Transactional
public class RoleDAOImpl implements RoleDAO {
	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	@Autowired
	public RoleDAOImpl(SessionFactory sessionFactory)
	{
		this.setSessionFactory(sessionFactory);
	}
	public Role get(String id) {
		return 	(Role)  sessionFactory.getCurrentSession().get(Role.class, id);	
	}
	@SuppressWarnings("unchecked")
	public List<Role> list() {
		return  sessionFactory.getCurrentSession().createQuery("from Role").list();
	}
	
	public boolean save(Role role) {
		try
		{
		sessionFactory.getCurrentSession().saveOrUpdate(role);
		}catch (Exception e) {
			//if any exception comes during execute of try block, catch will execute
			e.printStackTrace();
			return false;
		}
		return true;
	}

	public boolean update(Role role) {
		try
		{
		sessionFactory.getCurrentSession().update(role);
		}catch (Exception e) {
			//if any exception comes during execute of try block, catch will excute
			e.printStackTrace();
			return false;
		}
		return true;
	}

	
}