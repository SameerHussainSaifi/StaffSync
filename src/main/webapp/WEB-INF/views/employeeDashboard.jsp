<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>StaffSync | Employee Dashboard</title>

<link rel="stylesheet" href="/css/employeeDashboard.css">

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">

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

            <span>Employee Portal</span>

        </div>

    </div>

    <div class="nav-right">

        <a href="/employeeLogout" class="logout-link">

            <i class="fa-solid fa-right-from-bracket"></i>

            Logout

        </a>

    </div>

</nav>

<!--================ DASHBOARD ================-->

<div class="dashboard-container">

    <!--================ HERO ================-->

    <section class="dashboard-hero">

        <div class="hero-left">

            <h1>

                Welcome Back,

                <span>${employee.name}</span>

            </h1>

            <p>

                Manage your profile, view your employment information,
                update personal details and monitor leave requests
                from one secure dashboard.

            </p>

        </div>

        <div class="hero-avatar">

            <div class="avatar-circle">

                <i class="fa-solid fa-user"></i>

            </div>

        </div>

    </section>

    <!--================ INFORMATION CARDS ================-->

    <section class="cards">

        <!-- PROFILE -->

        <div class="dashboard-card">

            <div class="card-title">

                <i class="fa-solid fa-id-card"></i>

                <h3>Profile Information</h3>

            </div>

            <div class="card-body">

                <div class="info-row">

                    <span>Employee ID</span>

                    <strong>${employee.employeeId}</strong>

                </div>

                <div class="info-row">

                    <span>Name</span>

                    <strong>${employee.name}</strong>

                </div>

                <div class="info-row">

                    <span>Email</span>

                    <strong>${employee.email}</strong>

                </div>

                <div class="info-row">

                    <span>Phone</span>

                    <strong>${employee.phone}</strong>

                </div>

            </div>

        </div>

        <!-- JOB -->

        <div class="dashboard-card">

            <div class="card-title">

                <i class="fa-solid fa-briefcase"></i>

                <h3>Job Information</h3>

            </div>

            <div class="card-body">

                <div class="info-row">

                    <span>Department</span>

                    <strong>${employee.department}</strong>

                </div>

                <div class="info-row">

                    <span>Designation</span>

                    <strong>${employee.designation}</strong>

                </div>

                <div class="info-row">

                    <span>Salary</span>

                    <strong>₹ ${employee.salary}</strong>

                </div>

            </div>

        </div>

        <!-- ACCOUNT -->

        <div class="dashboard-card">

            <div class="card-title">

                <i class="fa-solid fa-user-shield"></i>

                <h3>Account Details</h3>

            </div>

            <div class="card-body">

                <div class="info-row">

                    <span>Role</span>

                    <strong>${employee.role}</strong>

                </div>

                <div class="info-row">

                    <span>Status</span>

                    <strong class="active-status">

                        Active

                    </strong>

                </div>

                <div class="info-row">

                    <span>Portal</span>

                    <strong>StaffSync</strong>

                </div>

            </div>

        </div>

        <!-- LEAVE -->

        <div class="dashboard-card">

            <div class="card-title">

                <i class="fa-solid fa-calendar-check"></i>

                <h3>Leave Management</h3>

            </div>

            <div class="card-body">

                <p class="leave-text">

                    Apply for leave and monitor all your submitted
                    leave requests from one place.

                </p>

                <div class="leave-buttons">

                    <a href="/employee/leave/apply" class="primary-action">

                        <i class="fa-solid fa-paper-plane"></i>

                        Apply Leave

                    </a>

                    <a href="/leave/status/${employee.employeeId}" class="secondary-action">

                        <i class="fa-solid fa-list-check"></i>

                        My Leave Requests

                    </a>

                </div>

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

		                Access the most frequently used features from one place.

		            </p>

		        </div>

		        <div class="action-grid">

		            <!-- UPDATE PROFILE -->

		            <a href="/employee/update/${employee.employeeId}" class="action-card">

		                <div class="action-icon">

		                    <i class="fa-solid fa-user-pen"></i>

		                </div>

		                <h3>Update Profile</h3>

		                <p>

		                    Update your personal information including
		                    contact details and other basic profile data.

		                </p>

		            </a>

		            <!-- APPLY LEAVE -->

		            <a href="/employee/leave/apply" class="action-card">

		                <div class="action-icon">

		                    <i class="fa-solid fa-calendar-plus"></i>

		                </div>

		                <h3>Apply Leave</h3>

		                <p>

		                    Submit a new leave request for approval
		                    from your HR department.

		                </p>

		            </a>

		            <!-- MY REQUESTS -->

		            <a href="/leave/status/${employee.employeeId}" class="action-card">

		                <div class="action-icon">

		                    <i class="fa-solid fa-list-check"></i>

		                </div>

		                <h3>My Leave Requests</h3>

		                <p>

		                    Track all your submitted leave requests
		                    along with their approval status.

		                </p>

		            </a>

		            <!-- LOGOUT -->

		            <a href="/employeeLogout" class="action-card logout-card">

		                <div class="action-icon">

		                    <i class="fa-solid fa-right-from-bracket"></i>

		                </div>

		                <h3>Logout</h3>

		                <p>

		                    Securely sign out from your StaffSync account.

		                </p>

		            </a>

		        </div>

		    </section>

		    <!--================ DASHBOARD INFO ================-->

		    <section class="dashboard-info">

		        <div class="info-box">

		            <i class="fa-solid fa-shield-halved"></i>

		            <div>

		                <h3>Secure Access</h3>

		                <p>

		                    Your employee account is protected through
		                    role-based authentication and authorization.

		                </p>

		            </div>

		        </div>

		        <div class="info-box">

		            <i class="fa-solid fa-users"></i>

		            <div>

		                <h3>HR Managed Records</h3>

		                <p>

		                    Salary, designation and department information
		                    are maintained by your HR team.

		                </p>

		            </div>

		        </div>

		        <div class="info-box">

		            <i class="fa-solid fa-pen-to-square"></i>

		            <div>

		                <h3>Profile Management</h3>

		                <p>

		                    You can update your personal details while
		                    organizational information is managed by HR.

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

		            Designed for secure employee and HR management.

		        </p>

		    </div>

		</footer>

		<script src="/js/employeeDashboard.js"></script>

		</body>
		</html>