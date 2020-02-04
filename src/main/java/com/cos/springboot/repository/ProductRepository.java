package com.cos.springboot.repository;

import java.util.List;

import com.cos.springboot.model.Product;

public interface ProductRepository {
	
	List<Product> findAll();
	
	List<Product> findCook();
	
	List<Product> findFood();
	
	List<Product> findAllPrice();
	
	List<Product> findCookPrice();
	
	List<Product> findFoodPrice();
	
	List<Product> findAllOrderCount();
	
	List<Product> findCookOrderCount();
	
	List<Product> findFoodOrderCount();


}
