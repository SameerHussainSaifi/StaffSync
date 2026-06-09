<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Apply Leave</title>

<link rel="stylesheet" href="/css/applyLeave.css">

</head>
<body>

<div class="container">

    <h2>Apply Leave</h2>

    <form action="/apply/leave" method="post">

        <div class="form-group">
            <label>Leave Type</label>
            <select name="leaveType" required>
                <option value="">Select Leave Type</option>
                <option value="Sick Leave">Sick Leave</option>
                <option value="Casual Leave">Casual Leave</option>
                <option value="Paid Leave">Paid Leave</option>
                <option value="Emergency Leave">Emergency Leave</option>
                <option value="Work From Home">Work From Home</option>
            </select>
        </div>

        <div class="form-group">
            <label>Start Date</label>
            <input type="date" name="startDate" required>
        </div>

        <div class="form-group">
            <label>End Date</label>
            <input type="date" name="endDate" required>
        </div>

        <div class="form-group">
            <label>Reason</label>
            <textarea name="reason" rows="4" required></textarea>
        </div>

        <button type="submit" class="submit-btn">
            Submit Leave Request
        </button>

    </form>

</div>

</body>
</html>