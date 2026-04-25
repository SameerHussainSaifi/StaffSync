<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Admin Registration</title>

<link rel="stylesheet" href="/css/adminRegister.css">

</head>

<body>

<div class="container">

<h1>Admin Registration</h1>

<form action="/admin/save" method="Post">

<div class="form-group">
<label>Name</label>
<input type="text" name="name" required>
</div>

<div class="form-group">
<label>Email</label>
<input type="email" name="email" required>
</div>

<div class="form-group">
<label>Password</label>
<input type="password" name="password" required>
</div>

<div class="form-group">
<label>Phone</label>
<input type="text" name="phone" required>
</div>

<div class="form-group">
<label>Role</label>
<select name="role">
<option value="ADMIN">ADMIN</option>
<option value="SUPER_ADMIN">SUPER ADMIN</option>
</select>
</div>

<button type="submit">Register Admin</button>

</form>

</div>

</body>
</html>