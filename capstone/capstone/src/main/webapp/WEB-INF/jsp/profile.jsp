<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Profile</title>
<link href="/assets/css/profile.css" rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT"
	crossorigin="anonymous">
<link href='https://fonts.googleapis.com/css?family=Nunito' rel='stylesheet'>
</head>
<body>
<nav class="navbar navbar-expand-lg bg-light">
		<div class="container-fluid">
			<a class="navbar-brand" href="/" >Watch Your Water</a>
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
<section class="section about-section gray-bg" id="about">
            <div class="container">
                <div class="row align-items-center justify-center flex-row-reverse">
                    <div class="col-lg-6 margin-bottom">
                        <div class="about-text go-to">
                           <div class="counter">
                            <h3 class="dark-color">About ${setUser.firstName}</h3>
                            <div class="row about-list">
                                <div class="col-md-6">
                                    <div class="media">
                                        <label>Email</label>
                                        <p>${setUser.email} </p>
                                    </div>
                                    <div class="media">
                                        <label>Street </label>
                                        <p>${setUser.address.street}</p>
                                    </div>
                                    <div class="media">
                                        <label>State </label>
                                        <p>${setUser.address.state}</p>
                                    </div>
                                    
                                </div>
                                <div class="col-md-6">
                                    <div class="media">
                                        <label>Full Name</label>
                                        <p>${setUser.firstName} ${setUser.lastName}</p>
                                    </div>
                                    <div class="media">
                                        <label>City </label>
                                        <p>${setUser.address.city}</p>
                                    </div>
                                    <div class="media">
                                        <label>Zip </label>
                                        <p>${setUser.address.zipCode}</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="about-avatar">
                        </div>
                        <div>
                        </div>
                    </div>
                </div>
                <div class="counter">
                    <div class="row">
                        <div class="col-6 col-lg-3">
                            <div class="count-data text-center">
                                <h6 class="count h2" data-to="500" data-speed="500">500</h6>
                                <p class="m-0px font-w-600">Lifetime Gal.</p>
                            </div>
                        </div>
                        <div class="col-6 col-lg-3">
                            <div class="count-data text-center">
                                <h6 class="count h2" data-to="150" data-speed="150" id="weekly">150</h6>
                                <p class="m-0px font-w-600">Est. Weekly</p>
                            </div>
                        </div>
                        <div class="col-6 col-lg-3">
                            <div class="count-data text-center">
                                <h6 class="count h2" data-to="850" data-speed="850" id="monthly">850</h6>
                                <p class="m-0px font-w-600">Est. Monthly</p>
                            </div>
                        </div>
                        <div class="col-6 col-lg-3">
                            <div class="count-data text-center">
                                <h6 class="count h2" data-to="190" data-speed="190" id="yearly">190</h6>
                                <p class="m-0px font-w-600">Est. Yearly</p>
                            </div>
                        </div>
                        <span>Does this not look right? <a href="/editInfo">Edit</a></span>
                        <span>Want to delete your account? <a href="/deleteInfo">Delete</a></span>
                    </div>
                </div>
            </div>
        </section>
<script type="text/javascript" src="/assets/javascripttest.js"></script>
</body>
</html>