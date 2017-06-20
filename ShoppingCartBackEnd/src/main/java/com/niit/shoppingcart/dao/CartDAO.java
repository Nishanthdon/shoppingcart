package com.niit.shoppingcart.dao;

import java.util.List;

import com.niit.shoppingcart.domain.Cart;


public interface CartDAO {

	public List<Cart> list();

	public Cart getByCartId(int cartid);

	public Cart getByProductId(int productid);		

	public  List<Cart> getByEmailId(String email);

	public Cart getByProductName(String productname);	

	public void delete(int cartId);

	public Long getTotalAmount(String id);

	public boolean itemAlreadyExist(String email, String productid, boolean b);

	public Cart getByUserandProduct(String email, String productid);

	public boolean save(Cart cart);
	
	public boolean update(Cart cart);
	
	public  List<Cart> listCartByStatus(String userID, String status);

}