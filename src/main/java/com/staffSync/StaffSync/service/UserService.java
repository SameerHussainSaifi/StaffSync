package com.staffSync.StaffSync.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.staffSync.StaffSync.entity.Admin;
import com.staffSync.StaffSync.entity.Employee;
import com.staffSync.StaffSync.entity.HR;
import com.staffSync.StaffSync.repo.AdminRepo;
import com.staffSync.StaffSync.repo.EmployeeRepo;
import com.staffSync.StaffSync.repo.HRRepo;

import jakarta.servlet.http.HttpSession;

@Service
public class UserService {

@Autowired
private AdminRepo adminRepo;

@Autowired
private EmployeeRepo employeeRepo;

@Autowired
private HRRepo hrRepo;



	public String authenticate(String email, String password, HttpSession session) {
		
		Admin admin=adminRepo.findByEmail(email);
		if(admin!=null && admin.getPassword().equals(password)) {
			session.setAttribute("admin", admin);
			return "admin";
		}
		
		Employee emp=employeeRepo.findByEmail(email);
		if(emp!=null && emp.getPassword().equals(password)) {
			session.setAttribute("employee", emp);
			return "employee";
			
		}
		
		HR hr=hrRepo.findByEmail(email);
		if(hr!=null && hr.getPassword().equals(password)) {
			session.setAttribute("hr", hr);
			return "hr";
		}
		
		return "invalidate";
	}
	
	public Iterable<Employee> getAllEmployees() {
		return employeeRepo.findAll();
	}
}
