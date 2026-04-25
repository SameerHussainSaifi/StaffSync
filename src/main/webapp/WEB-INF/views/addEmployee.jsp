<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Employee</title>

<link rel="stylesheet" href="/css/addEmployee.css">

</head>

<body>

<!-- NAVBAR -->
<nav class="navbar">

    <div class="nav-left">
        <h2>Employee Management Portal</h2>
    </div>

    <div class="nav-right">
        <a href="/admin/dashboard">
            <button class="back-btn">Back to Dashboard</button>
        </a>
    </div>

</nav>


<!-- FORM CONTAINER -->

<div class="form-container">

<h1>Add Employee</h1>

<form action="/employee/save" method="post">

<div class="form-group">
<label>Employee ID</label>
<input type="number" name="employeeId" required>
</div>

<div class="form-group">
<label>Name</label>
<input type="text" name="name" required>
</div>

<div class="form-group">
<label>Email</label>
<input type="email" name="email" required>
</div>

<div class="form-group">
<label>Department</label>
<input type="text" name="department" required>
</div>

<div class="form-group">
<label>Designation</label>
<input type="text" name="designation" required>
</div>

<div class="form-group">
<label>Salary</label>
<input type="number" step="0.01" name="salary" required>
</div>

<div class="form-group">
<label>Phone</label>
<input type="text" name="phone" required>
</div>

<button type="submit" class="save-btn">Save Employee</button>

</form>

</div>

</body>
</html>