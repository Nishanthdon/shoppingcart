package com.niit.shoppingcart.dao;

import java.util.List;

import com.niit.shoppingcart.domain.Product;

public interface ProductDAO {


	public boolean saveOrUpdate(Product product);
    
	public List<Product> list();
	
	public void delete(String id);
	
	public Product get(String productid);

	
	public List<Product> list(String categoryName);
	
	public void save(Product product);

	public Product getByProductid(String productid);
	
	
	
}
