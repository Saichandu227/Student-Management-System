<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Student Registration</title>
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

.colour {
	color: blue;
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
						<h2>Student Registration</h2>
					</div>
					<div class="card-body">
						<form name="registrationform" id="registrationForm" action="regis"
							method="post">

							<div class="form-group">
								<label for="name">Name</label> <input type="text" name="name"
									class="form-control" id="name" placeholder="Enter your name">
								<div id="nameError" class="error"></div>
							</div>
							<div class="form-group">
								<label for="email">Email</label> <input type="email"
									name="email" class="form-control" id="email"
									placeholder="Enter your email">
								<div id="emailError" class="error"></div>
							</div>
							<div class="form-group">
								<label for="mobileNumber">Mobile Number</label> <input
									name="mobileNumber" type="text" class="form-control"
									id="mobileNumber" placeholder="Enter your mobile number">
								<div id="mobileNumberError" class="error"></div>
							</div>
							<div class="form-group">
								<label for="course">Course</label> <input type="text"
									name="course" class="form-control" id="course"
									placeholder="Enter your course">
								<div id="courseError" class="error"></div>
							</div>
							<div class="form-group">
								<label for="branch">Branch</label> <input type="text"
									name="branch" class="form-control" id="branch"
									placeholder="Enter your branch">
								<div id="branchError" class="error"></div>
							</div>
							<div class="form-group">
								<label for="yearPassedOut">Year of Passed Out</label> <input
									name="yearPassedOut" type="text" class="form-control"
									id="yearPassedOut" placeholder="Enter your year of passed out">
								<div id="yearPassedOutError" class="error"></div>
							</div>
							<div class="form-group">
								<label for="password">Password</label> <input type="password"
									name="password" class="form-control" id="password"
									placeholder="Enter your password">
								<div id="passwordError" class="error"></div>
							</div>
							<div class="form-group">
								<label for="confirmPassword">Confirm Password</label> <input
									name="confirmPassword" type="password" class="form-control"
									id="confirmPassword" placeholder="Confirm your password">
								<div id="confirmPasswordError" class="error"></div>
							</div>
							<button type="submit" class="btn btn-primary btn-block">Register</button>
							<a href="Login.jsp" class="colour">Already have an account?</a>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script>
		document
				.getElementById('registrationForm')
				.addEventListener(
						'submit',
						function(event) {
							event.preventDefault();

							const name = document.getElementById('name').value
									.trim();
							const email = document.getElementById('email').value
									.trim();
							const mobileNumber = document
									.getElementById('mobileNumber').value
									.trim();
							const course = document.getElementById('course').value
									.trim();
							const branch = document.getElementById('branch').value
									.trim();
							const yearPassedOut = document
									.getElementById('yearPassedOut').value
									.trim();
							const password = document
									.getElementById('password').value.trim();
							const confirmPassword = document
									.getElementById('confirmPassword').value
									.trim();

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

							if (password.length < 6) {
								document.getElementById('passwordError').textContent = 'Password must be at least 6 characters long';
								isValid = false;
							} else {
								document.getElementById('passwordError').textContent = '';
							}

							if (password !== confirmPassword) {
								document.getElementById('confirmPasswordError').textContent = 'Passwords do not match';
								isValid = false;
							} else {
								document.getElementById('confirmPasswordError').textContent = '';
							}

							if (isValid) {
								document.getElementById('registrationForm')
										.submit();
								document.getElementById('registrationForm')
										.reset();
							}
						});
	</script>
</body>
</html>