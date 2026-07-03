<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Manage HR Leave Requests | StaffSync</title>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/adminManageHrLeaveRequest.css">

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
	rel="stylesheet">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css">

</head>

<body>

<div class="page-wrapper">

    <!--=============================
            TOP HEADER
    ==============================-->

    <header class="page-header">

        <div class="header-left">

            <div class="page-icon">
                <i class="fa-solid fa-calendar-check"></i>
            </div>

            <div>

                <h1>HR Leave Requests</h1>

                <p>
                    Review, approve and reject HR leave applications.
                </p>

            </div>

        </div>

        <div class="header-right">

            <button class="refresh-btn">

                <i class="fa-solid fa-rotate-right"></i>

                Refresh

            </button>

        </div>

    </header>


    <!--=============================
            STATISTICS
    ==============================-->

    <section class="stats-grid">

        <!-- Total -->

        <div class="stat-card total">

            <div class="stat-icon">

                <i class="fa-solid fa-file-circle-check"></i>

            </div>

            <div class="stat-content">

                <span>Total Requests</span>

                <h2>${hrLeaveRequest.size()}</h2>

            </div>

        </div>


        <!-- Pending -->

        <div class="stat-card pending">

            <div class="stat-icon">

                <i class="fa-solid fa-clock"></i>

            </div>

            <div class="stat-content">

                <span>Pending</span>

                <h2>--</h2>

            </div>

        </div>


        <!-- Approved -->

        <div class="stat-card approved">

            <div class="stat-icon">

                <i class="fa-solid fa-circle-check"></i>

            </div>

            <div class="stat-content">

                <span>Approved</span>

                <h2>--</h2>

            </div>

        </div>


        <!-- Rejected -->

        <div class="stat-card rejected">

            <div class="stat-icon">

                <i class="fa-solid fa-circle-xmark"></i>

            </div>

            <div class="stat-content">

                <span>Rejected</span>

                <h2>--</h2>

            </div>

        </div>

    </section>



    <!--=============================
            TABLE CARD
    ==============================-->

    <section class="table-card">

        <div class="table-header">

            <div>

                <h2>

                    <i class="fa-solid fa-list-check"></i>

                    Leave Request Records

                </h2>

                <p>
                    All HR leave requests submitted to the administrator.
                </p>

            </div>


            <div class="table-tools">

                <div class="search-box">

                    <i class="fa-solid fa-magnifying-glass"></i>

                    <input
                        type="text"
                        id="searchInput"
                        placeholder="Search by HR ID or Leave Type...">

                </div>

            </div>

        </div>



        <div class="table-responsive">

            <table id="leaveTable">

                <thead>

                    <tr>

                        <th>Leave ID</th>

                        <th>HR ID</th>

                        <th>Leave Type</th>

                        <th>Start Date</th>

                        <th>End Date</th>

                        <th>Reason</th>

                        <th>Applied Date</th>

                        <th>Status</th>

                        <th>Action</th>

                    </tr>

                </thead>

                <tbody>

                <c:forEach var="leave" items="${hrLeaveRequest}">

                    <tr>

                        <td>

                            <span class="leave-id">

                                #${leave.leaveId}

                            </span>

                        </td>

                        <td>

                            HR-${leave.hrId}

                        </td>

                        <td>

                            <span class="leave-type">

                                ${leave.leaveType}

                            </span>

                        </td>

                        <td>

                            ${leave.startDate}

                        </td>

                        <td>

                            ${leave.endDate}

                        </td>

                        <td class="reason-column">

                            ${leave.reason}

                        </td>

                        <td>

                            ${leave.appliedDate}

                        </td>

                        <td>
                                                    <c:choose>

                                <c:when test="${leave.status == 'Pending'}">

                                    <span class="status-badge pending">
                                        <i class="fa-solid fa-clock"></i>
                                        Pending
                                    </span>

                                </c:when>

                                <c:when test="${leave.status == 'Approved'}">

                                    <span class="status-badge approved">
                                        <i class="fa-solid fa-circle-check"></i>
                                        Approved
                                    </span>

                                </c:when>

                                <c:when test="${leave.status == 'Rejected'}">

                                    <span class="status-badge rejected">
                                        <i class="fa-solid fa-circle-xmark"></i>
                                        Rejected
                                    </span>

                                </c:when>

                                <c:otherwise>

                                    <span class="status-badge">
                                        ${leave.status}
                                    </span>

                                </c:otherwise>

                            </c:choose>

                        </td>

                        <td>

                            <div class="action-buttons">

                                <!-- Approve -->

                                <a href="${pageContext.request.contextPath}/approveHrLeave/${leave.leaveId}"
                                   class="btn approve-btn">

                                    <i class="fa-solid fa-check"></i>

                                    Approve

                                </a>

                                <!-- Reject -->

                                <a href="${pageContext.request.contextPath}/rejectHrLeave/${leave.leaveId}"
                                   class="btn reject-btn">

                                    <i class="fa-solid fa-xmark"></i>

                                    Reject

                                </a>

                            </div>

                        </td>

                    </tr>

                </c:forEach>

                </tbody>

            </table>

        </div>

    </section>

</div>


<!--=========================
        SEARCH SCRIPT
==========================-->

<script>

const searchInput = document.getElementById("searchInput");

searchInput.addEventListener("keyup", function () {

    const filter = this.value.toLowerCase();

    const rows = document.querySelectorAll("#leaveTable tbody tr");

    rows.forEach(function (row) {

        const text = row.innerText.toLowerCase();

        row.style.display = text.includes(filter) ? "" : "none";

    });

});

</script>

</body>

</html>