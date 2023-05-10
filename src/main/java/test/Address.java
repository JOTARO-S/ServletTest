package test;

import java.io.Serializable;

public class Address implements Serializable {
	private String name;
	private String address;
	private String tel;
	private String email;
	
	Address() {
		
	}

	public String getName() {
		return name;
	}

	void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	void setAddress(String address) {
		this.address = address;
	}

	public String getTel() {
		return tel;
	}

	void setTel(String tel) {
		this.tel = tel;
	}

	public String getEmail() {
		return email;
	}

	void setEmail(String email) {
		this.email = email;
	}
	

}
