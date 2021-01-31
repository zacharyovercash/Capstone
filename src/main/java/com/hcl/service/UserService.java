package com.hcl.service;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hcl.dao.UserRepo;
import com.hcl.model.Product;
import com.hcl.model.User;

@Service
public class UserService {

	@Autowired
	private UserRepo repo;
	
	
	public List<User> getAllUsers(){
		List<User> users = (List<User>) repo.findAll();
		return users;
	}
	
	public User authenticate(User user) {
		List<User> users = (List<User>) repo.findAll();
		List<User> exists = users.stream().filter(c->c.getUsername().equals(user.getUsername()) && c.getPassword().equals(user.getPassword())).collect(Collectors.toList());
		User currentUser=null;
		if(exists.size()==1) {
			currentUser = exists.get(0);
			return currentUser;
		}
		return currentUser;
	}
	
	public void addUser(User user)
	{
		repo.save(user);
	}
	
	public User findByID(long id) {
		User user= repo.findById(id).get();
		return user;
	}
	
	public void deleteUser(User user)
	{
		repo.delete(user);
	}
	
	public boolean isAdmin(User u)
	{
		if(u.getRole().equals("admin")) {
			return true;
		}
		return false;
	}

}
