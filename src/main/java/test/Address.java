package test;

import java.io.Serializable;

public class Address implements Serializable {
	private String name;
	private String address;
	private String tel;
	private String email;
	
	Address() {
		
	}

	String getName() {
		return name;
	}

	void setName(String name) {
		this.name = name;
	}

	String getAddress() {
		return address;
	}

	void setAddress(String address) {
		this.address = address;
	}

	String getTel() {
		return tel;
	}

	void setTel(String tel) {
		this.tel = tel;
	}

	String getEmail() {
		return email;
	}

	void setEmail(String email) {
		this.email = email;
	}
	

}
