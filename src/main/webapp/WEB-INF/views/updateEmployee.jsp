<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Employee</title>
<link rel="stylesheet" href="/css/updateEmployee.css">
</head>

<body>

<div class="container">

<h2>Update Employee</h2>

<form action="/employee/update" method="post">

<input type="hidden" name="employeeId" value="${employee.employeeId}">

<div class="form-group">
<label>Name</label>
<input type="text" name="name" value="${employee.name}" required>
</div>

<div class="form-group">
<label>Email</label>
<input type="email" name="email" value="${employee.email}" required>
</div>

<div class="form-group">
<label>Department</label>
<input type="text" name="department" value="${employee.department}"
${loggedInRole.role == 'employee' ? 'readonly="readonly"' : ''} required>
</div>

<div class="form-group">
<label>Designation</label>
<input type="text" name="designation" value="${employee.designation}"
${loggedInRole.role == 'employee' ? 'readonly="readonly"' : ''} required>
</div>

<div class="form-group">
<label>Salary</label>
<input type="number" name="salary" value="${employee.salary}"
${loggedInRole.role == 'employee' ? 'readonly="readonly"' : ''} required>
</div>

<div class="form-group">
<label>Phone</label>
<input type="text" name="phone" value="${employee.phone}" required>
</div>

<button type="submit">Update Profile</button>

</form>

</div>

</body>
</html>