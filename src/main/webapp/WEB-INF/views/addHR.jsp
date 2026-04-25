<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add HR</title>

<link rel="stylesheet" href="/css/addHR.css">

</head>

<body>

<!-- NAVBAR -->
<nav class="navbar">

    <div class="nav-left">
        <h2>Employee Management Potal</h2>
    </div>

    <div class="nav-right">
        <a href="/admin/dashboard">
            <button class="back-btn">Back to Dashboard</button>
        </a>
    </div>

</nav>


<!-- FORM CONTAINER -->

<div class="form-container">

<h1>Add HR</h1>

<form action="/hr/save" method="post">

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

<div class="form-group">
<label>Password</label>
<input type="text" name="password" required>
</div>

<div class="form-group">
<label>Role</label>
<select name="role">
<option value="HR" selected>HR</option>
</select>
</div>

<button type="submit" class="save-btn">Save HR</button>

</form>

</div>

</body>
</html>