package com.edu.model.bean;

import java.io.Serializable;

public class LoginUser implements Serializable{

	private static final long serialVersionUID = -1760384320453246440L;
	
	private String username;
	private String password;
	public LoginUser(){}
	public LoginUser(String username, String password){
		this.username = username;
		this.password = password;
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
