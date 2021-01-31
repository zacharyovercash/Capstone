package com.hcl.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hcl.dao.ProductRepo;
import com.hcl.model.Product;
import com.hcl.model.User;

@Service
public class ProductService {

	@Autowired
	private ProductRepo repo;
	
	public List<Product> listAllProducts(){
		List<Product> products = (List<Product>) repo.findAll();
		return products;
	}
	
	public void addProduct(Product p) {
		repo.save(p);
	}
	
	public Product findByID(long id) {
		Product p = repo.findById(id).get();
		return p;
	}
	
	public void addToCart(Product p,User user)
	{
		user.getList().add(p);
	}
	
	public void initializeCart(User user)
	{
		List<Product> lst = new ArrayList<Product>();
		user.setList(lst);
	}
	
	
}
