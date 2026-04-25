package com.springBoot.Employee_Management_Portal.service;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Component;

import com.springBoot.Employee_Management_Portal.entity.Admin;
import com.springBoot.Employee_Management_Portal.entity.Employee;
import com.springBoot.Employee_Management_Portal.repo.AdminRepo;

import jakarta.servlet.http.HttpSession;

@Component
public class AdminService {

	@Autowired
	AdminRepo ar;
	
	public void saveAdmin(Admin admin) {
		ar.save(admin);
	}
	

	public Admin adminAuthenticate(Admin admin ) {
		
		Admin existingAdmin=ar.findByEmail(admin.getEmail());
		if(existingAdmin != null && existingAdmin.getPassword().equals(admin.getPassword())) {
			
			
			return existingAdmin;
		}
		else {
		return null;	
		}
		
	}
	
	
	
}
