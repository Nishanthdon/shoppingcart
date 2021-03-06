package com.niit.shoppingcart.daoimpl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.shoppingcart.domain.Category;
import com.niit.shoppingcart.dao.CategoryDAO;

@Repository("CategoryDAO")
@Transactional
public class CategoryDAOImpl implements CategoryDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	public CategoryDAOImpl(SessionFactory sessionFactory)
	{
		this.setSessionFactory(sessionFactory);
	}

	public boolean saveOrUpdate(Category category) {
		try
		{
		sessionFactory.getCurrentSession().saveOrUpdate(category);
		}catch (Exception e) {
			//if any excpetion comes during execute of try block, catch will excute
			e.printStackTrace();
			return false;
		}
		return true;
	}

	
	@SuppressWarnings("unchecked")
	public List<Category> list() {
		return  sessionFactory.getCurrentSession().createQuery("from Category").list();
	}

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	public Category get(String categoryid) {
		
		//get method get the date from user table based on primary key i.e., id
		// and set it to User class
		//like select * from user where id = ?
	  return 	(Category)  sessionFactory.getCurrentSession().get(Category.class, categoryid);
		
	}

	public void delete(String categoryid) {
		Category categoryToDelete = new Category();
		categoryToDelete.setCategoryid(categoryid);
sessionFactory.getCurrentSession().delete(categoryToDelete);
		
	}

	/*public boolean saveOrUpdate(Category category) {
		// TODO Auto-generated method stub
		return false;
	}*/
}
