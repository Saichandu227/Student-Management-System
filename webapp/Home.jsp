<%@page import="com.vcube.model.StudentModel"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>SmartITSolutions</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet">
<style>
.hero {
	background: url('https://via.placeholder.com/1500x500') no-repeat center
		center;
	background-size: cover;
	color: black;
}

.card-deck {
	display: flex;
	flex-wrap: wrap;
	justify-content: space-around;
}

.card {
	width: 18rem;
	margin-bottom: 20px;
}

.carousel-inner img {
	width: 100%;
	height: 100%;
}

.alert-success {
	color: blue;
	font-size: 1em;
}
</style>
</head>

<body>

	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<div class="container">
			<a class="navbar-brand" href="#">Smart IT Solutions</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNav"
				aria-controls="navbarNav" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav ms-auto">

					<%
					if (session.getAttribute("student") != null) {
					%>
					<div class="alert alert-success">
						Welcome
						<%
					StudentModel model = (StudentModel) session.getAttribute("student");
					%>
						<%=model.getName()%>
					</div>

					<%
					}
					%>

					<li class="nav-item"><a href="Profile.jsp" type="button"
						class="btn btn-primary"> Profile</a></li>
					<li class="nav-item"><a href="Login.jsp" type="button"
						class="btn btn-primary">Logout</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<div id="demo" class="carousel slide" data-ride="carousel">

		<ul class="carousel-indicators">
			<li data-target="#demo" data-slide-to="0" class="active"></li>
			<li data-target="#demo" data-slide-to="1"></li>
			<li data-target="#demo" data-slide-to="2"></li>
		</ul>

		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="./images/jfs.jpg" alt="Los Angeles" width="1100"
					height="500">
			</div>
			<div class="carousel-item">
				<img src="./images/pfs.jpg" alt="Chicago" width="1100" height="500">
			</div>
			<div class="carousel-item">
				<img src="./images/t.jpg" alt="New York" width="1100" height="500">
			</div>
		</div>

		<!-- Left and right controls -->
		<a class="carousel-control-prev" href="#demo" data-slide="prev"> <span
			class="carousel-control-prev-icon"></span>
		</a> <a class="carousel-control-next" href="#demo" data-slide="next">
			<span class="carousel-control-next-icon"></span>
		</a>
	</div>

	<section id="tutorials" class="container my-5">
		<h2 class="text-center mb-4">Our Latest Tutorials</h2>
		<div class="row">
			<div class="col-md-4">
				<div class="card">
					<img src="./images/15.jpg" class="card-img-top" alt="Tutorial 1">
					<div class="card-body">
						<h5 class="card-title">Intro to Python</h5>
						<p class="card-text">Learn the basics of Python programming
							language in this beginner-friendly tutorial.</p>
						<a href="#" class="btn btn-primary">Start Learning</a>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card">
					<img src="./images/17.jpg" class="card-img-top" alt="Tutorial 2">
					<div class="card-body">
						<h5 class="card-title">Web Development Basics</h5>
						<p class="card-text">A comprehensive guide to building
							websites with HTML, CSS, and JavaScript.</p>
						<a href="#" class="btn btn-primary">Start Learning</a>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card">
					<img src="./images/16.jpg" class="card-img-top" alt="Tutorial 3">
					<div class="card-body">
						<h5 class="card-title">Data Science with R</h5>
						<p class="card-text">Learn data analysis and visualization
							using R programming language.</p>
						<a href="#" class="btn btn-primary">Start Learning</a>
					</div>
				</div>
			</div>
		</div>
	</section>

	<footer class="bg-dark text-white text-center py-4">
		<p>&copy; Smart IT Solutions. All Rights Reserved.</p>
		<p>
			Follow us on <a href="#" class="text-white">Facebook</a>, <a href="#"
				class="text-white">Twitter</a>, and <a href="#" class="text-white">Instagram</a>
		</p>
	</footer>

</body>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</html>