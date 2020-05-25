<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
   
    <title>
        HTML Document Structure
    </title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css">
    <style type="text/css">
body {
	background: url("${pageContext.request.contextPath}/images/background.jpg");
}
.user-icon {
	top:153px; /* Positioning fix for slide-in, got lazy to think up of simpler method. */
	background: rgba(65,72,72,0.75) url('${pageContext.request.contextPath}/images/user-icon.png') no-repeat center;	
}

.pass-icon {
	top:201px;
	background: rgba(65,72,72,0.75) url('${pageContext.request.contextPath}/images/pass-icon.png') no-repeat center;
}


</style>
</head>
<body>

<div id='cssmenu'>
<ul>
   <li class=''><a href='${pageContext.request.contextPath}'><span>Home</span></a></li>
   <li><a href='${pageContext.request.contextPath}/login'><span>Login</span></a></li>
   <li><a href='${pageContext.request.contextPath}/register'><span>Register</span></a></li>
   <li class='#'><a href='${pageContext.request.contextPath}/SubmitAQuestion'><span>Submit a Question</span></a></li>
    <li class=''><a href='#'><span>Feedback</span></a></li>
   <li><a href='#'><span>Contribute</span></a></li>
   <li><a href='#'><span>Contact us</span></a></li>
</ul>
</div>

<div id="wrapper">

	<form name="login-form" class="login-form" action="SubmitQuestionController" method="post">
	
		<div class="header">
		<h1>Submit A Question </h1>
		<span></span>
		</div>
	
		<div class="content">
		<input name="Subject" type="text" class="input username" placeholder="Subject" />
		<div class="user-icon"></div><br><br>
		<input name="Question" type="text" class="input username" placeholder="Question" />
		<div class="user-icon"></div>
		<input name="Option-1" type="text" class="input username" placeholder="Option-1" />
		<div class="user-icon"></div><br><br>
		<input name="Option-2" type="text" class="input username" placeholder="Option-2" />
		<div class="user-icon"></div><br><br>
		<input name="Option-3" type="text" class="input username" placeholder="Option-3" />
		<div class="user-icon"></div><br><br>
		<input name="Option-4" type="text" class="input username" placeholder="Option-4" />
		<div class="user-icon"></div><br><br>
		<input name="Correct" type="text" class="input username" placeholder="Correct Answer" />
		<div class="user-icon"></div><br><br>	
		</div>

		<div class="footer">		
		<input type="submit" class="button" name="submit" value="SUBMIT QUESTION" class="button" />
		</div>
	
	</form>

</div>
<div class="gradient"></div>
