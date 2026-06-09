package com.staffSync.StaffSync.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.staffSync.StaffSync.entity.Employee;
import com.staffSync.StaffSync.repo.EmployeeRepo;
import com.staffSync.StaffSync.service.EmployeeService;

import jakarta.servlet.http.HttpSession;

@Controller
public class EmployeeController {

	@Autowired
	EmployeeService employeeService;
	
	@Autowired
	EmployeeRepo employeeRepo;
	
	@GetMapping("/employee/dashboard")
	public String showDashboard(Model model, HttpSession session) {
		Employee employee=(Employee) session.getAttribute("loggedInRole");
		 System.out.println("Employee from session: " + employee); // 👈 add this
		model.addAttribute("employee",employee);
		model.addAttribute("loggedInRole",employee);
		return "employeeDashboard";
	}
	
	 
@GetMapping("/employee/add")
public String showAddEmployeePage() {
	return "addEmployee";
}
	    
	
	@PostMapping("/employee/save")
	public String saveEmployee(@ModelAttribute Employee emp) {
		employeeService.saveEmployee(emp);
		return "redirect:/employee/add";
	}
	
	@GetMapping("/employee/update/{id}")
	public String showUpdateForm(@PathVariable("id") int id, Model model) {
		Employee employee=employeeService.getEmployeeById(id);
		model.addAttribute("employee",employee);
		return "updateEmployee";
	}
	
	@PostMapping("/employee/update")
	public String updateEmployee(@ModelAttribute Employee emp) {
		employeeService.updateEmployee(emp);
		return "redirect:/employee/dashboard";
		
	}
	
	@GetMapping("/employee/delete/{id}")
	public String deleteEmployee(@PathVariable("id") int id) {
		employeeService.deleteEmployee(id);
		return "redirect:/admin/dashboard";
	}
	
	@GetMapping("/employee/search")
	public String searchEmployeeByName(@RequestParam("name") String name, Model model) {
		List<Employee> emp=employeeService.searchEmployeeByName(name);
		model.addAttribute("employees",emp);
		return "dashboard";
	}
	
	
	@GetMapping("/employeeLogout")
	public String logout(HttpSession httpSession){
		httpSession.invalidate();
		return "redirect:/";
	}
		
	
   
}
