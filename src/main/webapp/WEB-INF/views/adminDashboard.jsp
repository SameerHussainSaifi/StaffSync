<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="jakarta.tags.core"%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">

<meta name="viewport"
content="width=device-width, initial-scale=1.0">

<title>StaffSync | Admin Dashboard</title>

<link rel="stylesheet"
href="/css/adminDashboard.css">

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
rel="stylesheet">

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css">

</head>

<body>

<!--================ PREMIUM BACKGROUND ================-->

<div class="background">
    <div class="overlay"></div>
</div>

<!--================ NAVBAR ================-->

<nav class="navbar">

    <div class="logo-section">

        

        <div>

            <h2>StaffSync</h2>

            <span>Administrator Portal</span>

        </div>

    </div>

    <a href="/admin/logout" class="logout-link">

        <i class="fa-solid fa-right-from-bracket"></i>

        Logout

    </a>

</nav>

<div class="dashboard-container">

<!--================ HERO SECTION ================-->

<section class="dashboard-hero">

    <div class="hero-left">

        <h1>

            Welcome Back,

            <span>${admin.name}</span>

        </h1>

        <p>

            Manage HR teams, monitor employees,
            maintain workforce records and control
            your complete organization from one
            centralized StaffSync Admin Dashboard.

        </p>

    </div>

    <div class="hero-avatar">

        <div class="avatar-circle">

            <i class="fa-solid fa-user-shield"></i>

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

            Frequently used administrator operations.

        </p>

    </div>

    <div class="action-grid">

        <!-- ADD HR -->

        <a href="/hr/add" class="action-card">

            <div class="action-icon">

                <i class="fa-solid fa-user-plus"></i>

            </div>

            <h3>Add HR</h3>

            <p>

                Register a new HR and provide
                access to the StaffSync system.

            </p>

        </a>

        <!-- SEARCH -->

        <a href="#employee-search" class="action-card">

            <div class="action-icon">

                <i class="fa-solid fa-magnifying-glass"></i>

            </div>

            <h3>Search Employee</h3>

            <p>

                Quickly search any employee
                using their name.

            </p>

        </a>

        <!-- HR TEAM -->

        <a href="#hr-team" class="action-card">

            <div class="action-icon">

                <i class="fa-solid fa-users"></i>

            </div>

            <h3>Manage HR</h3>

            <p>

                View, update and maintain
                all HR records.

            </p>

        </a>

        <!-- EMPLOYEE -->

        <a href="#employee-list" class="action-card">

            <div class="action-icon">

                <i class="fa-solid fa-id-card"></i>

            </div>

            <h3>Employees</h3>

            <p>

                Monitor employee information
                across the organization.

            </p>

        </a>

    </div>

</section>

<!--================ SEARCH ================-->

<section
id="employee-search"
class="search-section">

    <div class="search-box">

        <h2>

            <i class="fa-solid fa-magnifying-glass"></i>

            Search Employee

        </h2>

        <form action="/employee/search"
              method="get">

            <input

                type="text"

                name="name"

                placeholder="Search employee by name"

                required>

            <button type="submit">

                <i class="fa-solid fa-search"></i>

                Search

            </button>

        </form>

    </div>

</section>

<!--================ HR TEAM ================-->

<section
id="hr-team"
class="dashboard-section">

    <div class="section-heading">

        <h2>

            <i class="fa-solid fa-user-tie"></i>

            HR Team

        </h2>

        <p>

            Manage every HR member from
            one centralized dashboard.

        </p>

    </div>

    <div class="employee-grid">

<c:forEach var="hr" items="${hrs}">

<div class="employee-card">

<div class="card-header">

<h3>${hr.name}</h3>

<span class="status">

Active

</span>

</div>

<div class="employee-info">

<div class="info-row">

<span>HR ID</span>

<strong>${hr.hrId}</strong>

</div>

<div class="info-row">

<span>Email</span>

<strong>${hr.email}</strong>

</div>

<div class="info-row">

<span>Phone</span>

<strong>${hr.phone}</strong>

</div>

<div class="employee-actions">

                <a href="/hr/update/${hr.hrId}"
                   class="action-btn update-action">

                    <i class="fa-solid fa-pen-to-square"></i>

                    Update

                </a>

                <a href="/hr/delete/${hr.hrId}"
                   class="action-btn delete-action"
                   onclick="return confirm('Are you sure you want to delete this HR?');">

                    <i class="fa-solid fa-trash"></i>

                    Delete

                </a>

            </div>

        </div>

    </div>

</c:forEach>

    </div>

</section>

<!--================ EMPLOYEE DIRECTORY ================-->

<section
id="employee-list"
class="dashboard-section">

    <div class="section-heading">

        <h2>

            <i class="fa-solid fa-users"></i>

            Employee Directory

        </h2>

        <p>

            View and manage all employees
            across the organization.

        </p>

    </div>

    <div class="employee-grid">

<c:forEach var="emp" items="${employees}">

<div class="employee-card">

    <div class="card-header">

        <h3>${emp.name}</h3>

        <span class="status">

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

        <i class="fa-solid fa-building"></i>

        <div>

            <h3>Organization Management</h3>

            <p>

                Manage the complete organization
                from a single centralized dashboard
                with secure administrative control.

            </p>

        </div>

    </div>

    <div class="info-box">

        <i class="fa-solid fa-user-tie"></i>

        <div>

            <h3>HR Administration</h3>

            <p>

                Register, update and maintain HR
                accounts while monitoring workforce
                activities across departments.

            </p>

        </div>

    </div>

    <div class="info-box">

        <i class="fa-solid fa-shield-halved"></i>

        <div>

            <h3>Secure Role-Based Access</h3>

            <p>

                StaffSync uses role-based
                authentication to ensure
                secure access for every user.

            </p>

        </div>

    </div>

</section>

</div>

<!--================ FOOTER ================-->

<footer>

    <div class="footer-content">

        <p>

            © 2026 StaffSync • Employee Management Portal

        </p>

        <p>

            Administrator Dashboard • Secure • Reliable • Enterprise Ready

        </p>

    </div>

</footer>

<script src="/js/adminDashboard.js"></script>

</body>

</html>