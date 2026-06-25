package com.staffSync.StaffSync.repo;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.staffSync.StaffSync.entity.LeaveRequest;

public interface LeaveRequestRepo extends CrudRepository<LeaveRequest,Integer> {

	

	List<LeaveRequest> findByEmployeeId(int employeeId);

	

}
