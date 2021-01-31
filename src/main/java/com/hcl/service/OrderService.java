package com.hcl.service;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hcl.dao.OrderRepo;
import com.hcl.model.Order;
import com.hcl.model.Product;
import com.hcl.model.User;

@Service
public class OrderService {

	@Autowired
	private OrderRepo repo;
	
	public List<Order> getAllOrders(){
		List<Order> orders = (List<Order>) repo.findAll();
		return orders;
	}
	
	public Order createOrder(Order order) {
		return repo.save(order);
	}
	
	public void updateOrder(Order order) {
		repo.save(order);
	}
	
	public List<Order> getOrdersByUser(User user) {
		List<Order> orders = (List<Order>) repo.findAll();
		List<Order> userOrders = orders.stream().filter(o->o.getUserId()==user.getUserid()).collect(Collectors.toList());
		return userOrders;
	}
	
	public Order getOrderById(long id)
	{
		return repo.findById(id).get();
	}
	
	public void addProductsToOrder(List<Product> products, User currentUser,Order order) {
		for(Product p : products)
		{
			Order o = new Order(order.getOrderId(),currentUser.getUserid(),p.getProductId());
			repo.save(o);
		}
	}
	
}
