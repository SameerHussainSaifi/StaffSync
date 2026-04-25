<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Admin Login</title>
    <link rel="stylesheet" type="text/css" href="/css/adminLogin.css">
</head>
<body>
    <div class="login-container">
        <h1>Admin Login</h1>
        <c:if test="${not empty message}">
<script>
    alert("${message}");
</script>
</c:if>
        <form action="/admin/login" method="post" class="login-form">
            <label>Email</label>
            <input type="email" name="email" placeholder="Enter Email" required/>

            <label>Password</label>
            <input type="password" name="password" placeholder="Enter password" required/>

            <button type="submit">Login</button>
        </form>
    </div>
</body>
</html>