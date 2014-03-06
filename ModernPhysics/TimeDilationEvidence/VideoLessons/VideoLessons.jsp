<DOCTYPE! html>
<html>
<head>

<!-- this is for video lessons with the same style as text lessons... -->
<%@ include file="/JSP/TextLessonHead.jsp" %>

<!-- This variable is handled in /JS/postLessonJavaScript.js .-->
<script>var title = "<%@ include file="../Name.txt" %>";</script>

</head>
<body>

<%@ include file="/JSP/TextLesson_preLessonIncludes.jsp" %>
<%@ include file="../../TopicsMenu.jsp" %>

<div id="bookcover">
<%@ include file="/JSP/bookpages.jsp" %>

<!--Some java code to decide which lesson to include will be inserted here. -->
<jsp:include page="/JSP/TextLesson_LessonLeadingText.jsp" />	
<jsp:include page="VideoLessons_pears22/L.txt" />	
<jsp:include page="/JSP/TextLesson_LessonIntermediateText.jsp" />	
<jsp:include page="VideoLessons_pears22/R.txt" />	
<jsp:include page="/JSP/TextLesson_LessonTrailingText.jsp" />	
</div>

<%@ include file="/JSP/TextLesson_postLessonIncludes.jsp" %>

</body>
</html>