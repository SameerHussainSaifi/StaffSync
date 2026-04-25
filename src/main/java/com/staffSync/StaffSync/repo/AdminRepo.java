package com.staffSync.StaffSync.repo;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.repository.CrudRepository;

import com.staffSync.StaffSync.entity.Admin;
import com.staffSync.StaffSync.entity.Employee;

public interface AdminRepo extends CrudRepository<Admin, Integer> {

	

	Admin findByEmail(String email);

	



	



}
