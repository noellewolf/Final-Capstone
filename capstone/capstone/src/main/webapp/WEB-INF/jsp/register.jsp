<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sign Up</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor"
	crossorigin="anonymous">
<link href="/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="/assets/css/style.css" rel="stylesheet">
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
					<li class="nav-item"><a class="nav-link" href="/register">Sign
							Up</a></li>
					<li class="nav-item"><a class="nav-link" href="/login">Log
							In</a></li>
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
				<a rel="dofollow" style="color: black;">Register Below</a>
			</h1>

		</div>

		<div class="formbg-outer">

			<div class="formbg">
				<div class="navbar-custom">
					<ul class="nav nav-pills nav-justified mb-3" id="ex1"
						role="tablist">
						<li class="nav-item" role="presentation"><a class="nav-link"
							id="tab-login" data-mdb-toggle="pill" href="/login" role="tab"
							aria-controls="pills-login" aria-selected="true" href="/login">Login</a></li>
						<li class="nav-item" role="presentation"><a
							class="nav-link active" id="tab-register" data-mdb-toggle="pill"
							href="/register" role="tab" aria-controls="pills-register"
							aria-selected="false">Register</a></li>
					</ul>
				</div>

				<div class="formbg-inner padding-horizontal--48">
					<span class="padding-bottom--15">Fill out the fields below</span>
					<form:form modelAttribute="student" action="/register"
						method="post" id="stripe-login">
						<div class="field padding-bottom--24">
							<label for="firstname">First Name</label>
							<form:input path="firstName" type="text" name="firstName" />
						</div>
						<div class="field padding-bottom--24">
							<label for="lastname">Last Name</label>
							<form:input path="lastName" type="text" name="lastName" />
						</div>
						<div class="field padding-bottom--24">
							<label for="email">Email</label>
							<form:input path="email" type="email" name="email" />
						</div>
						<div class="field padding-bottom--24">
							<div class="grid--50-50">
								<label for="password">Password</label>
							</div>
							<form:input path="password" type="password" name="password" />
						</div>
						<br>
						<h2>Address</h2>
						<br>
						<div class="field padding-bottom--24">
							<label for="street">Street</label>
							<form:input path="address.street" type="text" name="street" />
						</div>
						<div class="field padding-bottom--24">
							<label for="street">City</label>
							<form:input path="address.city" type="text" name="city" />
						</div>
						<div class="field padding-bottom--24">
							<label for="street">State</label>
							<form:select path="address.state" id="inputState"
								class="form-control">
								<option selected>Choose...</option>
								<option value="AL">AL</option>
								<option value="AK">AK</option>
								<option value="AZ">AZ</option>
								<option value="AR">AR</option>
								<option value="CA">CA</option>
								<option value="CZ">CZ</option>
								<option value="CO">CO</option>
								<option value="CT">CT</option>
								<option value="DE">DE</option>
								<option value="DC">DC</option>
								<option value="FL">FL</option>
								<option value="GA">GA</option>
								<option value="GU">GU</option>
								<option value="HI">HI</option>
								<option value="ID">ID</option>
								<option value="IL">IL</option>
								<option value="IN">IN</option>
								<option value="IA">IA</option>
								<option value="KA">KA</option>
								<option value="KY">KY</option>
								<option value="LA">LA</option>
								<option value="ME">ME</option>
								<option value="MD">MD</option>
								<option value="MA">MA</option>
								<option value="MI">MI</option>
								<option value="MN">MN</option>
								<option value="MS">MS</option>
								<option value="MO">MO</option>
								<option value="MT">MT</option>
								<option value="NE">NE</option>
								<option value="NV">NV</option>
								<option value="NH">NH</option>
								<option value="NJ">NJ</option>
								<option value="NM">NM</option>
								<option value="NY">NY</option>
								<option value="NC">NC</option>
								<option value="ND">ND</option>
								<option value="OH">OH</option>
								<option value="OR">OR</option>
								<option value="PA">PA</option>
								<option value="PR">PR</option>
								<option value="RI">RI</option>
								<option value="SC">SC</option>
								<option value="SD">SD</option>
								<option value="TN">TN</option>
								<option value="TX">TX</option>
								<option value="UT">UT</option>
								<option value="VT">VT</option>
								<option value="VI">VI</option>
								<option value="VA">VA</option>
								<option value="WA">WA</option>
								<option value="WV">WV</option>
								<option value="WI">WI</option>
								<option value="WY">WY</option>
							</form:select>
						</div>
						<div class="field padding-bottom--24">
							<label for="zipCode">Zip Code</label>
							<form:input path="address.zipCode" type="text" name="zipCode" />
						</div>
						<h2>Appliances</h2>
						<br>
						<span class="padding-bottom--15">(Enter Gallons Used Today)</span>
						<div class="field padding-bottom--24">
							<label for="bathtub">Bathtub</label>
							<form:input path="appliances.bathtub" type="text" name="bathtub" />
						</div>
						<div class="field padding-bottom--24">
							<label for="dishwasher">Dishwasher</label>
							<form:input path="appliances.dishwasher" type="text"
								name="dishwasher" />
						</div>
						<div class="field padding-bottom--24">
							<label for="faucet">Faucet</label>
							<form:input path="appliances.faucet" type="text" name="faucet" />
						</div>
						<div class="field padding-bottom--24">
							<label for="shower">Shower</label>
							<form:input path="appliances.shower" type="text" name="shower" />
						</div>
						<div class="field padding-bottom--24">
							<label for="toilet">Toilet</label>
							<form:input path="appliances.toilet" type="text" name="toilet" />
						</div>
						<div class="field padding-bottom--24">
							<label for="washingmachine">Washing Machine</label>
							<form:input path="appliances.washingmachine" type="text"
								name="washingmachine" />
						</div>
						<div class="field padding-bottom--24">
							<label for="other">Other</label>
							<form:input path="appliances.other" type="text" name="other" />
						</div>
						<div class="field padding-bottom--24">
							<form:button type="submit">Submit</form:button>
						</div>
						<br>

					</form:form>
				</div>
			</div>
			<div class="footer-link padding-top--24">
				<div
					class="listing padding-top--24 padding-bottom--24 flex-flex center-center">
					<span><a href="#">Made By Noelle Wolf</a></span>
				</div>
			</div>
		</div>
	</div>
	</div>
	</div>
</body>
</html>
