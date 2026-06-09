<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Leave Requests</title>

<link rel="stylesheet"
href="/css/hrLeaveRequests.css">

</head>
<body>

<div class="container">

<h2>Leave Requests</h2>

<table>

<tr>
<th>Employee ID</th>
<th>Leave Type</th>
<th>Start Date</th>
<th>End Date</th>
<th>Reason</th>
<th>Status</th>
<th>Action</th>
</tr>

<c:forEach var="leave"
items="${leaveList}">

<tr>

<td>${leave.employeeId}</td>
<td>${leave.leaveType}</td>
<td>${leave.startDate}</td>
<td>${leave.endDate}</td>
<td>${leave.reason}</td>
<td>${leave.status}</td>

<td>

<a href="/leave/approve/${leave.leaveId}">
<button class="approve-btn">
Approve
</button>
</a>

<a href="/leave/reject/${leave.leaveId}">
<button class="reject-btn">
Reject
</button>
</a>

</td>

</tr>

</c:forEach>

</table>

</div>

</body>
</html>