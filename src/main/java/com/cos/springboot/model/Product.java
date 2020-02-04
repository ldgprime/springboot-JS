package com.cos.springboot.model;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Product {
	private int id;
	private String name;
	private int price;
	private int orderCount;
	private String type;
	
	@Builder
	public Product(String name, int price, int orderCount, String type) {
		this.name = name;
		this.price = price;
		this.orderCount = orderCount;
		this.type = type;
	}
	
	
	
	
	
	
}
