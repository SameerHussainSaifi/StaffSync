package com.staffSync.StaffSync.service;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.staffSync.StaffSync.entity.Admin;
import com.staffSync.StaffSync.entity.HR;
import com.staffSync.StaffSync.entity.HrLeaveRequest;
import com.staffSync.StaffSync.repo.AdminRepo;
import com.staffSync.StaffSync.repo.HRRepo;
import com.staffSync.StaffSync.repo.HrLeaveRequestRepo;

@Component
public class AdminService {

	@Autowired
	private AdminRepo adminRepo;
	
	@Autowired
	private HRRepo hrRepo;
	
	@Autowired
	private HrLeaveRequestRepo hrLeaveRequestRepo;
	
	public void saveAdmin(Admin admin) {
		adminRepo.save(admin);
	}
	

	public Admin adminAuthenticate(Admin admin ) {
		
		Admin existingAdmin=adminRepo.findByEmail(admin.getEmail());
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
