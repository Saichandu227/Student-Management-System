<%@ page import="com.vcube.model.StudentModel"%>
<%@ page import="com.vcube.dao.StudentDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Update Profile - Smart IT Solutions</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet">
<style>
.profile-card {
	width: 50%;
	margin: 0 auto;
}

.error {
	color: red;
	font-size: 0.9em;
}
</style>
</head>
<body>
	<div class="container mt-5">
		<h2 class="text-center">Update Profile</h2>

		<%
		StudentModel student = (StudentModel) session.getAttribute("student");
		if (student != null) {
		%>
		<div class="card profile-card">
			<div class="card-body">
				<form id="updateform" action="updateProfile" method="post">
					<div class="form-group">
						<label for="name">Name:</label> <input type="text" id="name"
							name="name" class="form-control" value="<%=student.getName()%>">
						<div id="nameError" class="error"></div>
					</div>
					<div class="form-group">
						<label for="email">Email:</label> <input type="email" id="email"
							name="email" class="form-control" value="<%=student.getEmail()%>">
						<div id="emailError" class="error"></div>
					</div>
					<div class="form-group">
						<label for="mobile">Mobile Number:</label> <input type="text"
							id="mobile" name="mobile" class="form-control"
							value="<%=student.getMobile()%>">
						<div id="mobileNumberError" class="error"></div>
					</div>
					<div class="form-group">
						<label for="course">Course:</label> <input type="text" id="course"
							name="course" class="form-control"
							value="<%=student.getCourse()%>">
						<div id="courseError" class="error"></div>
					</div>
					<div class="form-group">
						<label for="branch">Branch:</label> <input type="text" id="branch"
							name="branch" class="form-control"
							value="<%=student.getBranch()%>">
						<div id="branchError" class="error"></div>
					</div>
					<div class="form-group">
						<label for="year">Year Passed Out:</label> <input type="text"
							id="year" name="year" class="form-control"
							value="<%=student.getYop()%>">
						<div id="yearPassedOutError" class="error"></div>
					</div>

					<button type="submit" class="btn btn-primary mt-3">Update
						Profile</button>
				</form>
			</div>
		</div>
		<%
		} else {
		%>
		<p>You are not logged in. Please log in to update your profile.</p>
		<%
		}
		%>
	</div>


	<script>
		document
				.getElementById('updateform')
				.addEventListener(
						'submit',
						function(event) {
							event.preventDefault();

							const name = document.getElementById('name').value
									.trim();
							const email = document.getElementById('email').value
									.trim();
							const mobileNumber = document
									.getElementById('mobile').value.trim();
							const course = document.getElementById('course').value
									.trim();
							const branch = document.getElementById('branch').value
									.trim();
							const yearPassedOut = document
									.getElementById('year').value.trim();

							let isValid = true;

							if (name === '') {
								document.getElementById('nameError').textContent = 'Name is required';
								isValid = false;
							} else {
								document.getElementById('nameError').textContent = '';
							}

							const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
							if (!emailRegex.test(email)) {
								document.getElementById('emailError').textContent = 'Invalid email format';
								isValid = false;
							} else {
								document.getElementById('emailError').textContent = '';
							}

							const mobileRegex = /^\d{10}$/;
							if (!mobileRegex.test(mobileNumber)) {
								document.getElementById('mobileNumberError').textContent = 'Invalid mobile number (10 digits required)';
								isValid = false;
							} else {
								document.getElementById('mobileNumberError').textContent = '';
							}

							if (course === '') {
								document.getElementById('courseError').textContent = 'Course is required';
								isValid = false;
							} else {
								document.getElementById('courseError').textContent = '';
							}

							if (branch === '') {
								document.getElementById('branchError').textContent = 'Branch is required';
								isValid = false;
							} else {
								document.getElementById('branchError').textContent = '';
							}

							const yearRegex = /^\d{4}$/;
							if (!yearRegex.test(yearPassedOut)) {
								document.getElementById('yearPassedOutError').textContent = 'Invalid year (4 digits required)';
								isValid = false;
							} else {
								document.getElementById('yearPassedOutError').textContent = '';
							}

							if (isValid) {
								document.forms['updateform'].submit();
							}
						});
	</script>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
