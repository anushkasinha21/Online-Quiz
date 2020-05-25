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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/subjects.css" />
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
					  <a class="nav-link" href="index.html">Home</a>
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
					<li class="nav-item">
					  <a href="#" class="nav-link search" id="search">
						<i class="ti-search"></i>
					  </a>
					</li>
				  </ul>
				</div>
			  </div>
			</nav>
		  </div>
		</header>
    <!--================ End Header Menu Area =================-->

    <!--================ Start Home Banner Area =================-->
    <section class="home_banner_area" style="background: url(${pageContext.request.contextPath}/img/banner/result.jpg);background-size: cover;">
      <div class="banner_inner">
        <div class="container">
          <div class="row" style="margin-left: 350px; margin-bottom: 52px;">
            <div class="login-body" >
              <div class="login">
                <div class="login-screen">
                  <!--================ End Header Menu Area =================-->
                  <div class="popular_courses">
                    <div class="container">
                      <div class="row justify-content-center">
                        <div class="col">
                          <div class="main_title_subject">
                            <h2>Quiz Result</h2>
                            <p>
                              You have Scored
                            </p>
                          </div>
                        </div>
                      </div>
                      <div class="row">
                          <div>
                              <table border=1>
        <tr>
            <td class="head">
                Quiz :
            </td>
            <td>
                <span id="lblSubject">${sessionScope.exam}</span></td>
        </tr>
        <tr>
            <td class="head">
                Starting Time :
            </td>
            <td >
                <span id="lblStime">${sessionScope.started}</span></td>
        </tr>
        
              
                <tr>
            <td class="head">
               No. of Questions :
            </td>
            <td>
                <span id="lblNquestions">${sessionScope.totalNumberOfQuizQuestions}</span></td>
        </tr>
        
                <tr>
            <td class="head">
                No. of correct answers :
            </td>
            <td>
                <span id="lblNcans">${requestScope.result}</span></td>
        </tr>
        
    </table>
                              
                              <c:if test="${requestScope.result >= 3}">
                                 <h3 align="center">Passed</h3>
                              </c:if>
                              <c:if test="${requestScope.result < 3}">
                                 <h3 align="center">Failed</h3>
                              </c:if>
                              <h3 align="center"><a href='${pageContext.request.contextPath}/exam/review'>Review Answers</a></h3><br>
                              <h3 align="center"><a href='${pageContext.request.contextPath}'>Take Another Exam</a></h3><br>
                              <h3 align="center"><a href='${pageContext.request.contextPath}'>Back to HomePage</a></h3>
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
    <!--================ End Home Banner Area =================-->
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