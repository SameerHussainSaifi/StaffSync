<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>StaffSync | Admin Registration</title>

<link rel="stylesheet" href="/css/adminRegister.css">

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css">

</head>

<body>

<!-- ================= BACKGROUND ================= -->

<div class="background">

    <div class="overlay"></div>

</div>

<!-- ================= REGISTER CARD ================= -->

<div class="register-wrapper">

    <div class="register-card">

        <!-- ================= LOGO ================= -->

        <div class="logo-section">

           

            <h2>StaffSync</h2>

            <p>Employee Management Portal</p>

        </div>

        <!-- ================= HEADER ================= -->

        <div class="register-header">

            <h1>Create Administrator Account</h1>

            <p>

                Set up your organization by creating the first administrator account.

            </p>

        </div>

        <!-- ================= FORM ================= -->

        <form action="/admin/save" method="post">

            <!-- NAME -->

            <div class="form-group">

                <label>Full Name</label>

                <div class="input-box">

                    <i class="fa-solid fa-user"></i>

                    <input
                        type="text"
                        name="name"
                        placeholder="Enter your full name"
                        required>

                </div>

            </div>

            <!-- EMAIL -->

            <div class="form-group">

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

            <div class="form-group">

                <label>Password</label>

                <div class="input-box">

                    <i class="fa-solid fa-lock"></i>

                    <input
                        type="password"
                        id="password"
                        name="password"
                        placeholder="Create a strong password"
                        required>

                    <i class="fa-solid fa-eye toggle-password"
                       id="togglePassword"></i>

                </div>

            </div>

            <!-- PHONE -->

            <div class="form-group">

                <label>Phone Number</label>

                <div class="input-box">

                    <i class="fa-solid fa-phone"></i>

                    <input
                        type="tel"
                        name="phone"
                        placeholder="Enter phone number"
                        required>

                </div>

            </div>

            <!-- ROLE -->

            <div class="form-group">

                <label>Administrator Role</label>

                <div class="input-box">

                    <i class="fa-solid fa-user-shield"></i>

                    <select name="role" required>

                        <option value="ADMIN">Administrator</option>

                        <option value="SUPER_ADMIN">Super Administrator</option>

                    </select>

                </div>

            </div>

            <!-- REGISTER BUTTON -->

            <button type="submit" class="register-btn">

                <i class="fa-solid fa-user-plus"></i>

                Register Admin

            </button>
            
                        <!-- ================= LOGIN LINK ================= -->

            <div class="login-text">

                <p>

                    Already have an account?

                    <a href="/login">

                        Login

                    </a>

                </p>

            </div>

            <!-- ================= DIVIDER ================= -->

            <div class="divider">

                <span></span>

                <p>OR</p>

                <span></span>

            </div>

            <!-- ================= BACK HOME ================= -->

            <div class="back-home">

                <a href="/">

                    <i class="fa-solid fa-house"></i>

                    Back to Home

                </a>

            </div>

        </form>

    </div>

</div>

<script src="/js/adminRegister.js"></script>

</body>

</html>