package com.niit.shoppingcart.dao;

import java.util.List;

import com.niit.shoppingcart.domain.Billing;

public interface BillingDAO {

	public  boolean save(Billing billing);
	public boolean update(Billing billing);
    
	public List<Billing>     list();
}
