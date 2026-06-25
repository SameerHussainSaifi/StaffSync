<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Leave Status</title>

<link rel="stylesheet" href="/css/employeeLeaveStatus.css">

</head>
<body>

<div class="container">

    <h2>My Leave Request Status</h2>

    <c:if test="${empty leaveRequests}">
        <h3>No leave requests found.</h3>
    </c:if>

    <c:forEach var="leaveRequest" items="${leaveRequests}">

        <div class="leave-card">

            <div class="row">
                <span class="label">Leave ID:</span>
                <span>${leaveRequest.leaveId}</span>
            </div>

            <div class="row">
                <span class="label">Employee ID:</span>
                <span>${leaveRequest.employeeId}</span>
            </div>

            <div class="row">
                <span class="label">Leave Type:</span>
                <span>${leaveRequest.leaveType}</span>
            </div>

            <div class="row">
                <span class="label">Start Date:</span>
                <span>${leaveRequest.startDate}</span>
            </div>

            <div class="row">
                <span class="label">End Date:</span>
                <span>${leaveRequest.endDate}</span>
            </div>

            <div class="row">
                <span class="label">Reason:</span>
                <span>${leaveRequest.reason}</span>
            </div>

            <div class="row">
                <span class="label">Status:</span>
                <span class="status ${leaveRequest.status}">
                    ${leaveRequest.status}
                </span>
            </div>

        </div>

        <br>

    </c:forEach>

</div>

</body>
</html>