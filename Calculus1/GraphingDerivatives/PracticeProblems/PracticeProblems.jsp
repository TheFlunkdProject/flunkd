<!DOCTYPE html>
<html>
<head>
<%@ page import="java.lang.*"%>
<%@ page import="java.io.*"%>

<%@ include file="/JSP/PracticeProblemsHead.jsp" %>
<!-- This variable is handled in /JS/postLessonJavaScript.js .-->
<script>var title = "<%@ include file="../Name.txt" %>";
</script>
</head>
<body>

<%@ include file="/JSP/PracticeProblems_preLessonIncludes.jsp" %>
<%@ include file="../../TopicsMenu.jsp" %>

<div id="bookcover">
<%@ include file="/JSP/bookpages.jsp" %>

<jsp:include page="/JSP/TextLesson_LessonLeadingText.jsp" />	
<%@ include file="/JSP/PracticeProblems_ProblemFinder.jsp" %>
<jsp:include page="<%=bestPageL%>" />	<!-- defined in PracticeProblems_ProblemFinder-->
<jsp:include page="/JSP/TextLesson_LessonIntermediateText.jsp" />	
<jsp:include page="<%=bestPageR%>" />	
<jsp:include page="/JSP/TextLesson_LessonTrailingText.jsp" />	

</div>
<%@ include file="/JSP/PracticeProblems_postLessonIncludes.jsp" %>
</body>
</html>