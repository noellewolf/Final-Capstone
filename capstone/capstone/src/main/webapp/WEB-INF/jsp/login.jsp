<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Log In</title>


<!-- Bootstrap core CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor"
	crossorigin="anonymous">

<link href="/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link href='https://fonts.googleapis.com/css?family=Nunito' rel='stylesheet'>

<script src="/scripts/jquery.min.js"></script>
<script src="/bootstrap/js/bootstrap.min.js"></script>
<style>
.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
* {
	font-family: 'Nunito';
}
}
</style>
<!-- Custom styles for this template -->
<link href="cover.css" rel="stylesheet">
<link rel="stylesheet" href="assets/css/style.css">
</head>
<body>
<nav class="navbar navbar-expand-lg bg-light">
		<div class="container-fluid">
			<a class="navbar-brand" href="/">Watch Your Water</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="/">Home</a></li>
					<li class="nav-item"><a class="nav-link" href="/register">Sign Up</a></li>
					<li class="nav-item"><a class="nav-link" href="/login">Log In</a></li>
					<li><hr class="dropdown-divider"></li>
				</ul>
			</div>
		</div>
	</nav>
			<div
				class="box-root padding-top--24 flex-flex flex-direction--column hero"
				style="flex-grow: 1; z-index: 9;">
				<div
					class="box-root padding-top--48 padding-bottom--24 flex-flex flex-justifyContent--center">
					<h1>
						<a rel="dofollow" style="color: black;">Log In</a>
					</h1>

				</div>
				<div class="formbg-outer">

					<div class="formbg">
						<div class="navbar-custom">
							<ul class="nav nav-pills nav-justified mb-3" id="ex1"
								role="tablist">
								<li class="nav-item" role="presentation"><a
									class="nav-link active" id="tab-login" data-mdb-toggle="pill"
									href="/login" role="tab" aria-controls="pills-login"
									aria-selected="true">Login</a></li>
								<li class="nav-item" role="presentation"><a
									class="nav-link" id="tab-register" data-mdb-toggle="pill"
									href="/register" role="tab" aria-controls="pills-register"
									aria-selected="false">Register</a></li>
							</ul>
						</div>
						<div class="formbg-inner padding-horizontal--48">
							<span class="padding-bottom--15">Sign in to your account</span>
							<h2 class="text-danger">${msg}</h2>
							<form:form modelAttribute="student" action="/login" method="post"
								id="stripe-login">
								<div class="field padding-bottom--24">
									<label for="email">Email</label> <input type="email"
										name="email">
								</div>
								<div class="field padding-bottom--24">
									<div class="grid--50-50">
										<label for="password">Password</label>
									</div>
									<input type="password" name="password">
								</div>
								<div class="field padding-bottom--24">
									<input type="submit" name="submit" href="/index" value="Continue">
								</div>

							</form:form>
						</div>
					</div>
					<div class="footer-link padding-top--24">
						<span>Don't have an account? <a href="/register">Sign
								up</a></span>
						<div
							class="listing padding-top--24 padding-bottom--24 flex-flex center-center">
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>