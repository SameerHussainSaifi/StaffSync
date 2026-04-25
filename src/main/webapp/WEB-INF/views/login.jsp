<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/css/login.css">
</head>
<body>
<div class="login-container">

    <h2>Login</h2>

    <form action="/authenticateLogin" method="post">

        <div class="input-group">
            <label>Email</label>
            <input type="email" name="email" placeholder="Enter your email" required>
        </div>

        <div class="input-group">
            <label>Password</label>
            <input type="password" name="password" placeholder="Enter your password" required>
        </div>

       <!--   <div class="input-group">
            <label>Role</label>
            <select name="role" required>
                <option value="">Select Role</option>
                <option value="admin">Admin</option>
                <option value="employee">Employee</option>
                <option value="hr">HR</option>
            </select>
        </div>-->

        <button type="submit" class="login-btn">Login</button>

    </form>

</div>
</body>
</html>