<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>StaffSync | Login</title>

<link rel="stylesheet" href="/css/login.css">

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css">

</head>

<body>

<!-- ================= BACKGROUND ================= -->

<div class="background">

    <div class="overlay"></div>

</div>

<!-- ================= LOGIN CONTAINER ================= -->

<div class="login-wrapper">

    <div class="login-card">

        <!-- ================= LOGO ================= -->

        <div class="logo-section">

            

            <h2>StaffSync</h2>

            <p>

                Employee Management Portal

            </p>

        </div>

        <!-- ================= LOGIN TITLE ================= -->

        <div class="login-header">

            <h1>Welcome Back 👋</h1>

            <p>

                Sign in to continue managing your organization.

            </p>

        </div>

        <!-- ================= LOGIN FORM ================= -->

        <form action="/authenticateLogin" method="post">

            <!-- EMAIL -->

            <div class="input-group">

                <label>Email Address</label>

                <div class="input-box">

                    <i class="fa-solid fa-envelope"></i>

                    <input
                        type="email"
                        name="email"
                        placeholder="Enter your email"
                        required>

                </div>

            </div>

            <!-- PASSWORD -->

            <div class="input-group">

                <label>Password</label>

                <div class="input-box">

                    <i class="fa-solid fa-lock"></i>

                    <input
                        type="password"
                        name="password"
                        placeholder="Enter your password"
                        required>

                </div>

            </div>

            <!-- LOGIN BUTTON -->

            <button type="submit" class="login-btn">

                <i class="fa-solid fa-right-to-bracket"></i>

                Login

            </button>

        </form>

        <!-- REGISTER TEXT -->

        <div class="register-text">

            <p>

                New to StaffSync?

                <a href="/admin/register">

                    Register as Admin

                </a>

            </p>

        </div>

        <!-- DIVIDER -->

        <div class="divider">

            <span></span>

            <p>OR</p>

            <span></span>

        </div>

        <!-- HOME LINK -->

        <div class="back-home">

            <a href="/">

                <i class="fa-solid fa-house"></i>

                Back to Home

            </a>

        </div>

    </div>

</div>

<script src="/js/login.js"></script>

</body>

</html>