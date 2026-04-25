package com.staffSync.StaffSync.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.staffSync.StaffSync.entity.HR;
import com.staffSync.StaffSync.service.HRService;

@Controller
public class HRController {
	
@Autowired
private HRService hrService;

@GetMapping("/hr/dashboard")
public String showHRDashboard() {
	return "hrDashboard";	
}

@GetMapping("/hr/add")
public String showAddHRPage() {
	return "addHR";
}

@PostMapping("/hr/save")
public String saveHR(@ModelAttribute HR hr ) {
	hrService.saveHR(hr);
	return "redirect:/hr/add";
}
}
