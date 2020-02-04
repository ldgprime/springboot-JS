package com.cos.springboot.controller;

import java.util.Collection;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cos.springboot.model.Product;
import com.cos.springboot.repository.ProductRepository;

@Controller
@RequestMapping("/list")
public class ListController {
	
	@Autowired
	private ProductRepository productRepository;
	
	@GetMapping({"/",""})
	public String list() {
		return "list";
	}
	
	
	@GetMapping("/api/findall")
	public @ResponseBody ResponseEntity<?> findAll(){
		
		List<Product> products = productRepository.findAll();
		
		return new ResponseEntity<List<Product>>(products,HttpStatus.OK);
		
	}
	
	@GetMapping("/api/findcook")
	public @ResponseBody ResponseEntity<?> findcook(){
		
		List<Product> products = productRepository.findCook();
		
		return new ResponseEntity<List<Product>>(products,HttpStatus.OK);
		
	}
	
	@GetMapping("/api/findfood")
	public @ResponseBody ResponseEntity<?> findfood(){
		
		List<Product> products = productRepository.findFood();
		
		return new ResponseEntity<List<Product>>(products,HttpStatus.OK);
		
	}
	
	@GetMapping("/api/findallprice")
	public @ResponseBody ResponseEntity<?> findallprice(){
		
		List<Product> products = productRepository.findAllPrice();
		
		return new ResponseEntity<List<Product>>(products,HttpStatus.OK);
		
	}
	
	@GetMapping("/api/findcookprice")
	public @ResponseBody ResponseEntity<?> findcookprice(){
		
		List<Product> products = productRepository.findCookPrice();
		
		return new ResponseEntity<List<Product>>(products,HttpStatus.OK);
		
	}
	
	@GetMapping("/api/findfoodprice")
	public @ResponseBody ResponseEntity<?> findfoodprice(){
		
		List<Product> products = productRepository.findFoodPrice();
		
		return new ResponseEntity<List<Product>>(products,HttpStatus.OK);
		
	}
	
	@GetMapping("/api/findallordercount")
	public @ResponseBody ResponseEntity<?> findallordercount(){
		
		List<Product> products = productRepository.findAllOrderCount();
		
		return new ResponseEntity<List<Product>>(products,HttpStatus.OK);
		
	}
	
	@GetMapping("/api/findcookordercount")
	public @ResponseBody ResponseEntity<?> findcookordercount(){
		
		List<Product> products = productRepository.findCookOrderCount();
		
		return new ResponseEntity<List<Product>>(products,HttpStatus.OK);
		
	}
	
	@GetMapping("/api/findfoodordercount")
	public @ResponseBody ResponseEntity<?> findfoodordercount(){
		
		List<Product> products = productRepository.findFoodOrderCount();
		
		return new ResponseEntity<List<Product>>(products,HttpStatus.OK);
		
	}

}
