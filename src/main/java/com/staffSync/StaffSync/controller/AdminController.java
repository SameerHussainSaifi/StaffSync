package com.staffSync.StaffSync.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.staffSync.StaffSync.entity.Admin;
import com.staffSync.StaffSync.entity.Employee;
import com.staffSync.StaffSync.entity.HR;
import com.staffSync.StaffSync.service.AdminService;
import com.staffSync.StaffSync.service.EmployeeService;

import jakarta.servlet.http.HttpSession;

@Controller
public class AdminController {
	
	@Autowired
	AdminService as;
	
	@Autowired
	EmployeeService es;
	
	@GetMapping("/")
	public String showHomePage() {
		return "home";
	}
	
	@GetMapping("/admin/register")
    public String showRegisterPage() {
        return "adminRegister"; // This will render WEB-INF/views/admin-register.jsp
    }
	
	@PostMapping("/admin/save")
	public String saveAdmin(@ModelAttribute Admin admin) {
		as.saveAdmin(admin);
		return "redirect:/admin/register";
	}
	
	@GetMapping("/admin/login")
	public String showLoginPage() {
		return "adminLogin";
	}
	
	@PostMapping("/admin/login")
	public String adminLogin(@ModelAttribute Admin admin, HttpSession session) {
		Admin existingAdmin=as.adminAuthenticate(admin);
		if(existingAdmin != null) {
			session.setAttribute("admin", existingAdmin);
		return "redirect:/admin/dashboard";
		}
		return "redirect:/admin/login";
	}
	
	
	@GetMapping("/admin/dashboard")
	public String showDashboard(Model model, HttpSession session) {
		
		List<Employee> employees= es.getAllEmployees();
		model.addAttribute("employees", employees);
		Admin admin=(Admin) session.getAttribute("admin");
		model.addAttribute("admin",admin);
		
		Iterable<HR> hr=as.getAllHR();
		model.addAttribute("hr", hr);
		return "adminDashboard";
	}
	
	
	
	@GetMapping("/admin/logout")
	public String adminLogout(HttpSession session, RedirectAttributes ra) {
		session.invalidate();
		ra.addFlashAttribute("message", "Admin logged out Successfully");
	return "redirect:/admin/login";	
	}
	
	
}
