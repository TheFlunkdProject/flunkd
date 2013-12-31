<DOCTYPE! html>
<html>
<head>


<%@ include file="/JSP/TextLessonHead.jsp" %>


</head>
<body>


<%@ include file="/JSP/StyleChanger.jsp" %>

<%@ include file="/JSP/TopicMisc.jsp" %>

<%@ include file="/JSP/HorizontalBanner.jsp" %>

<%@ include file="/JSP/VerticalBanner.jsp" %>

<%@ include file="/JSP/HighlightMenu.jsp" %>

<%@ include file="/JSP/ToolsMenu.jsp" %>

<%@ include file="/JSP/MediaMenu.jsp" %>

<%@ include file="/JSP/ContactPhone.jsp" %>

<%@ include file="/JSP/ClassesMenu.jsp" %>

<%@ include file="/Calculus1/Calculus1TopicsMenu.jsp" %>


<div id="bookcover">
<%@ include file="/JSP/bookpages.jsp" %>

<jsp:include page="../../TextLessonPreview.txt" />	
<%
%>
</div>
<script src="/JS/TextLesson.js"></script>

</body>
</html>