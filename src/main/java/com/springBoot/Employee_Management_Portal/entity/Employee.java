package com.springBoot.Employee_Management_Portal.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="employee")
public class Employee {

	@Id
	@Column(name="employeeId")
    private int employeeId;

	@Column(name="name")
    private String name;

	@Column(name="email")
    private String email;

	@Column(name="department")
    private String department;

	@Column(name="designation")
    private String designation;

	@Column(name="salary")
    private double salary;

	@Column(name="phone")
    private String phone;

	public Employee(int employeeId, String name, String email, String department, String designation, double salary,
			String phone) {
		super();
		this.employeeId = employeeId;
		this.name = name;
		this.email = email;
		this.department = department;
		this.designation = designation;
		this.salary = salary;
		this.phone = phone;
	}

	public Employee() {
		super();
	}

	public int getEmployeeId() {
		return employeeId;
	}

	public void setEmployeeId(int employeeId) {
		this.employeeId = employeeId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public String getDesignation() {
		return designation;
	}

	public void setDesignation(String designation) {
		this.designation = designation;
	}

	public double getSalary() {
		return salary;
	}

	public void setSalary(double salary) {
		this.salary = salary;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	

}
