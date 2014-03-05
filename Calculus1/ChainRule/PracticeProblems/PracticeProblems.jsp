<!DOCTYPE html>
<html>
<head>
<%@ page import="java.lang.*"%>
<%@ page import="java.io.*"%>

<%@ include file="/JSP/PracticeProblemsHead.jsp" %>

<!-- This variable is handled in /JS/postLessonJavaScript.js .-->
<script>var title = "<%@ include file="../Name.txt" %>";</script>

<style>
#difficultyContainer {
	position:absolute;
	width:400px;
	height:50px;
	left:0;
	right:0;
	background-color:#BBBBBB;
}
#difficultyDisplay {
	position:absolute;
	width:20px;
	height:20px;
	bottom:0px;
	color:#111111;
}
</style>
</head>
<body>

<%@ include file="/JSP/TextLesson_preLessonIncludes.jsp" %>
<%@ include file="../../TopicsMenu.jsp" %>

<div id="bookcover">
<%@ include file="/JSP/bookpages.jsp" %>

<jsp:include page="/JSP/TextLesson_LessonLeadingText.jsp" />	
<%@ include file="/JSP/PracticeProblems_ProblemFinder.jsp" %>
<jsp:include page="<%=bestPageL%>" />	
<jsp:include page="/JSP/TextLesson_LessonIntermediateText.jsp" />	
<jsp:include page="<%=bestPageR%>" />	
<jsp:include page="/JSP/TextLesson_LessonTrailingText.jsp" />	

</div>

<%@ include file="/JSP/PracticeProblems_postLessonIncludes.jsp" %>
</body>
</html>