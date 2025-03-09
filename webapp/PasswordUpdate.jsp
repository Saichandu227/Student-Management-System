<%@ page import="com.vcube.model.StudentModel"%>
<%@ page import="com.vcube.dao.StudentDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Password Update</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet">
<style>
.password-card {
	width: 50%;
	margin: 0 auto;
}

.error {
	color: red;
	font-size: 12px;
}
</style>
</head>
<body>
	<div class="container mt-5">
		<h2 class="text-center">Update Password</h2>
		<%
            StudentModel student = (StudentModel) session.getAttribute("student");
            if (student != null) {
        %>

		<div class="card password-card">
			<div class="card-body">
				<form id="updateform" action="updatePassword" method="post">
					<div class="form-group">
						<label for="password">Enter New Password</label> <input
							type="password" id="password" name="password"
							class="form-control" required minlength="6">
					</div>
					<div class="form-group">
						<label for="confirmpassword">Re-Enter Password</label> <input
							type="password" id="confirmpassword" name="confirmpassword"
							class="form-control" required minlength="6">
						<div id="confirmPasswordError" class="error"></div>
					</div>
					<div class="form-group">
						<button type="button" class="btn btn-primary"
							onclick="submitForm()">Update Password</button>
					</div>
				</form>
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

	<script>
		function validateForm() {
			var password = document.getElementById('password').value;
			var confirmPassword = document.getElementById('confirmpassword').value;
			var errorMessage = document.getElementById('confirmPasswordError');

			errorMessage.innerHTML = '';

			if (password !== confirmPassword) {
				errorMessage.innerHTML = "Passwords do not match!";
				document.getElementById('password').classList.add('error');
				document.getElementById('confirmpassword').classList
						.add('error');
				return false;
			}

			if (password.length < 6 || confirmPassword.length < 6) {
				errorMessage.innerHTML = "Password must be at least 6 characters long.";
				document.getElementById('password').classList.add('error');
				document.getElementById('confirmpassword').classList
						.add('error');
				return false;
			}

			return true;
		}

		function submitForm() {
			if (validateForm()) {
				document.getElementById('updateform').submit();
			}
		}
	</script>
</body>
</html>
