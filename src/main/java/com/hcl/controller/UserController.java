package com.hcl.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.hcl.model.User;
import com.hcl.service.UserService;

@RestController
public class UserController {

	@Autowired
	private UserService service;

	@GetMapping("/")
	public ModelAndView login(HttpSession session) {
		session.invalidate();
		return new ModelAndView("login");
	}

	@PostMapping("/")
	public RedirectView authenticate(User user, HttpServletResponse response, HttpSession session) throws IOException {
		User currentUser = service.authenticate(user);
		if (currentUser != null) {
			session.setAttribute("sesname", currentUser);
			if (service.isAdmin(currentUser) == true) {
				return new RedirectView("/admin/home");
			}
			return new RedirectView("/home");
		}
		return new RedirectView("/");
	}

	@GetMapping("/register")
	public ModelAndView register() {
		return new ModelAndView("register");
	}

	@PostMapping("/register")
	public void registerUser(User user, HttpServletResponse response) throws IOException {
		service.addUser(user);
		response.sendRedirect("/");
	}

	@GetMapping("/admin/users")
	public ModelAndView userList(HttpSession session) {
		User currentUser = (User) session.getAttribute("sesname");
		if (!currentUser.getRole().equals("admin")) {
			return new ModelAndView("Error");
		}
		List<User> users = service.getAllUsers();
		return new ModelAndView("userlist", "users", users);
	}

	@GetMapping("/admin/update/{userid}")
	public ModelAndView updateView(HttpSession session, User user) {
		User currentUser = (User) session.getAttribute("sesname");
		if (!currentUser.getRole().equals("admin")) {
			return new ModelAndView("Error");
		}
		ModelAndView mav = new ModelAndView("update");
		User u = service.findByID(user.getUserid());
		mav.addObject("update", u);
		return mav;
	}

	@PostMapping("/admin/update/{userid}")
	public void updateUser(User u, HttpSession session, HttpServletResponse response) throws IOException {
		service.addUser(u);
		response.sendRedirect("/admin/users");
	}

	@GetMapping("/admin/delete/{userid}")
	public ModelAndView deleteDisplay(HttpSession session, User user) {
		ModelAndView mav = new ModelAndView("delete");
		User u = service.findByID(user.getUserid());
		mav.addObject("delete", u);
		return mav;
	}

	@PostMapping("/admin/delete/{userid}")
	public void deleteUser(User u, HttpSession session, HttpServletResponse response) throws IOException {
		service.deleteUser(u);
		response.sendRedirect("/admin/users");
	}

	@GetMapping("/profile")
	public ModelAndView profilePage(HttpSession session) {

		User currentUser = (User) session.getAttribute("sesname");
		if (session.getAttribute("sesname").equals("null")) {
			return new ModelAndView("login");
		}
		ModelAndView mav = new ModelAndView("userprofile");
		User u = service.findByID(currentUser.getUserid());
		mav.addObject("update", u);
		return mav;

	}

	@PostMapping("/profile")
	public void profileUpdate(HttpSession session, HttpServletResponse response, User u) throws IOException {
		service.addUser(u);
		response.sendRedirect("/home");
	}

}
