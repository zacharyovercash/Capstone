package com.hcl.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.ModelAndViewDefiningException;

import com.hcl.model.Order;
import com.hcl.model.Product;
import com.hcl.model.User;
import com.hcl.service.OrderService;

@RestController
public class OrderController {

	
	@Autowired
	private OrderService service;
	
	
	@PostMapping("/cart")
	public void submitCart(HttpSession session,HttpServletResponse response) throws IOException {
		User currentUser = (User) session.getAttribute("sesname");
		List<Product> products = currentUser.getList();
		Order order = new Order();
		service.createOrder(order);
		service.addProductsToOrder(products, currentUser,order);
		response.sendRedirect("/verify");
	}
	
	@GetMapping("/verify")
	public ModelAndView verifyPage(HttpSession session,Order order) {
		User currentUser = (User) session.getAttribute("sesname");
		return new ModelAndView("verify","user",currentUser);
	}
	
	@PostMapping("/verify")
	public void VerifySubmit(HttpSession session,HttpServletResponse response) throws IOException {
		User currentUser = (User) session.getAttribute("sesname");
		List<Product> products = new ArrayList<Product>();
		currentUser.setList(products);
		response.sendRedirect("/home");
	}
}
