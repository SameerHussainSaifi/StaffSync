package com.staffSync.StaffSync.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.staffSync.StaffSync.entity.EmployeeLeaveRequest;
import com.staffSync.StaffSync.repo.EmployeeLeaveRequestRepo;

@Service
public class EmployeeLeaveRequestService {

	@Autowired
	private EmployeeLeaveRequestRepo employeeleaveRequestRepo;
	
	public void leaveApply(EmployeeLeaveRequest leaveRequest) {
		employeeleaveRequestRepo.save(leaveRequest);
	}
	
	public Iterable<EmployeeLeaveRequest> getAllLeaves() {
		return  employeeleaveRequestRepo.findAll();
	}
	
	public void approveLeave(int id) {
    EmployeeLeaveRequest leave= employeeleaveRequestRepo.findById(id).orElse(null);
    if(leave!=null) {
    	leave.setStatus("Approved");
    	employeeleaveRequestRepo.save(leave);
    }
    
	}
	
	public void rejectLeave(int id) {
		EmployeeLeaveRequest leave=employeeleaveRequestRepo.findById(id).orElse(null);
		if(leave!=null) {
			leave.setStatus("REJECTED");
			employeeleaveRequestRepo.save(leave);
		}
	}

	 public List<EmployeeLeaveRequest> getLeaveStatusByEmployeeId(int employeeId) {
	        return employeeleaveRequestRepo.findByEmployeeId(employeeId);
	    }
}
