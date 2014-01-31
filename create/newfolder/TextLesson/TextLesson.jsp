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
<jsp:include page="/JSP/TextLesson_LessonLeadingText.jsp" />	
<jsp:include page="../../TextLessonPreviewL.txt" />	
<jsp:include page="/JSP/TextLesson_LessonIntermediateText.jsp" />	
<jsp:include page="../../TextLessonPreviewR.txt" />	
<jsp:include page="/JSP/TextLesson_LessonTrailingText.jsp" />	
</div>

<%@ include file="/JSP/TextLesson_postLessonIncludes.jsp" %>

</body>
</html>