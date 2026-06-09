<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/css/employeeDashboard.css">
</head>
<body>
<div class="header">
    Employee Dashboard
</div>

<div class="container">

    <div class="card-container">

        <div class="card">
            <h3>Profile Information</h3>
            <p><b>ID:</b> ${employee.employeeId}</p>
            <p><b>Name:</b> ${employee.name}</p>
            <p><b>Email:</b> ${employee.email}</p>
            <p><b>Phone:</b> ${employee.phone}</p>
        </div>

        <div class="card">
            <h3>Job Information</h3>
            <p><b>Department:</b> ${employee.department}</p>
            <p><b>Designation:</b> ${employee.designation}</p>
            <p><b>Salary:</b> ₹${employee.salary}</p>
        </div>

        <div class="card">
            <h3>Account</h3>
            <p><b>Role:</b> ${employee.role}</p>
        </div>
		
		<div class="card">
		    <h3>Leave Management</h3>
		    <p>Apply for leave and track your leave requests.</p>

		    <div class="leave-btn-container">
		        <a href="/apply/leave">
		            <button class="leave-btn">Apply Leave</button>
		        </a>

		        <a href="/leave/my-leaves/${employee.employeeId}">
		            <button class="view-leave-btn">My Leave Requests</button>
		        </a>
		    </div>
		</div>

    </div>

    <div class="btn-container">
        <a href="/employee/update/${employee.employeeId}">
            <button class="update-btn">Update Profile</button>
        </a>

        <a href="/employeeLogout">
            <button class="logout-btn">Logout</button>
        </a>
    </div>

</div>
</body>
</html>