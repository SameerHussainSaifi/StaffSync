package com.staffSync.StaffSync.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.staffSync.StaffSync.entity.HR;
import com.staffSync.StaffSync.repo.HRRepo;

@Service
public class HRService {

@Autowired
HRRepo hrRepo;

public HR saveHR(HR hr) {
	return hrRepo.save(hr)	;
}
}
