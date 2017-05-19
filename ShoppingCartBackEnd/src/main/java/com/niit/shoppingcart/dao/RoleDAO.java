package com.niit.shoppingcart.dao;

import java.util.List;

import com.niit.shoppingcart.domain.Role;

public interface RoleDAO {

	public  boolean save(Role role);
	public boolean update(Role role);
    
	public List<Role>     list();
	public Role getByEmailId(String name);
}
