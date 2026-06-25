<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Admin Dashboard</title>

<link rel="stylesheet" href="/css/adminDashboard.css">

</head>

<body>

<!-- ================= NAVBAR ================= -->

<nav class="navbar">


<div class="nav-left">
    <h2>Admin Dashboard</h2>
    <span class="welcome-text">| Welcome ${admin.name}</span>
</div>

<div class="nav-right">

    <a href="/hr/add">
        <button class="add-btn">Add HR</button>
    </a>

    <a href="/admin/logout">
        <button class="logout-btn">Logout</button>
    </a>

</div>


</nav>

<!-- ================= SEARCH BAR ================= -->

<div class="search-container">

<form action="/employee/search" method="get">

    <input type="text" name="name" placeholder="Search employee by name">

    <button type="submit">Search</button>

</form>

</div>

<!-- ================= HR SECTION ================= -->

<section class="dashboard-section">

<h2 class="section-title">HR Team</h2>

<div class="card-container">

<c:forEach var="hr" items="${hrs}">

<div class="card">

<div class="card-header">
<h3>${hr.name}</h3>
</div>

<div class="card-body">

<p><b>ID :</b> ${hr.hrId}</p>
<p><b>Email :</b> ${hr.email}</p>
<p><b>Phone :</b> ${hr.phone}</p>

</div>

<div class="card-footer">

<a href="/hr/update/${hr.hrId}">
<button class="update-btn">Update</button>
</a>

<a href="/hr/delete/${hr.hrId}">
<button class="delete-btn">Delete</button>
</a>

</div>

</div>

</c:forEach>

</div>

</section>

<!-- ================= EMPLOYEE SECTION ================= -->

<section class="dashboard-section">

<h2 class="section-title">Employees</h2>

<div class="card-container">

<c:forEach var="emp" items="${employees}">

<div class="card">

<div class="card-header">
<h3>${emp.name}</h3>
</div>

<div class="card-body">

<p><b>ID :</b> ${emp.employeeId}</p>
<p><b>Email :</b> ${emp.email}</p>
<p><b>Department :</b> ${emp.department}</p>
<p><b>Designation :</b> ${emp.designation}</p>
<p><b>Salary :</b> ₹${emp.salary}</p>
<p><b>Phone :</b> ${emp.phone}</p>

</div>

<div class="card-footer">

<a href="/employee/update/${emp.employeeId}">
<button class="update-btn">Update</button>
</a>

<a href="/employee/delete/${emp.employeeId}">
<button class="delete-btn">Delete</button>
</a>

</div>

</div>

</c:forEach>

</div>

</section>

</body>
</html>
