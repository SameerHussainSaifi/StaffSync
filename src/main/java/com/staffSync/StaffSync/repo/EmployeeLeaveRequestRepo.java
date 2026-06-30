package com.staffSync.StaffSync.repo;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.staffSync.StaffSync.entity.EmployeeLeaveRequest;

public interface EmployeeLeaveRequestRepo extends CrudRepository<EmployeeLeaveRequest,Integer> {

	

	List<EmployeeLeaveRequest> findByEmployeeId(int employeeId);

	

}
