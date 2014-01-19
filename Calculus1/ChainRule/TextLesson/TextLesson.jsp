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
<%@ include file="TextLesson_pears22.jsp" %> 
</div>

<%@ include file="/JSP/TextLesson_postLessonIncludes.jsp" %>

</body>
</html>