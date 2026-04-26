package com.staffSync.StaffSync.service;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.staffSync.StaffSync.entity.Admin;
import com.staffSync.StaffSync.entity.HR;
import com.staffSync.StaffSync.repo.AdminRepo;
import com.staffSync.StaffSync.repo.HRRepo;

@Component
public class AdminService {

	@Autowired
	private AdminRepo ar;
	
	@Autowired
	private HRRepo hrRepo;
	
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
	
	public Iterable<HR> getAllHR() {
		return hrRepo.findAll();
	}
	
}
