<%@ page language="java" import="co.edureka.quiz.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/questions.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/register.css" >
<title>Quiz</title>
 <style type="text/css">
body {
	background: url("${pageContext.request.contextPath}/img/banner/result.jpg");
	background-size: cover;
	font-family: "Roboto";
}
.bt:hover{
	background:#7b838a;
	font-color:white;
}
.form_sep{
  background: #fff;
  border-radius: 5px;
  border-left: 2px solid #f8b600;
  border-bottom: 1px solid #f8b600;
  display:flex;
  justify-content:left;
  padding: 2px;
  width:400px;
  align-items: center;
  margin-top:-17px;
  margin-left:-8px;
  font-size:20px;

}
</style>
<script language ="javascript" >
        var tim;       
        var min = '${sessionScope.min}';
        var sec = '${sessionScope.sec}';
       
        
        function customSubmit(someValue){  
        	 document.questionForm.minute.value = min;   
        	 document.questionForm.second.value = sec; 
        	 document.questionForm.submit();  
        	 }  
			
        function examTimer() {
            if (parseInt(sec) >0) {
			
			    document.getElementById("showtime").innerHTML = "Time Remaining :"+min+"min : " + sec+"sec";
                sec = parseInt(sec) - 1;                
                tim = setTimeout("examTimer()", 1000);
            }
            else {
			
			    if (parseInt(min)==0 && parseInt(sec)==0){
			    	document.getElementById("showtime").innerHTML = "Time Remaining :"+min+"min : " + sec+"sec";
				     alert("Time Up");
				     document.questionForm.minute.value=0;
				     document.questionForm.second.value=0;
				     document.questionForm.submit();
					 
			     }
				 
                if (parseInt(sec) == 0) {				
				    document.getElementById("showtime").innerHTML = "Time Remaining :"+min+"min : " + sec+"sec";					
                    min = parseInt(min) - 1;
					sec=59;
                    tim = setTimeout("examTimer()", 1000);
                }
               
            }
        }
    </script>

</head><br/>

<body onload="examTimer()">

<div style="position:absolute;left:50px;top:20px">
<%
  int currentQuestion=((Exam)request.getSession().getAttribute("currentExam")).getCurrentQuestion();
 // System.out.println("Question Number "+currentQuestion+ " retrieved ");
 %>
<h3>Current Question ${sessionScope.quest.questionNumber+1} / ${sessionScope.totalNumberOfQuizQuestions}</h3>
</div>

<div id="showtime" style="position:absolute;left:1050px;top:22px;font-size:30px;background-color:rgb(31,33,35,0.3); border-left: 4px solid #f8b600;
  vertical-align: center;
  padding: 12px;
  align-content: center;
  border-radius: 5px;"></div> 
<blockquote class="generic-blockquote" style="margin-top:80px; font-size:28px; border-radius: 5px;">
	${sessionScope.quest.questionNumber+1})	${sessionScope.quest.question}
                  </blockquote>
<br/><br/>


<form action="exam" method="post" name="questionForm" style="margin-left:50px; ">
 <c:forEach var="choice" items="${sessionScope.quest.questionOptions}" varStatus="counter">
 <div class="form_sep">
 
 <div style="margin-left:-100px;">
<input type="radio" style="float:left;"name="answer" value="${counter.count}"> 
 </div>
  <p style="margin-left:-100px;">
  ${counter.count})     ${choice}
  </p>
  </div>
<br/>
 </c:forEach> <br/> 
 
 
 <%-- <c:if test="${sessionScope.quest.questionNumber > 0}">
 <input type="submit" class="bt" name="action" value="Previous" onclick="customSubmit()" />
 </c:if> --%>
 
 <c:if test="${sessionScope.quest.questionNumber < sessionScope.totalNumberOfQuizQuestions-1}">
 <input type="submit" class="bt" name="action" value="Next" onclick="customSubmit()"  />
 </c:if> 
 

 <input style="background:#f8b600;" type="submit" name="action" value="Finish Exam" onclick="customSubmit()" />
 
<input type="hidden" name="minute"/> 
<input type="hidden" name="second"/>

</form>




</body>
</html>