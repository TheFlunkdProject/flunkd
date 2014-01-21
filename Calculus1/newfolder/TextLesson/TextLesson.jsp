<DOCTYPE! html>
<html>
<head>


<%@ include file="/JSP/TextLessonHead.jsp" %>


</head>
<body>

<%@ include file="/JSP/TextLesson_preLessonIncludes.jsp" %>

<div id="bookcover">
<%@ include file="/JSP/bookpages.jsp" %>

<!--Some java code to decide which lesson to include will be inserted here. -->
<jsp:include page="/JSP/TextLesson_LessonLeadingText.txt" />	
<jsp:include page="TextLesson_pears22/L.txt" />	
<jsp:include page="/JSP/TextLesson_LessonIntermediateText.txt" />	
<jsp:include page="TextLesson_pears22/R.txt" />	
<jsp:include page="/JSP/TextLesson_LessonTrailingText.txt" />	
</div>

<%@ include file="/JSP/TextLesson_postLessonIncludes.jsp" %>

</body>
</html>
<%@ include file="TextLesson_pears22.jsp" %> 
</div>

<%@ include file="/JSP/TextLesson_postLessonIncludes.jsp" %>

</body>
</html>