<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<!-- Required meta tags -->
		<meta charset="utf-8" />
		<meta
		  name="viewport"
		  content="width=device-width, initial-scale=1, shrink-to-fit=no"
		/>
		<link rel="icon" href="${pageContext.request.contextPath}/img/favicon.png" type="image/png" >
		<title>Online Quiz</title>
		<!-- Bootstrap CSS -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css" >
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/flaticon.css" >
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/themify-icons.css" >
		<link rel="stylesheet" href="${pageContext.request.contextPath}/vendors/owl-carousel/owl.carousel.min.css" >
		<link rel="stylesheet" href="${pageContext.request.contextPath}/vendors/nice-select/css/nice-select.css" >
		<!-- main css -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" >
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/subjects.css" >
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
					  <a class="nav-link" href="${pageContext.request.contextPath}"><p style="color:#f8b600">Welcome ${sessionScope.user} </p></a>
					</li>
					<li class="nav-item">
					  <a class="nav-link" href="${pageContext.request.contextPath}/logout">LogOut</a>
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
				<div class="login-body">
				  <div class="login">
					<div class="login-screen">
					  <!--================ End Header Menu Area =================-->
					  <div class="popular_courses">
						<div class="container">
						  <div class="row justify-content-center">
							<div class="col-lg-5">
							  <div class="main_title_subject">
								<h2>Subjects</h2>
								<p>
								  Choose Any One Of the Following Subject
								</p>
							  </div>
							</div>
						  </div>
						  <div class="row">
							<!-- single course -->
							<div class="col-lg-12">
							  <div class="owl-carousel active_course">
								<div class="single_course">
								  <div class="course_head">
									<img
									  class="img-fluid"
									  src="${pageContext.request.contextPath}/img/subjects/react.jpg"
									  alt=""
									/>
								  </div>
								  <div class="course_content">
									<span class="price">15min</span>
									<span class="tag mb-4 d-inline-block"
									  >INTERMEDIATE</span
									>
									<h4 class="mb-3">
									  <a href="takeExam?test=react"
										>Basics of React</a
									  >
									</h4>
									<p>
									  One make creepeth man bearing their one
									  firmament won't fowl meat over sea
									</p>
									<div
									  class="course_meta d-flex justify-content-lg-between align-items-lg-center flex-lg-row flex-column mt-4"
									></div>
								  </div>
								</div>
	
								<div class="single_course">
								  <div class="course_head">
									<img
									  class="img-fluid"
									  src="${pageContext.request.contextPath}/img/subjects/node.jpg"
									  alt=""
									/>
								  </div>
								  <div class="course_content">
									<span class="price">20min</span>
									<span class="tag mb-4 d-inline-block"
									  >HARD</span
									>
									<h4 class="mb-3">
									  <a href="takeExam?test=node"
										>Basics of Node.js</a
									  >
									</h4>
									<p>
									  One make creepeth man bearing their one
									  firmament won't fowl meat over sea
									</p>
									<div
									  class="course_meta d-flex justify-content-lg-between align-items-lg-center flex-lg-row flex-column mt-4"
									></div>
								  </div>
								</div>
	
								<div class="single_course">
								  <div class="course_head">
									<img
									  class="img-fluid"
									  src="${pageContext.request.contextPath}/img/subjects/flutter.jpg"
									  alt=""
									/>
								  </div>
								  <div class="course_content">
									<span class="price">15min</span>
									<span class="tag mb-4 d-inline-block"
									  >INTERMEDIATE</span
									>
									<h4 class="mb-3">
									  <a href="takeExam?test=flutter"
										>Basics of Flutter & Dart</a
									  >
									</h4>
									<p>
									  One make creepeth man bearing their one
									  firmament won't fowl meat over sea
									</p>
									<div
									  class="course_meta d-flex justify-content-lg-between align-items-lg-center flex-lg-row flex-column mt-4"
									></div>
								  </div>
								</div>
	
								<div class="single_course">
								  <div class="course_head">
									<img
									  class="img-fluid"
									  src="${pageContext.request.contextPath}/img/subjects/vue.jpg"
									  alt=""
									/>
								  </div>
								  <div class="course_content">
									<span class="price">10min</span>
									<span class="tag mb-4 d-inline-block"
									  >EASY</span
									>
									<h4 class="mb-3">
									  <a href="takeExam?test=flutter"
										>Basics of Vue.js</a
									  >
									</h4>
									<p>
									  One make creepeth man bearing their one
									  firmament won't fowl meat over sea
									</p>
									<div
									  class="course_meta d-flex justify-content-lg-between align-items-lg-center flex-lg-row flex-column mt-4"
									></div>
								  </div>
								</div>
	
								<div class="single_course">
								  <div class="course_head">
									<img
									  class="img-fluid"
									  src="${pageContext.request.contextPath}/img/subjects/js.jpg"
									  alt=""
									/>
								  </div>
								  <div class="course_content">
									<span class="price">10min</span>
									<span class="tag mb-4 d-inline-block"
									  >EASY</span
									>
									<h4 class="mb-3">
									  <a href="takeExam?test=mongodb"
										>Basics of JavaScript</a
									  >
									</h4>
									<p>
									  One make creepeth man bearing their one
									  firmament won't fowl meat over sea
									</p>
									<div
									  class="course_meta d-flex justify-content-lg-between align-items-lg-center flex-lg-row flex-column mt-4"
									></div>
								  </div>
								</div>
							  </div>
							</div>
						  </div>
						</div>
					  </div>
					  <!--================ Start Home Banner Area =================-->
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
	
<!-- Logged as <a href="#" class="button username">${sessionScope.user}</a> -->