package com.niit.shoppingcart.dao;

import java.util.List;

import com.niit.shoppingcart.domain.Supplier;

public interface SupplierDAO {

	public boolean saveOrUpdate(Supplier supplier);

	public List<Supplier> list();

	public void delete(String id);

	public Supplier get(String supplierid);

	public void editSupplier(Supplier supplier);

	public List<Supplier> search(String keyword);

}
