<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>StaffSync | Employee Management Portal</title>

<link rel="stylesheet" href="/css/home.css">

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css">

</head>

<body>

<!-- ================= NAVBAR ================= -->

<nav class="navbar">

    <div class="logo-section">

        

        <h2>StaffSync</h2>

    </div>

    <ul class="nav-links" id="navLinks">

        <li><a href="#home">Home</a></li>

        <li><a href="#features">Features</a></li>

        <li><a href="#workflow">Workflow</a></li>

        <li><a href="#about">About</a></li>

        <li>
            <a href="/login" class="primary-btn">

            <i class="fas fa-right-to-bracket"></i>

            Login

        </a>
        </li>

        

    </ul>

    <div class="hamburger" id="hamburger">

        <span></span>

        <span></span>

        <span></span>

    </div>

</nav>

<!-- ================= HERO SECTION ================= -->

<section class="hero" id="home">

    <div class="hero-content">

        <span class="hero-tag">

            Employee Management Simplified

        </span>

        <h1>

            Smart Employee Management

            <br>

            For Modern Organizations

        </h1>

        <p>

            StaffSync is a secure Employee Management Portal that enables
            organizations to manage HR operations, employee records,
            leave requests and workforce management from one centralized platform.

        </p>

        <div class="hero-buttons">

            <a href="/login" class="primary-btn">

                <i class="fa-solid fa-arrow-right"></i>

                Get Started

            </a>

            

        </div>

    </div>

</section>

<!-- ================= FEATURES ================= -->

<section class="features" id="features">

    <div class="section-title">

        <h2>Powerful Features</h2>

        <p>

            Everything your organization needs to efficiently manage employees
            from one secure platform.

        </p>

    </div>

    <div class="feature-grid">

        <div class="feature-card">

            <i class="fas fa-user-shield"></i>

            <h3>Admin Management</h3>

            <p>

                Admin manages HR accounts,
                monitors organizational activities,
                and controls the complete system.

            </p>

        </div>

        <div class="feature-card">

            <i class="fas fa-users"></i>

            <h3>HR Management</h3>

            <p>

                HR registers employees,
                manages departments,
                updates salaries,
                and maintains employee records.

            </p>

        </div>

        <div class="feature-card">

            <i class="fas fa-user-plus"></i>

            <h3>Employee Onboarding</h3>

            <p>

                Employees cannot register themselves.
                Only HR can create employee accounts,
                ensuring secure onboarding.

            </p>

        </div>

        <div class="feature-card">

            <i class="fas fa-user-pen"></i>

            <h3>Profile Management</h3>

            <p>

                Employees can update their personal details,
                while salary and designation remain under HR control.

            </p>

        </div>

        <div class="feature-card">

            <i class="fas fa-calendar-check"></i>

            <h3>Leave Management</h3>

            <p>

                Employees apply for leave,
                track approval status,
                while HR approves or rejects requests.

            </p>

        </div>

        <div class="feature-card">

            <i class="fas fa-lock"></i>

            <h3>Role-Based Security</h3>

            <p>

                Secure authentication with
                Admin,
                HR,
                and Employee access control.

            </p>

        </div>

        <div class="feature-card">

            <i class="fas fa-money-check-dollar"></i>

            <h3>Employee Record Management</h3>

            <p>

                HR manages salaries,
                departments,
                employee records,
                and organizational information.

            </p>

        </div>

        <div class="feature-card">

            <i class="fas fa-chart-line"></i>

            <h3>Central Dashboard</h3>

            <p>

                Access all employee,
                HR,
                and organizational information
                through one centralized dashboard.

            </p>

        </div>

    </div>

</section>

<!-- ====== CONTINUE WITH PART 2 BELOW ====== -->

<!-- ================= WORKFLOW ================= -->

<section class="workflow" id="workflow">

    <div class="section-title">
        <h2>How StaffSync Works</h2>
        <p>
            A structured hierarchy ensures secure and efficient employee management.
        </p>
    </div>

    <div class="workflow-container">

        <div class="workflow-card">
            <i class="fas fa-user-shield"></i>
            <h3>Admin</h3>
            <p>
                Creates HR accounts, manages HR information,
                monitors organizational activities and has
                complete control over the system.
            </p>
        </div>

        <div class="workflow-arrow">
            <i class="fas fa-arrow-right"></i>
        </div>

        <div class="workflow-card">
            <i class="fas fa-users"></i>
            <h3>HR</h3>
            <p>
                Registers employees, manages departments,
                updates salaries, processes leave requests
                and maintains employee records.
            </p>
        </div>

        <div class="workflow-arrow">
            <i class="fas fa-arrow-right"></i>
        </div>

        <div class="workflow-card">
            <i class="fas fa-user"></i>
            <h3>Employee</h3>
            <p>
                Updates personal information,
                applies for leave,
                and tracks leave approval status
                through a secure dashboard.
            </p>
        </div>

    </div>

</section>

<!-- ================= ABOUT ================= -->

<section class="about" id="about">

    <div class="section-title">

        <h2>About StaffSync</h2>

        <p>
            StaffSync is designed to solve common workforce management challenges
            faced by organizations.
        </p>

    </div>

    <div class="about-content">

        <div class="about-text">

            <h3>Why StaffSync?</h3>

            <p>

                Many organizations still rely on spreadsheets,
                paperwork and disconnected systems to manage
                employee information. These traditional approaches
                are slow, difficult to maintain and prone to errors.

            </p>

            <p>

                StaffSync replaces manual processes with a centralized,
                secure and role-based Employee Management Portal.
                It streamlines employee management,
                improves data accuracy,
                and provides a better experience for Admins,
                HR professionals and Employees.

            </p>

        </div>

        <div class="about-list">

            <div class="about-item">
                <i class="fas fa-check-circle"></i>
                <span>Secure Admin → HR → Employee hierarchy.</span>
            </div>

            <div class="about-item">
                <i class="fas fa-check-circle"></i>
                <span>Only HR can register employees.</span>
            </div>

            <div class="about-item">
                <i class="fas fa-check-circle"></i>
                <span>Employees update only personal information.</span>
            </div>

            <div class="about-item">
                <i class="fas fa-check-circle"></i>
                <span>Digital leave request & approval workflow.</span>
            </div>

            <div class="about-item">
                <i class="fas fa-check-circle"></i>
                <span>Role-based authentication for enhanced security.</span>
            </div>

            <div class="about-item">
                <i class="fas fa-check-circle"></i>
                <span>Centralized employee record management.</span>
            </div>

            <div class="about-item">
                <i class="fas fa-check-circle"></i>
                <span>Reduces paperwork and manual data handling.</span>
            </div>

            <div class="about-item">
                <i class="fas fa-check-circle"></i>
                <span>Improves HR productivity and organizational efficiency.</span>
            </div>

        </div>

    </div>

</section>

<!-- ================= STATISTICS ================= -->

<section class="statistics">

    <div class="stat-card">

        <h2 class="counter" data-target="3">0</h2>

        <p>User Roles</p>

    </div>

    <div class="stat-card">

        <h2 class="counter" data-target="8">0</h2>

        <p>Core Features</p>

    </div>

    <div class="stat-card">

        <h2 class="counter" data-target="100">0</h2>

        <p>Role-Based Security</p>

    </div>

    <div class="stat-card">

        <h2 class="counter" data-target="24">0</h2>

        <p>Available Anytime</p>

    </div>

</section>

<!-- ================= CALL TO ACTION ================= -->

<section class="cta">

    <h2>Ready to Manage Your Workforce Smarter?</h2>

    <p>

        Join StaffSync and experience secure,
        centralized and efficient employee management.

    </p>

    <div class="cta-buttons">

        <a href="/login" class="primary-btn">

            <i class="fas fa-right-to-bracket"></i>

            Login

        </a>

        

    </div>

</section>

<!-- ================= FOOTER ================= -->

<footer>

    <div class="footer-container">

        <div class="footer-logo">

            <img src="/images/logo.png" class="logo" alt="Logo">

            <h3>StaffSync</h3>

            <p>

                A secure and centralized Employee Management Portal
                designed to simplify workforce management.

            </p>

        </div>

        <div class="footer-links">

            <h4>Quick Links</h4>

            <a href="#home">Home</a>

            <a href="#features">Features</a>

            <a href="#workflow">Workflow</a>

            <a href="#about">About</a>

        </div>

        <div class="footer-contact">

            <h4>Portal</h4>

            <p>Employee Management System</p>

            <p>Role-Based Authentication</p>

            <p>Leave Management</p>

        </div>

    </div>

    <hr>

    <div class="copyright">

        © 2026 StaffSync | Employee Management Portal | Developed by Sameer Saifi

    </div>

</footer>

<!-- ================= JAVASCRIPT ================= -->

<script src="/js/home.js"></script>

</body>

</html>