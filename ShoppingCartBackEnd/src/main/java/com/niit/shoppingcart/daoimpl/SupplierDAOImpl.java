package com.niit.shoppingcart.daoimpl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.shoppingcart.dao.SupplierDAO;
import com.niit.shoppingcart.domain.Supplier;

@Repository("SupplierDAO")
@Transactional
public class SupplierDAOImpl implements SupplierDAO{
	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	@Autowired
	public SupplierDAOImpl(SessionFactory sessionFactory)
	{
		this.setSessionFactory(sessionFactory);
	}
	
	
	public Supplier get(String id) {
		return 	(Supplier)  sessionFactory.getCurrentSession().get(Supplier.class, id);	
	}
	
	@SuppressWarnings("unchecked")
	public List<Supplier> list() {
		return  sessionFactory.getCurrentSession().createQuery("from Supplier").list();
	}
	
	
	
	public boolean saveOrUpdate(Supplier supplier) {
		try
		{
		sessionFactory.getCurrentSession().saveOrUpdate(supplier);
		}catch (Exception e) {
			//if any exception comes during execute of try block, catch will execute
			e.printStackTrace();
			return false;
		}
		return true;
	}

	
	
	public void delete(String supplierid) {
		Supplier supplierToDelete = new Supplier();
		supplierToDelete.setSupplierid(supplierid);
        sessionFactory.getCurrentSession().delete(supplierToDelete);
		
	}
	public void editSupplier(Supplier supplier) {
		// TODO Auto-generated method stub
		
	}
	public List<Supplier> search(String keyword) {
		// TODO Auto-generated method stub
		return null;
	}
	
	
	
}
