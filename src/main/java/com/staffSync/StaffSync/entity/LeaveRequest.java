package com.staffSync.StaffSync.entity;

import java.time.LocalDate;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class LeaveRequest {
	
	@Id
	 @GeneratedValue(strategy = GenerationType.IDENTITY)
	private int leaveId;
	
	private int employeeId;
	private String leaveType;
	private LocalDate startDate;
	private LocalDate endDate;
	private String reason;
	private String status;
	private LocalDate appliedDate;
	
	
	
	public LeaveRequest() {
		super();
	}



	public LeaveRequest(int leaveId, int employeeId, String leaveType, LocalDate startDate, LocalDate endDate,
			String reason, String status, LocalDate appliedDate) {
		super();
		this.leaveId = leaveId;
		this.employeeId = employeeId;
		this.leaveType = leaveType;
		this.startDate = startDate;
		this.endDate = endDate;
		this.reason = reason;
		this.status = status;
		this.appliedDate = appliedDate;
	}



	public int getLeaveId() {
		return leaveId;
	}



	public void setLeaveId(int leaveId) {
		this.leaveId = leaveId;
	}



	public int getEmployeeId() {
		return employeeId;
	}



	public void setEmployeeId(int employeeId) {
		this.employeeId = employeeId;
	}



	public String getLeaveType() {
		return leaveType;
	}



	public void setLeaveType(String leaveType) {
		this.leaveType = leaveType;
	}



	public LocalDate getStartDate() {
		return startDate;
	}



	public void setStartDate(LocalDate startDate) {
		this.startDate = startDate;
	}



	public LocalDate getEndDate() {
		return endDate;
	}



	public void setEndDate(LocalDate endDate) {
		this.endDate = endDate;
	}



	public String getReason() {
		return reason;
	}



	public void setReason(String reason) {
		this.reason = reason;
	}



	public String getStatus() {
		return status;
	}



	public void setStatus(String status) {
		this.status = status;
	}



	public LocalDate getAppliedDate() {
		return appliedDate;
	}



	public void setAppliedDate(LocalDate appliedDate) {
		this.appliedDate = appliedDate;
	}
	
	

}
