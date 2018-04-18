package com.niit.shoppingbackend.dto;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Address {
/*
 * private fields
 */
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
      private int id;
	@Column(name="user_id")
	private int userId;
	@Column(name="address_line_one")
	private String addressLineOne;
	@Column(name="address_line_two")
	private String addressLinetwo;
	private String city;
	private String state;
	private String country;
	@Column(name="postalCode")
	private String postalCode;
	private boolean shipping;
	private boolean billing;
	/*
	 * setter and getter for the fields
	 */
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getAddressLineOne() {
		return addressLineOne;
	}
	public void setAddressLineOne(String addressLineOne) {
		this.addressLineOne = addressLineOne;
	}
	public String getAddressLinetwo() {
		return addressLinetwo;
	}
	public void setAddressLinetwo(String addressLinetwo) {
		this.addressLinetwo = addressLinetwo;
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
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getPostalCode() {
		return postalCode;
	}
	public void setPostalCode(String postalCode) {
		this.postalCode = postalCode;
	}
	public boolean isShipping() {
		return shipping;
	}
	public void setShipping(boolean shipping) {
		this.shipping = shipping;
	}
	public boolean isBilling() {
		return billing;
	}
	public void setBilling(boolean billing) {
		this.billing = billing;
	}
	
	
	/*
	 * toString for logging and debugging activity
	 */
	@Override
	public String toString() {
		return "Address [id="+id+", addressLineOne="+ addressLineOne+", addressLinetwo="+addressLinetwo+","
				+ " city="+city+", state="+state+", country="+country+", postalCode="+postalCode+", shipping="+shipping+", billing="+billing+"]";
			
	}
	
	
	
}