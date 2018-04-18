package com.niit.shoppingbackend.test;



import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shoppingbackend.dao.UserDAO;
import com.niit.shoppingbackend.dto.Address;
import com.niit.shoppingbackend.dto.Cart;
import com.niit.shoppingbackend.dto.User;

public class UserTestCase {
	
private static AnnotationConfigApplicationContext context;
	
	private static UserDAO userDAO;
	private User user = null;
	private Cart cart =null;
	private Address address =null;
	
	@BeforeClass
public static void init() {
	context = new AnnotationConfigApplicationContext();
	context.scan("com.niit.shoppingbackend");
	context.refresh();
	
	userDAO =(UserDAO) context.getBean("userDAO");
	}
	
	/*
	@Test
	public void testAdd() {
		user = new User();
		user.setFirstName("Deepika");
		user.setLastName("Perumal");
		user.setEmail("deepi@gmail.com");
		user.setContectNumber("9876543212");
		user.setRole("USER");
		user.setPassword("12345");
		
		//add the user
		assertEquals("Failed to add user!",true,userDAO.addUser(user));
		
		address = new Address();
		address.setAddressLineOne("40A Venkareswara Nagar");
		address.setAddressLinetwo("Near MGR College");
		address.setCity("Chennai");
		address.setState("TamilNadu");
		address.setCountry("India");
		address.setPostalCode("600095");
		address.setBilling(true);
		
		//link the user with the address using id
		address.setUserId(user.getId());
		
		//add the address
				assertEquals("Failed to add address!",true,userDAO.addAddress(address));
		
				if(user.getRole().equals("USER")) {
					
					//create a cart for this user
					cart=new Cart();
					
					cart.setUser(user);
					
					//add to cart
					assertEquals("Failed to add cart!",true,userDAO.addCart(cart));
					
					//add a shipping address for this user
					
					address = new Address();
					address.setAddressLineOne("20A Green Nager");
					address.setAddressLinetwo("Near SGS College");
					address.setCity("Chennai");
					address.setState("TamilNadu");
					address.setCountry("India");
					address.setPostalCode("600 035");
					//set shipping to true
					address.setShipping(true);
					
					//link it with user
					address.setUserId(user.getId());
					
					//add to address
					assertEquals("Failed to add address!",true,userDAO.addAddress(address));
					
				}
	}
*/
/*
	@Test
	public void testAdd() {
		user = new User();
		user.setFirstName("Deepika");
		user.setLastName("Perumal");
		user.setEmail("deepi@gmail.com");
		user.setContectNumber("9876543212");
		user.setRole("USER");
		user.setPassword("12345");
		
		
	
				if(user.getRole().equals("USER")) {
					
					//create a cart for this user
					cart=new Cart();
					
					cart.setUser(user);

					//attach cart with the user
					user.setCart(cart);
					
}
				//add the user
				assertEquals("Failed to add user!",true,userDAO.addUser(user));
				
	}
	*/
	
	/*
	@Test 
	public void testUpdateCart() {
		// fetch the user by its  email
		user=userDAO.getByEmail("deepi@gmail.com"); 
		
		//get the cart of the user
       cart=user.getCart();	
       
		cart.setGrandTotal(5555);
		
		cart.setCartLines(2);
		
		assertEquals("Failed to update the cart!",true,userDAO.updateCart(cart));
		
	}
	
	*/
	
	/*
	@Test
	public void testAddAddress() {
		// we need to add an user
		user = new User();
		user.setFirstName("Deepika");
		user.setLastName("Perumal");
		user.setEmail("deepi@gmail.com");
		user.setContectNumber("9876543212");
		user.setRole("USER");
		user.setPassword("12345");
		
		//add the user
		assertEquals("Failed to add user!",true,userDAO.addUser(user));
		
		//we are going to add the address
		
		address = new Address();
		address.setAddressLineOne("40A Venkareswara Nagar");
		address.setAddressLinetwo("Near MGR College");
		address.setCity("Chennai");
		address.setState("TamilNadu");
		address.setCountry("India");
		address.setPostalCode("600095");
		address.setBilling(true);
		
		//attached the user to the address
		address.setUser(user);
		assertEquals("Failed to add address!",true,userDAO.addAddress(address));
		
		
		//we are going to add the shipping Address
	
		address = new Address();
		address.setAddressLineOne("20A Green Nager");
		address.setAddressLinetwo("Near SGS College");
		address.setCity("Chennai");
		address.setState("TamilNadu");
		address.setCountry("India");
		address.setPostalCode("600 035");
		//set shipping to true
		address.setShipping(true);
		assertEquals("Failed to add shipping address!",true,userDAO.addAddress(address));
		
	
	}
	 
	*/
	
	/*
	@Test
	public void testAddAddress() {
		
		user =userDAO.getByEmail("deepi@gmail.com");
		
		//we are going to add the shipping Address
		
			address = new Address();
			address.setAddressLineOne("20A Read Nager");
			address.setAddressLinetwo("Near xyz College");
			address.setCity("Readhills");
			address.setState("TamilNadu");
			address.setCountry("India");
 			address.setPostalCode("600099");
			
			//set shipping to true
			address.setShipping(true);
			assertEquals("Failed to add shipping address!",true,userDAO.addAddress(address));
			
			
		
	}
	*/
	@Test
	public void testGetAddresses() {
		
		user =userDAO.getByEmail("deepi@gmail.com");
		
		assertEquals("Failed to fetch the list of address and size does not match!",2,
				userDAO.listShippingAddresses(user).size());
		
		assertEquals("Failed to fetch the list of billing address and size does not match!","Chennai",
				userDAO.getBillingAddress(user).getCity());
		
		
	}
	
	
	
}
