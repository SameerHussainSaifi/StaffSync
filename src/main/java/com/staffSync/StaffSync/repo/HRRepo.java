package com.staffSync.StaffSync.repo;

import org.springframework.data.repository.CrudRepository;

import com.staffSync.StaffSync.entity.HR;

public interface HRRepo extends CrudRepository<HR, Integer> {

	HR findByEmail(String email);

}
