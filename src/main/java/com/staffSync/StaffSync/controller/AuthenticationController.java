package com.staffSync.StaffSync.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.staffSync.StaffSync.service.UserService;

import jakarta.servlet.http.HttpSession;

@Controller
public class AuthenticationController {
	
@Autowired
private UserService userService;

@GetMapping("/")
public String showHomePage() {
	return "home";
}

@GetMapping("/login")
public String login() {
	return "login";
}

@PostMapping("/authenticateLogin")	
public String userLogin(@RequestParam String email, @RequestParam String password, HttpSession session) {
	String role=userService.authenticate(email, password,session);
	
	if(role.equals("admin")) {
		return "redirect:/admin/dashboard";
	}

	if(role.equals("employee")) {
		return "redirect:/employee/dashboard";
	}
	
	if(role.equals("hr")){
		return "redirect:/hr/dashboard";
	}
	else {
		return "login";
	}
}
}
