package com.watermonitor.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.watermonitor.entity.User;
import com.watermonitor.service.UserService;

@Controller
public class UserController {

	@Autowired
	UserService userService;

	@GetMapping("/")
	public String welcome(Model model, HttpSession session) {
		return "index";
	}
	
	@GetMapping("/register")
	public ModelAndView register(Model model) {
		return new ModelAndView("register", "student", new User());
	}
	
	@PostMapping("/register")
	public String handleRegistration(Model model, @ModelAttribute("user") User user, HttpSession session) {
		userService.saveUser(user);
		model.addAttribute("setUser", user);
		return "profile";
	}

	@GetMapping("/login")
	public ModelAndView login(Model model) {
		return new ModelAndView("login", "user", new User());
	}
	
	@PostMapping("/login")
	public String handleLogin(Model model, @ModelAttribute("user") User user, HttpSession session) {
			User found = userService.findUserLogin(user.getEmail(), user.getPassword());
			
		if (found != null) {
			
			model.addAttribute("setUser", found);
			session.setAttribute("setUser", found);
			System.out.println("FOUND OBJECT: " + found);
			return "redirect:profile";
		} else {
			model.addAttribute("msg", "Invalid Login");
			return "login";
		}
	}
		
	@GetMapping("/profile")
	public String profile(Model model, HttpSession session, User user ) {
		System.out.println(session.getAttribute("setUser"));
		return "profile";
	}
	
	@GetMapping("/editInfo")
	public ModelAndView edit(Model model, HttpSession session, @RequestParam String email) {
		User obj = (User) session.getAttribute("setUser");
		
		System.out.println(session.getAttribute("setUser"));
		return new ModelAndView("editInfo", "edit", userService.getUserById(obj.getEmail()));
	}
	
	@PostMapping("/editInfo")
	public String handleEdit(Model model, @ModelAttribute("edit") User user, HttpSession session) {
		User obj = (User) session.getAttribute("setUser");
		userService.editStudentInfo(user, obj);
		return "profile";
		
	}
	@GetMapping("/deleteInfo")
	public String deleteByEmail(String email, HttpSession session) {
		userService.deleteUserById(email);
		System.out.println("user deleted");
		return "index";
	}
	@GetMapping("/aboutUs")
	public String aboutUs(Model model, HttpSession session, User user ) {
		System.out.println(session.getAttribute("setUser"));
		return "aboutUs";
	}
	
}