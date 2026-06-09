package com.staffSync.StaffSync.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.staffSync.StaffSync.entity.LeaveRequest;
import com.staffSync.StaffSync.repo.LeaveRequestRepo;

@Service
public class LeaveRequestService {

	@Autowired
	private LeaveRequestRepo leaveRequestRepo;
	
	public void leaveApply(LeaveRequest leaveRequest) {
		leaveRequestRepo.save(leaveRequest);
	}
	
	public Iterable<LeaveRequest> getAllLeaves() {
		return  leaveRequestRepo.findAll();
	}
	
	public void approveLeave(int id) {
    LeaveRequest leave= leaveRequestRepo.findById(id).orElse(null);
    if(leave!=null) {
    	leave.setStatus("Approved");
    	leaveRequestRepo.save(leave);
    }
    
	}
	
	public void rejectLeave(int id) {
		LeaveRequest leave=leaveRequestRepo.findById(id).orElse(null);
		if(leave!=null) {
			leave.setStatus("REJECTED");
			leaveRequestRepo.save(leave);
		}
	}
}
