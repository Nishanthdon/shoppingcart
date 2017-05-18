package com.niit.shoppingcart.dao;

import java.util.List;

import com.niit.shoppingcart.domain.Shipping;

public interface ShippingDAO {

	public  boolean save(Shipping shipping);
	public boolean update(Shipping shipping);
    
	public List<Shipping>     list();
}
