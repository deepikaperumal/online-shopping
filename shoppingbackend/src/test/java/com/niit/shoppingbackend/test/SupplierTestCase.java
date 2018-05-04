package com.niit.shoppingbackend.test;

import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shoppingbackend.dao.SupplierDAO;
import com.niit.shoppingbackend.dto.Supplier;

public class SupplierTestCase {
private static AnnotationConfigApplicationContext context;
	
	private static SupplierDAO supplierDAO;
	private Supplier supplier;
	
	@BeforeClass
	public static void init() {
		context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.shoppingbackend");
		context.refresh();
		supplierDAO =  (SupplierDAO)context.getBean("supplierDAO");
	}
	
	  
		@Test
	public void testCRUDSupplier() {
		//add operation
		supplier = new Supplier();
		
		supplier.setName("Kumar");
		supplier.setDescription("Good supplier!");
		supplier.setImageURL("CAT_1.png");
      
		assertEquals("Successfully added the supplier inside the table!",true,supplierDAO.add(supplier));  
	
		supplier = new Supplier();
		
		supplier.setName("Bob");
		supplier.setDescription("Bad supplier!");
		supplier.setImageURL("CAT_2.png");
      
		assertEquals("Successfully added the supplier inside the table!",true,supplierDAO.add(supplier));  
	
		//fetching and updating the supplier
		supplier = supplierDAO.get(2);
		supplier.setName("TV");
		assertEquals("Successfully updated a single supplier in the table!",true,supplierDAO.update(supplier));

		//delete the supplier
		
		assertEquals("Successfully deleted a single supplier in the table!",true,supplierDAO.delete(supplier));
		
		//fetching the list
		assertEquals("Successfully fetched the list supplier from the table!",1,supplierDAO.list().size());
	}
}


