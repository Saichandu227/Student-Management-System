<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Student Login</title>
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">
<style>
.error {
	color: red;
	font-size: 0.9em;
}

.confirmation {
	color: green;
	font-size: 1em;
}

.alert-danger {
	color: red;
	font-size: 1em;
}
</style>
</head>
<body>
	<div class="container mt-5">
		<div class="row justify-content-center">
			<div class="col-md-6">
				<div class="card">
					<div class="card-header text-center">
						<h2>Student Login</h2>
					</div>


					<%
					if (request.getAttribute("errorMessage") != null) {
					%>
					<div class="alert alert-danger">
						<%=request.getAttribute("errorMessage")%>
					</div>
					<%
					}
					%>


					<div class="card-body">
						<form id="loginForm" method="post" action="lgn">
							<div class="form-group">
								<label for="email">Email</label> <input type="email"
									class="form-control" id="email" name="email"
									placeholder="Enter your email">
								<div id="emailError" class="error"></div>
							</div>
							<div class="form-group">
								<label for="password">Password</label> <input type="password"
									class="form-control" id="password" name="password"
									placeholder="Enter your password">
								<div id="passwordError" class="error"></div>
							</div>
							<button type="submit" class="btn btn-primary btn-block">Login</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script>
		document
				.getElementById('loginForm')
				.addEventListener(
						'submit',
						function(event) {
							event.preventDefault();

							const email = document.getElementById('email').value
									.trim();
							const password = document
									.getElementById('password').value.trim();

							let isValid = true;

							const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
							if (!emailRegex.test(email)) {
								document.getElementById('emailError').textContent = 'Invalid email format';
								isValid = false;
							} else {
								document.getElementById('emailError').textContent = '';
							}

							if (password.length < 6) {
								document.getElementById('passwordError').textContent = 'Password must be at least 6 characters long';
								isValid = false;
							} else {
								document.getElementById('passwordError').textContent = '';
							}

							if (isValid) {
								document.getElementById('loginForm').submit();
								document.getElementById('loginForm').reset();
							}
						});
	</script>
</body>
</html>



