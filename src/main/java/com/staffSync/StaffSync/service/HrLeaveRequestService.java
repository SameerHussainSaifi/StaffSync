package com.staffSync.StaffSync.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.staffSync.StaffSync.entity.HrLeaveRequest;
import com.staffSync.StaffSync.repo.HrLeaveRequestRepo;

@Service
public class HrLeaveRequestService {

	@Autowired
	private HrLeaveRequestRepo hrLeaveRequestRepo;
	
	public void applyLeave(HrLeaveRequest hrLeaveRequest) {
		hrLeaveRequestRepo.save(hrLeaveRequest);
	}
	
	public Iterable<HrLeaveRequest> getAllLeaves() {
		return hrLeaveRequestRepo.findAll();
	}
	
}
