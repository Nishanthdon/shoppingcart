package com.niit.shoppingcart.dao;

import java.util.List;

import com.niit.shoppingcart.domain.Shippingaddress;


public interface ShippingaddressDAO {
	public List<Shippingaddress> list();
	
	public List<Shippingaddress> list(String email);
	
	public Shippingaddress getByShippingAddress(String address);


	public Shippingaddress getByName(String name);

	public void saveOrUpdate(Shippingaddress address);

	public void delete(int sid);
	
	public Shippingaddress getBySid(int sid);

	

}
