package com.hcl.controller;

import java.io.IOException;
import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.hcl.model.Product;
import com.hcl.model.User;
import com.hcl.service.ProductService;
import com.hcl.service.UserService;

@RestController
public class ProductController {

	@Autowired
	private ProductService service;
	
	@Autowired
	private UserService userService;
	
	@GetMapping("/home")
	public ModelAndView displayPage(HttpSession session) {
		User currentUser = (User) session.getAttribute("sesname");
		System.out.println(currentUser);
		List<Product> products = service.listAllProducts();
		return new ModelAndView("display","products",products);
	}
	
	
	@GetMapping("/add")
	public ModelAndView add(HttpSession session) {
		return new ModelAndView("add");
	}
	
	@PostMapping("/add")
	public void addProduct(Product p,HttpServletResponse response,HttpSession session) throws IOException {
		System.out.println(p);
		service.addProduct(p);
		try {
			response.sendRedirect("/home");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	@GetMapping("/productdescription/{productId}")
	public ModelAndView productDiscription(Product product,HttpSession session) {
		User currentUser=(User) session.getAttribute("sesname");
		System.out.println(currentUser);
		ModelAndView mav = new ModelAndView("productdescription");
		Product p = service.findByID(product.getProductId());
		mav.addObject("productdescription",p);
		return mav;
	}
	
	
	@PostMapping("/productdescription/{productId}")
	public void addToCart(HttpSession session,Product p, HttpServletResponse response) throws IOException {
		User currentUser = (User) session.getAttribute("sesname");
		System.out.println(currentUser);
		Product product = service.findByID(p.getProductId());
			if(currentUser.getList().size()==0) {
				service.initializeCart(currentUser);
			}
		  service.addToCart(product, currentUser); 
		  List<Product> currentList = currentUser.getList();
		  for(Product ps : currentList)
		  {
			  System.out.println(ps);
		  } 
		response.sendRedirect("/home");
		
	}
	
	@GetMapping("/admin/home")
	public ModelAndView adminDisplay(HttpSession session) {
		User currentUser = (User) session.getAttribute("sesname");
		System.out.println(currentUser);
		if(!currentUser.getRole().equals("admin")) {
			return new ModelAndView("Error");
		}
		List<Product> products = service.listAllProducts();
		return new ModelAndView("admindisplay","products",products);
	}
	
	@GetMapping("/cart")
	public ModelAndView cartPage(HttpSession session) {
		User currentUser = (User) session.getAttribute("sesname");
		System.out.println(currentUser);
		List<Product> products = currentUser.getList();
		System.out.println(products);
		return new ModelAndView("cart","products",products);
	}
	
	@GetMapping("/admin/editProduct/{productId}")
	public ModelAndView editUserPage(HttpSession session,Product product) {
		User currentUser = (User) session.getAttribute("sesname");
		if(!currentUser.getRole().equals("admin")) {
			return new ModelAndView("Error");
		}
		ModelAndView mav = new ModelAndView("editProduct");
		Product p = service.findByID(product.getProductId());
		mav.addObject("update",p);
		return mav;
	}
	
	@PostMapping("/admin/editProduct/{productId}")
	public void editProduct(Product p, HttpSession session, HttpServletResponse response) throws IOException {
		service.addProduct(p);
		response.sendRedirect("/admin/home");
	}
	
}
