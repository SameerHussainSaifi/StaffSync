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

    <c:if test="${empty leaveList}">
        <h3>No leave requests found.</h3>
    </c:if>

    <c:forEach var="leaveList" items="${leaveList}">

        <div class="leave-card">

            <div class="row">
                <span class="label">Leave ID:</span>
                <span>${leaveList.leaveId}</span>
            </div>

            <div class="row">
                <span class="label">HR ID:</span>
                <span>${leaveList.hrId}</span>
            </div>

            <div class="row">
                <span class="label">Leave Type:</span>
                <span>${leaveList.leaveType}</span>
            </div>

            <div class="row">
                <span class="label">Start Date:</span>
                <span>${leaveList.startDate}</span>
            </div>

            <div class="row">
                <span class="label">End Date:</span>
                <span>${leaveList.endDate}</span>
            </div>

            <div class="row">
                <span class="label">Reason:</span>
                <span>${leaveList.reason}</span>
            </div>

            <div class="row">
                <span class="label">Status:</span>
                <span class="status ${leaveList.status}">
                    ${leaveList.status}
                </span>
            </div>

        </div>

        <br>

    </c:forEach>

</div>

</body>
</html>