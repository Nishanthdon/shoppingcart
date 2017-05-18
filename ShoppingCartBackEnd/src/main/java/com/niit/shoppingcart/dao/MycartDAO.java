package com.niit.shoppingcart.dao;

import java.util.List;

import com.niit.shoppingcart.domain.Mycart;

public interface MycartDAO {

	public  boolean save(Mycart mycart);
	public boolean update(Mycart mycart);
    
	public List<Mycart>     list();
}
