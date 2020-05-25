<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<!DOCTYPE html>
	<html lang="en">
	  <head>
		<!-- Required meta tags -->
		<meta charset="utf-8" />
		<meta
		  name="viewport"
		  content="width=device-width, initial-scale=1, shrink-to-fit=no"
		/>
		<link rel="icon" href="img/favicon.png" type="image/png" />
		<title>Courses</title>
		<!-- Bootstrap CSS -->
		<link rel="stylesheet" href="css/bootstrap.css" />
		<link rel="stylesheet" href="css/flaticon.css" />
		<link rel="stylesheet" href="css/themify-icons.css" />
		<link rel="stylesheet" href="vendors/owl-carousel/owl.carousel.min.css" />
		<link rel="stylesheet" href="vendors/nice-select/css/nice-select.css" />
		<!-- main css -->
		<link rel="stylesheet" href="css/style.css" />
	  </head>
	
	  <body>
		<!--================ Start Header Menu Area =================-->
		<header class="header_area white-header">
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
	
			<nav
			  class="navbar navbar-expand-lg navbar-light"
			  style="background: white;"
			>
			  <div class="container">
				<!-- Brand and toggle get grouped for better mobile display -->
				<a class="navbar-brand" href="index.html">
				  <img class="logo-2" src="img/logo.png" alt="" />
				</a>
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
					<li class="nav-item">
					  <a class="nav-link" href="${pageContext.request.contextPath}">Home</a>
					</li>
					<li class="nav-item submenu dropdown active">
					  <a
						href="#"
						class="nav-link dropdown-toggle"
						data-toggle="dropdown"
						role="button"
						aria-haspopup="true"
						aria-expanded="false"
						>Pages</a
					  >
					  <ul class="dropdown-menu">
						<li class="nav-item">
						  <a class="nav-link" href="courses.html">Courses</a>
						</li>
						<li class="nav-item">
						  <a class="nav-link" href="course-details.html"
							>Course Details</a
						  >
						</li>
						<li class="nav-item">
						  <a class="nav-link" href="elements.html">Elements</a>
						</li>
					  </ul>
					</li>
					<li class="nav-item submenu dropdown">
					  <a
						href="#"
						class="nav-link dropdown-toggle"
						data-toggle="dropdown"
						role="button"
						aria-haspopup="true"
						aria-expanded="false"
						>Blog</a
					  >
					  <ul class="dropdown-menu">
						<li class="nav-item">
						  <a class="nav-link" href="blog.html">Blog</a>
						</li>
						<li class="nav-item">
						  <a class="nav-link" href="single-blog.html"
							>Blog Details</a
						  >
						</li>
					  </ul>
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
	
		<!--================Home Banner Area =================-->
		<section class="banner_area">
		  <div class="banner_inner d-flex align-items-center ">
			<div class="overlay"></div>
			<div class="container mt-5" style>
			  <div class="row justify-content-center">
				<div class="col-lg-6">
				  <div class="banner_content text-center">
					<h2 style="color: #fdc632;">Admin Dashboard</h2>
					<div class="page_link">
					  <a href="index.html">Home</a>
					  <a style="color: #fdc632;" href="courses.html"
						>Admin Dashboard</a
					  >
					</div>
				  </div>
				</div>
			  </div>
			</div>
		  </div>
		</section>
		<!--================End Home Banner Area =================-->
	
		<!--================ Start Popular Courses Area =================-->
		<div class="popular_courses section_gap_top">
		  <div class="container">
			<div class="row justify-content-center">
			  <div class="col-lg-5">
				<div class="main_title">
				  <h2 class="mb-3">Welcome Back</h2>
				  <p>
					Fill the following form to submit a question
				  </p>
				</div>
			  </div>
			</div>
			<div class="container">
			  <!-- single course -->
			  <div class="comment-form">
				<h4>Submit New Question</h4>
				<form  name="login-form" class="login-form" action="SubmitQuestionController" method="post">
				  <div class="form-group form-inline">
					<div class="form-group col-lg-6 col-md-6 name">
					  <input
						type="text"
						class="form-control"
						id="name"
						placeholder="Enter Name"
						onfocus="this.placeholder = ''"
						onblur="this.placeholder = 'Enter Name'"
					  />
					</div>
					<div class="form-group col-lg-6 col-md-6 email">
					  <input
						type="email"
						class="form-control"
						id="email"
						placeholder="Enter email address"
						onfocus="this.placeholder = ''"
						onblur="this.placeholder = 'Enter email address'"
					  />
					</div>
				  </div>
				  <div class="form-group">
					<div class="form-select" id="default-select2">
					 <select name="Subject">
						<option value="1">Subject</option>
						<option value="flutter">Flutter</option>
						<option value="vue">Vue</option>
						<option value="react">React</option>
						<option value="mongodb">JavaScript</option>
						<option value="node">Node</option>
					  </select>
					</div>
				  </div>
				  <div class="form-group">
					<textarea
					  class="form-control mb-10"
					  rows="5"
					  name="Question"
					  placeholder="Question"
					  onfocus="this.placeholder = ''"
					  onblur="this.placeholder = 'Question'"
					  required=""
					></textarea>
				  </div>
	
				  <div class="form-group">
					<input
					  type="text"
					  class="form-control"
					  name="Option-1"
					  id="Option 1"
					  placeholder="Option 1"
					  onfocus="this.placeholder = ''"
					  onblur="this.placeholder = 'Option 1'"
					/>
				  </div>
	
				  <div class="form-group">
					<input
					  type="text"
					  class="form-control"
					  name="Option-2"
					  id="Option 2"
					  placeholder="Option 2"
					  onfocus="this.placeholder = ''"
					  onblur="this.placeholder = 'Option 2'"
					/>
				  </div>
	
				  <div class="form-group">
					<input
					  type="text"
					  class="form-control"
					  name="Option-3"
					  id="Option 3"
					  placeholder="Option 3"
					  onfocus="this.placeholder = ''"
					  onblur="this.placeholder = 'Option 3'"
					/>
				  </div>
	
				  <div class="form-group">
					<input
					  type="text"
					  class="form-control"
					  id="Option 4"
					  name="Option-4"
					  placeholder="Option 4"
					  onfocus="this.placeholder = ''"
					  onblur="this.placeholder = 'Option 4'"
					/>
				  </div>
				  
				  <div class="form-group">
					  <input
						type="text"
						class="form-control"
						id="Correct"
						name="Correct"
						placeholder="Correct Answer"
						onfocus="this.placeholder = ''"
						onblur="this.placeholder = 'Correct Answer'"
					  />
					</div>
					<input type="submit" class="primary-btn" name="submit" value="SUBMIT QUESTION"/>
				</form>
			  </div>
			</div>
		  </div>
		</div>
		<script src="js/jquery-3.2.1.min.js"></script>
		<script src="js/popper.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="vendors/nice-select/js/jquery.nice-select.min.js"></script>
		<script src="vendors/owl-carousel/owl.carousel.min.js"></script>
		<script src="js/owl-carousel-thumb.min.js"></script>
		<script src="js/jquery.ajaxchimp.min.js"></script>
		<script src="js/mail-script.js"></script>
		<!--gmaps Js-->
		<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCjCGmQ0Uq4exrzdcL6rvxywDDOvfAu6eE"></script>
		<script src="js/gmaps.min.js"></script>
		<script src="js/theme.js"></script>
	  </body>
	</html>
	