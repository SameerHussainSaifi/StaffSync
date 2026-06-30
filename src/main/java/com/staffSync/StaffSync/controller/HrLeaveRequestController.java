package com.staffSync.StaffSync.controller;

import java.time.LocalDate;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.staffSync.StaffSync.entity.HR;
import com.staffSync.StaffSync.entity.HrLeaveRequest;
import com.staffSync.StaffSync.service.HrLeaveRequestService;

import jakarta.servlet.http.HttpSession;

@Controller
public class HrLeaveRequestController { 
	
	@Autowired
	private HrLeaveRequestService hrLeaveRequestService;
	
	@GetMapping("/hr/leave/apply")
	public String hrApplyLeave() {
		return "hrLeaveApply";
	}
	  
	@PostMapping("/hr/leave/apply")
	public String hrApplyLeaveRequest(@ModelAttribute HrLeaveRequest leaveRequest, HttpSession httpSession) {
		HR hr=(HR) httpSession.getAttribute("hr");
		leaveRequest.setHrId(hr.getHrId());
		leaveRequest.setStatus("PENDING");
		leaveRequest.setAppliedDate(LocalDate.now());
		
		
		hrLeaveRequestService.applyLeave(leaveRequest);
		return "redirect:/hr/dashboard";
	}
	
	@GetMapping("/leave/myRequests")
	public String showAllLeaveRequest(Model model) {
		Iterable<HrLeaveRequest> leaveList=hrLeaveRequestService.getAllLeaves();
		model.addAttribute("leaveList", leaveList);
		return "hrLeaveRequests";
	}
}
