package com.staffSync.StaffSync.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="hr")
public class HR {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="hrid")
    private int hrId;

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
	
	@Column(name="password")
	private String password;
	
	@Column(name="role")
	private String role;

	public HR(int hrId, String name, String email, String department, String designation, double salary,
			String phone, String password, String role) {
		super();
		this.hrId=hrId;
		this.name = name;
		this.email = email;
		this.department = department;
		this.designation = designation;
		this.salary = salary;
		this.phone = phone;
		this.password=password;
		this.role=role;
	}

	public HR() {
		super();
	}

	public int getHrId() {
		return hrId;
	}

	public void setHrId(int hrId) {
		this.hrId = hrId;
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
    
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}
	
	

}
