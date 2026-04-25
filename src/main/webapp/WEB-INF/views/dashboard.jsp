<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Dashboard</title>

<link rel="stylesheet" href="/css/dashboard.css">

</head>

<body>

<!-- NAVBAR -->

<nav class="navbar">

    <div class="nav-left">
        <h2>Employee Dashboard</h2>
        <span class="welcome-text">| Welcome ${admin.name}</span>
    </div>

    <div class="nav-right">

        <a href="/employee/add">
            <button class="add-btn">Add Employee</button>
        </a>

        <a href="/admin/logout">
            <button class="logout-btn">Logout</button>
        </a>

    </div>

</nav>

<!-- SEARCH BAR -->

<div class="search-container">

<form action="/employee/search" method="get">

<input type="text" name="name" placeholder="Search employee by name">

<button type="submit">Search</button>

</form>

</div>

<!-- EMPLOYEE CARDS -->

<div class="card-container">

<c:forEach var="emp" items="${employees}">

<div class="employee-card">

<h3>${emp.name}</h3>

<p><b>ID:</b> ${emp.employeeId}</p>
<p><b>Email:</b> ${emp.email}</p>
<p><b>Department:</b> ${emp.department}</p>
<p><b>Designation:</b> ${emp.designation}</p>
<p><b>Salary:</b> ₹${emp.salary}</p>
<p><b>Phone:</b> ${emp.phone}</p>

<div class="button-group">

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



</body>
</html>