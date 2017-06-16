package com.niit.shoppingcart.domain;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity // to map the data base table
@Table(name = "User") // if the table name and domain class name is different
@Component // context.scan("com.niit.ekartbackend") --will scan the pacakge and create			// singlton instances
public class User {

	// we have define all properties for all the fields in table.

	// we have mention which one is primary key
	@Id
	@GeneratedValue
	private String id;
	
	@Column(name = "name")
	private String name;

	private String password;

	private String contact;
	
	private String email;
	
	private String address;
	
	private int zipcode;
	
	private boolean enabled;

	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="id")
	
	private Role role;
	
	
	public Role getRole() {
		return role;
	}

	public void setRole(Role role) {
		this.role = role;
	}

	

	
	

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public boolean isEnabled() {
		return enabled;
	}

	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}

	

	

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public int getZipcode() {
		return zipcode;
	}

	public void setZipcode(int zipcode) {
		this.zipcode = zipcode;
	}

	

}
