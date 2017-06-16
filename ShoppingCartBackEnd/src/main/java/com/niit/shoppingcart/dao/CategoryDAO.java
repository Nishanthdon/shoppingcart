package com.niit.shoppingcart.dao;

import java.util.List;

import com.niit.shoppingcart.domain.Category;

public interface CategoryDAO {

	
	public boolean saveOrUpdate(Category category);

	public List<Category> list();
	
	
	public void delete(String id);

	public Category get(String categoryid);
}
