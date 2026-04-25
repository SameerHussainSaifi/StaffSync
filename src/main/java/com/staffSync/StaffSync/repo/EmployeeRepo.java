package com.staffSync.StaffSync.repo;

import java.util.List;


import org.springframework.data.repository.CrudRepository;

import com.staffSync.StaffSync.entity.Employee;

public interface EmployeeRepo extends CrudRepository<Employee, Integer> {

	List<Employee> findByNameContainingIgnoreCase(String name);

	Employee findByEmail(String email);

	

	



	
	

	
}
