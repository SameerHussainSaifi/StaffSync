<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="jakarta.tags.core"%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">

<meta name="viewport"
content="width=device-width, initial-scale=1.0">

<title>StaffSync | HR Dashboard</title>

<link rel="stylesheet"
href="/css/hrDashboard.css">

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
rel="stylesheet">

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css">

</head>

<body>

<!--================ BACKGROUND ================-->

<div class="background">

    <div class="overlay"></div>

</div>

<!--================ NAVBAR ================-->

<nav class="navbar">

    <div class="logo-section">

       

        <div>

            <h2>StaffSync</h2>

            <span>HR Portal</span>

        </div>

    </div>

    <a href="/hr/logout" class="logout-link">

        <i class="fa-solid fa-right-from-bracket"></i>

        Logout

    </a>

</nav>

<!--================ DASHBOARD ================-->

<div class="dashboard-container">

    <!--================ HERO ================-->

    <section class="dashboard-hero">

        <div class="hero-left">

            <h1>

                Welcome Back,

                <span>${hr.name}</span>

            </h1>

            <p>

                Manage employees, monitor leave requests,
                maintain workforce records and perform HR
                operations from one centralized dashboard.

            </p>

        </div>

        <div class="hero-avatar">

            <div class="avatar-circle">

                <i class="fa-solid fa-user-tie"></i>

            </div>

        </div>

    </section>

    <!--================ QUICK ACTIONS ================-->

    <section class="quick-actions">

        <div class="section-heading">

            <h2>

                <i class="fa-solid fa-bolt"></i>

                Quick Actions

            </h2>

            <p>

                Frequently used HR operations.

            </p>

        </div>

        <div class="action-grid">

            <!-- Add Employee -->

            <a href="/employee/add" class="action-card">

                <div class="action-icon">

                    <i class="fa-solid fa-user-plus"></i>

                </div>

                <h3>Add Employee</h3>

                <p>

                    Register a new employee
                    into the organization.

                </p>

            </a>

            <!-- Leave Requests -->

            <a href="/hr/manage/leaveRequests"
               class="action-card">

                <div class="action-icon">

                    <i class="fa-solid fa-calendar-check"></i>

                </div>

                <h3>Leave Requests</h3>

                <p>

                    Approve or reject employee
                    leave applications.

                </p>

            </a>

            <!-- Apply Leave -->

            <a href="/hr/leave/apply"
               class="action-card">

                <div class="action-icon">

                    <i class="fa-solid fa-paper-plane"></i>

                </div>

                <h3>Apply Leave</h3>

                <p>

                    Submit your own leave request.

                </p>

            </a>

            <!-- My Requests -->

            <a href="/leave/myRequests"
               class="action-card">

                <div class="action-icon">

                    <i class="fa-solid fa-list-check"></i>

                </div>

                <h3>My Requests</h3>

                <p>

                    Track your submitted
                    leave requests.

                </p>

            </a>

        </div>

    </section>

    <!--================ SEARCH ================-->

    <section class="search-section">

        <div class="search-box">

            <h2>

                <i class="fa-solid fa-magnifying-glass"></i>

                Search Employee

            </h2>

            <form action="/employee/search" method="get">

                <input
                    type="text"
                    name="name"
                    placeholder="Search employee by name">

                <button type="submit">

                    <i class="fa-solid fa-search"></i>

                    Search

                </button>

            </form>

        </div>

    </section>

    <!--================ EMPLOYEE DIRECTORY ================-->

    <section class="employee-section">

        <div class="section-heading">

            <h2>

                <i class="fa-solid fa-users"></i>

                Employee Directory

            </h2>

            <p>

                Manage employee information
                from one centralized dashboard.

            </p>

        </div>

        <div class="employee-grid">

<c:forEach var="emp" items="${employees}">

<div class="employee-card">

<div class="card-header">

<h3>${emp.name}</h3>

<span class="status active">

Active

</span>

</div>

<div class="employee-info">

<div class="info-row">

<span>Employee ID</span>

<strong>${emp.employeeId}</strong>

</div>

<div class="info-row">

<span>Email</span>

<strong>${emp.email}</strong>

</div>

<div class="info-row">

<span>Department</span>

<strong>${emp.department}</strong>

</div>

<div class="info-row">

<span>Designation</span>

<strong>${emp.designation}</strong>

</div>

<div class="info-row">

<span>Salary</span>

<strong>₹ ${emp.salary}</strong>

</div>

<div class="info-row">

<span>Phone</span>

<strong>${emp.phone}</strong>

</div>

<div class="employee-actions">
	
	                    <a href="/employee/update/${emp.employeeId}"
	                       class="action-btn update-action">

	                        <i class="fa-solid fa-pen-to-square"></i>

	                        Update

	                    </a>

	                    <a href="/employee/delete/${emp.employeeId}"
	                       class="action-btn delete-action"
	                       onclick="return confirm('Are you sure you want to delete this employee?');">

	                        <i class="fa-solid fa-trash"></i>

	                        Delete

	                    </a>

	                </div>

	            </div>

	        </div>

	</c:forEach>

	        </div>

	    </section>

	    <!--================ DASHBOARD INFO ================-->

	    <section class="dashboard-info">

	        <div class="info-box">

	            <i class="fa-solid fa-user-group"></i>

	            <div>

	                <h3>Employee Management</h3>

	                <p>

	                    Register employees, update employee details,
	                    manage departments and maintain workforce records
	                    from a centralized HR dashboard.

	                </p>

	            </div>

	        </div>

	        <div class="info-box">

	            <i class="fa-solid fa-calendar-days"></i>

	            <div>

	                <h3>Leave Administration</h3>

	                <p>

	                    Review employee leave applications,
	                    approve or reject requests,
	                    and monitor your own leave requests.

	                </p>

	            </div>

	        </div>

	        <div class="info-box">

	            <i class="fa-solid fa-shield-halved"></i>

	            <div>

	                <h3>Secure HR Access</h3>

	                <p>

	                    StaffSync provides role-based authentication
	                    to ensure secure and authorized access
	                    to HR operations.

	                </p>

	            </div>

	        </div>

	    </section>

	</div>

	<!--================ FOOTER ================-->

	<footer>

	    <div class="footer-content">

	        <p>

	            © 2026 StaffSync • HR Management Portal

	        </p>

	        <p>

	            Secure • Reliable • Employee Management System

	        </p>

	    </div>

	</footer>

	<script src="/js/hrDashboard.js"></script>

	</body>

	</html>