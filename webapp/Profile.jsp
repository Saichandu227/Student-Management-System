<%@ page import="com.vcube.model.StudentModel"%>
<%@ page import="com.vcube.dao.StudentDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Profile - Smart IT Solutions</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet">
<style>
.profile-card {
	width: 50%;
	margin: 0 auto;
}
</style>
</head>
<body>
	<div class="container mt-5">
		<h2 class="text-center">Profile</h2>
		<%
		StudentModel student = (StudentModel) session.getAttribute("student");
		if (student != null) {
		%>
		<div class="card profile-card">
			<div class="card-body">
				<form>
					<div class="form-group">
						<label for="name">Name:</label> <input type="text" id="name"
							name="name" class="form-control" value="<%=student.getName()%>"
							disabled>
					</div>
					<div class="form-group">
						<label for="email">Email:</label> <input type="email" id="email"
							name="email" class="form-control"
							value="<%=student.getEmail()%>" disabled>
					</div>
					<div class="form-group">
						<label for="mobile">Mobile Number:</label> <input type="text"
							id="mobile" name="mobile" class="form-control"
							value="<%=student.getMobile()%>" disabled>
					</div>
					<div class="form-group">
						<label for="course">Course:</label> <input type="text" id="course"
							name="course" class="form-control"
							value="<%=student.getCourse()%>" disabled>
					</div>
					<div class="form-group">
						<label for="branch">Branch:</label> <input type="text" id="branch"
							name="branch" class="form-control"
							value="<%=student.getBranch()%>" disabled>
					</div>
					<div class="form-group">
						<label for="year">Year Passed Out:</label> <input type="text"
							id="year" name="year" class="form-control"
							value="<%=student.getYop()%>" disabled>
					</div>
				</form>
				<a href="Update.jsp" class="btn btn-warning mt-3" id="editButton">Edit
					Profile</a> <a href="PasswordUpdate.jsp" class="btn btn-warning mt-3"
					id="editButton">Change Password</a>
			</div>
		</div>
		<%
		} else {
		%>
		<p>You are not logged in.</p>
		<%
		}
		%>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
