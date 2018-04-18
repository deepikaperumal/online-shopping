package com.niit.shoppingbackend.dao;

import com.niit.shoppingbackend.dto.Address;
import com.niit.shoppingbackend.dto.Cart;
import com.niit.shoppingbackend.dto.User;

public interface UserDAO {
	
	//add an user
	boolean addUser(User user);
	User getByEmail(String email);
	
	
	//add an address
	boolean addAddress(Address address);
	
	//add a cart
	boolean updateCart(Cart cart);

}
