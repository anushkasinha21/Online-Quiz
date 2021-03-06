<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
   <!-- Required meta tags -->
   <meta charset="utf-8" />
   <meta
	 name="viewport"
	 content="width=device-width, initial-scale=1, shrink-to-fit=no"
   />
   <link rel="icon" href="${pageContext.request.contextPath}/img/favicon.png" type="image/png" />
   <title>Online Quiz</title>
   <!-- Bootstrap CSS -->
   <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css" />
   <link rel="stylesheet" href="${pageContext.request.contextPath}/css/flaticon.css" />
   <link rel="stylesheet" href="${pageContext.request.contextPath}/css/themify-icons.css" />
   <link rel="stylesheet" href="${pageContext.request.contextPath}/vendors/owl-carousel/owl.carousel.min.css" />
   <link rel="stylesheet" href="${pageContext.request.contextPath}/vendors/nice-select/css/nice-select.css" />
   <!-- main css -->
   <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" />
   <link rel="stylesheet" href="${pageContext.request.contextPath}/css/register.css" />
</head>
<body>

    <!--================ Start Header Menu Area =================-->
<header class="header_area">
		  <div class="main_menu">
			<div class="search_input" id="search_input_box">
			  <div class="container">
				<form class="d-flex justify-content-between" method="" action="">
				  <input
					type="text"
					class="form-control"
					id="search_input"
					placeholder="Search Here"
				  />
				  <button type="submit" class="btn"></button>
				  <span
					class="ti-close"
					id="close_search"
					title="Close Search"
				  ></span>
				</form>
			  </div>
			</div>
	
			<nav class="navbar navbar-expand-lg navbar-light">
			  <div class="container">
				<!-- Brand and toggle get grouped for better mobile display -->
				<a class="navbar-brand logo_h" href="index.html"
				  ><img src="${pageContext.request.contextPath}/img/logo.png" alt=""
				/></a>
				<button
				  class="navbar-toggler"
				  type="button"
				  data-toggle="collapse"
				  data-target="#navbarSupportedContent"
				  aria-controls="navbarSupportedContent"
				  aria-expanded="false"
				  aria-label="Toggle navigation"
				>
				  <span class="icon-bar"></span> <span class="icon-bar"></span>
				  <span class="icon-bar"></span>
				</button>
				<!-- Collect the nav links, forms, and other content for toggling -->
				<div
				  class="collapse navbar-collapse offset"
				  id="navbarSupportedContent"
				>
				  <ul class="nav navbar-nav menu_nav ml-auto">
					<li class="nav-item active">
					  <a class="nav-link" href="${pageContext.request.contextPath}">Home</a>
					</li>
					<li class="nav-item">
					  <a class="nav-link" href="${pageContext.request.contextPath}/login">Login</a>
					</li>
					<li class="nav-item">
					  <a class="nav-link" href="${pageContext.request.contextPath}/register">Register</a>
					</li>
					<li class="nav-item">
					  <a class="nav-link" href="${pageContext.request.contextPath}/submitQuestion">Admin</a>
					</li>
					
					<li class="nav-item">
					  <a class="nav-link" href="contact.html">Contact</a>
					</li>
					<!-- <li class="nav-item">
					  <a href="#" class="nav-link search" id="search">
						<i class="ti-search"></i>
					  </a>
					</li> -->
				  </ul>
				</div>
			  </div>
			</nav>
		  </div>
		</header>
	  <!--================ End Header Menu Area =================-->
  
	  <!--================ Start Home Banner Area =================-->
	  <section class="home_banner_area">
		<div class="banner_inner">
		  <div class="container">
			<div class="row">
			  <div class="col-lg-6">
				<div class="banner_content text-center">
				  <h2 class="text-uppercase mt-4 mb-3">
					Online Quiz
				  </h2>
				  <h3 class="text-uppercase mt-3 mb-3">
					Check your Knowledge Today
				  </h3>
				</div>
			  </div>
			  <div class="col-lg-6">
				<div class="login-body">
				  <div class="login">
					<div class="login-screen">
					  <div class="app-title">
						<h1>Login</h1>
					  </div>
					  <form name="login-form" class="login-form" action="checkLogin" method="post">
					  <div class="login-form">
						  <h3 align="center">${errorMessage}</h3>
						<div class="control-group">
						  <input
						  name="username"
							type="text"
							class="login-field"
							value=""
							placeholder="SIC Number"
							id="login-name"
						  />
						  <label
							class="login-field-icon fui-user"
							for="login-name"
						  ></label>
						</div>
  
						<div class="control-group">
						  <input
						  	name="password"
							type="password"
							class="login-field"
							value=""
							placeholder="password"
							id="login-pass"
						  />
						  <label
							class="login-field-icon fui-lock"
							for="login-pass"
						  ></label>
						</div>
  
						<input type="submit" name="submit" value="Login" class="btn btn-primary btn-large btn-block" 
						  >
						<a class="login-link" href="${pageContext.request.contextPath}/register"
						  >Lost your password?</a
						>
					  </div>
					  </form>
					</div>
				  </div>
				</div>
			  </div>
			</div>
		  </div>
		</div>
	  </section>
	  <script src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
	  <script src="${pageContext.request.contextPath}/js/popper.js"></script>
	  <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
	  <script src="${pageContext.request.contextPath}/vendors/nice-select/js/jquery.nice-select.min.js"></script>
	  <script src="${pageContext.request.contextPath}/vendors/owl-carousel/owl.carousel.min.js"></script>
	  <script src="${pageContext.request.contextPath}/js/owl-carousel-thumb.min.js"></script>
	  <script src="${pageContext.request.contextPath}/js/jquery.ajaxchimp.min.js"></script>
	  <script src="${pageContext.request.contextPath}/js/mail-script.js"></script>
	  <!--gmaps Js-->
	  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCjCGmQ0Uq4exrzdcL6rvxywDDOvfAu6eE"></script>
	  <script src="${pageContext.request.contextPath}/js/gmaps.min.js"></script>
	  <script src="${pageContext.request.contextPath}/js/theme.js"></script>
	</body>
  </html>