package com.springBoot.Employee_Management_Portal.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Component;

import com.springBoot.Employee_Management_Portal.entity.Employee;
import com.springBoot.Employee_Management_Portal.repo.EmployeeRepo;

@Component
public class EmployeeService {

	@Autowired
	EmployeeRepo er;
	
	public Employee addEmployee(Employee emp) {
		return  er.save(emp);
		 
	}
	
	public List<Employee> getAllEmployees() {
		return (List<Employee>) er.findAll();
	}
	
	public Employee getEmployeeById(int id) {
	    return er.findById(id).orElse(null);
	}
	
	public Employee updateEmployee(Employee emp) {
		return er.save(emp);
	}
	
	public String deleteEmployee(int id) {
		er.deleteById(id);
		return "employee deleted";
		
	}
	
	public List<Employee> searchEmployeeByName(String name) {
		 return er.findByNameContainingIgnoreCase(name);
	}
	
	
}
