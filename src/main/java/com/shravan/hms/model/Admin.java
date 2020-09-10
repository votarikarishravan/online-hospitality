package com.shravan.hms.model;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="admin_details")
public class Admin {
	@Id
	private int id;
	private String username;
	private String password;
	
	@OneToOne(cascade = CascadeType.ALL)
	private AdminProfile adminProfile;

	public AdminProfile getAdminProfile() {
		return adminProfile;
	}

	public void setAdminProfile(AdminProfile adminProfile) {
		this.adminProfile = adminProfile;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	
}
