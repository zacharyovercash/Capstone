package com.hcl.model;



import java.util.ArrayList;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;

import com.fasterxml.jackson.annotation.JsonInclude;

@Entity
@Table(name="users")
public class User {

	@Id @GeneratedValue(strategy = GenerationType.AUTO)
	private long userid;
	private String username;
	private String role="user";
	private String password;
	private String fname;
	private String lname;
	private String address;
	private String city;
	private String state;
	private String zipcode;
	
	@JsonInclude
	@Transient
	private List<Product> list= new ArrayList<Product>();


	public List<Product> getList() {
		return list;
	}
	
	
	public void setList(List<Product> list) {
		this.list = list;
	}

	public void newList() {
		this.list= new ArrayList<Product>();
	}
	
	
	public long getUserid() {
		return userid;
	}

	public void setUserid(long userid) {
		this.userid = userid;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public String getLname() {
		return lname;
	}

	public void setLname(String lname) {
		this.lname = lname;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getZipcode() {
		return zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}

	
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}

	public User(long userid, String username, String password, String fname, String lname, String address,
			String city, String state, String zipcode) {
		super();
		this.userid = userid;
		this.username = username;
		this.password = password;
		this.fname = fname;
		this.lname = lname;
		this.address = address;
		this.city = city;
		this.state = state;
		this.zipcode = zipcode;
	}


	@Override
	public String toString() {
		return "User [userid=" + userid + ", username=" + username + ", role=" + role + ", password=" + password
				+ ", fname=" + fname + ", lname=" + lname + ", address=" + address + ", city=" + city + ", state="
				+ state + ", zipcode=" + zipcode + ", list=" + list + "]";
	}
	
	
	
	
	
	
}
