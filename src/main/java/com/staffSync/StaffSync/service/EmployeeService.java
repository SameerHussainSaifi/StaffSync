package com.staffSync.StaffSync.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Component;

import com.staffSync.StaffSync.entity.Employee;
import com.staffSync.StaffSync.repo.EmployeeRepo;

@Component
public class EmployeeService {

	@Autowired
	EmployeeRepo employeeRepo;
	
	public Employee saveEmployee(Employee emp) {
		return  employeeRepo.save(emp);
		 
	}
	
	public List<Employee> getAllEmployees() {
		return (List<Employee>) employeeRepo.findAll();
	}
	
	public Employee getEmployeeById(int id) {
	    return employeeRepo.findById(id).orElse(null);
	}
	
	public Employee updateEmployee(Employee emp) {
		return employeeRepo.save(emp);
	}
	
	public String deleteEmployee(int id) {
		employeeRepo.deleteById(id);
		return "employee deleted";
		
	}
	
	public List<Employee> searchEmployeeByName(String name) {
		 return employeeRepo.findByNameContainingIgnoreCase(name);
	}
	
//	public String getPassword() {
//		return er.getpassword();
//	}
	
	
}
