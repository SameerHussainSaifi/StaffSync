package com.staffSync.StaffSync.controller;

import java.time.LocalDate;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.staffSync.StaffSync.entity.Employee;
import com.staffSync.StaffSync.entity.LeaveRequest;
import com.staffSync.StaffSync.service.LeaveRequestService;

import jakarta.servlet.http.HttpSession;

@Controller
public class LeaveRequestController {
	
	@Autowired
	private LeaveRequestService leaveRequestService ;
	
	@GetMapping("/apply/leave")
	   public String applyLeave() {
		   return "applyLeave";
	   }
	   
	  @PostMapping("/apply/leave")
	  public String applyLeaveRequest(@ModelAttribute LeaveRequest leaveRequest, HttpSession httpSession) {
        Employee employee=(Employee) httpSession.getAttribute("employee");
        leaveRequest.setEmployeeId(employee.getEmployeeId());
        leaveRequest.setStatus("PENDING");
        leaveRequest.setAppliedDate(LocalDate.now());
        
		leaveRequestService.leaveApply(leaveRequest);
		  return "redirect:/employee/dashboard";
	  }
	  
	  @GetMapping("/hr/leaveRequests")
	   public String showAllLeaveRequest(Model model) {
		    Iterable<LeaveRequest> leaveList=leaveRequestService.getAllLeaves();
		    model.addAttribute("leaveList",leaveList);
		    return "hrLeaveRequests";
		    
	   }
	  
	  @GetMapping("/leave/approve/{id}")
	  public String approveLeave(@PathVariable int id) {
		  leaveRequestService.approveLeave(id);
		  return "redirect:/hr/leaveRequests";
	  }
	  
	  @GetMapping("/leave/reject/{id}")
	  public String rejectLeave(@PathVariable int id) {
		  leaveRequestService.rejectLeave(id);
		  return "redirect:/hr/leaveRequests";
	  }
	  
	  @GetMapping("/leave/status/{id}")
	  public String leaveRequest(@PathVariable("id") int employeeId, Model model) {

	      List<LeaveRequest> leaveRequests =
	              leaveRequestService.getLeaveStatusByEmployeeId(employeeId);

	      model.addAttribute("leaveRequests", leaveRequests);

	      return "employeeLeaveStatus";
	  }

}
