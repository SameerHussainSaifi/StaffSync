package com.staffSync.StaffSync.service;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Component;

import com.staffSync.StaffSync.entity.Admin;
import com.staffSync.StaffSync.entity.Employee;
import com.staffSync.StaffSync.repo.AdminRepo;

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
