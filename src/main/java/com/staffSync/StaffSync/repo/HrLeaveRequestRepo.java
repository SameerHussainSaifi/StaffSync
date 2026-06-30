package com.staffSync.StaffSync.repo;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.staffSync.StaffSync.entity.HrLeaveRequest;

@Repository
public interface HrLeaveRequestRepo extends CrudRepository<HrLeaveRequest, Integer>{

}
