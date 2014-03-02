<!DOCTYPE html>
<html>
<head>
<%@ page import="java.lang.*"%>
<%@ page import="java.io.*"%>

<%@ include file="/JSP/PracticeProblemsHead.jsp" %>

<!-- This variable is handled in /JS/postLessonJavaScript.js .-->
<script>var title = "Chain Rule Problems";</script>

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
<script>
function displayDifficulty() {
document.getElementById('difficultyDisplay').innerHTML=document.getElementById('difficultyLevel').value;
}
</script>
</head>
<body>

<%@ include file="/JSP/TextLesson_preLessonIncludes.jsp" %>
<%@ include file="../../TopicsMenu.jsp" %>

<div id="bookcover">
<%@ include file="/JSP/bookpages.jsp" %>

<jsp:include page="/JSP/TextLesson_LessonLeadingText.jsp" />	
<!-- Set the difficulty: -->
<form name="difficultySetter" action="PracticeProblems.jsp">
<div id="difficultyContainer">
Difficulty level:  1<input type="range" name="difficultyLevel" id="difficultyLevel" 
min="1" max="10" onChange="displayDifficulty()">10
<div id="difficultyDisplay"></div>
<%
if (request.getParameter("difficultyLevel") != null)
	{
	String difficulty = request.getParameter("difficultyLevel");
	session.setAttribute( "problemDifficultyLevel" , difficulty );
	}
%>
<input type="submit" value="Set Difficulty" style="position:absolute;right:0;width:100px;">
</div>
</form>
<BR><BR><BR><BR>
<!-- Keep slider at the same value -->
<%
if (session.getAttribute( "problemDifficultyLevel" ) != null)
	{
	String problemDifficultyLevel = (String)session.getAttribute( "problemDifficultyLevel" );
	%>
	<script>
	document.getElementById('difficultyLevel').value = <%=problemDifficultyLevel%>
	</script>
	<%
	}
else if (request.getParameter("difficultyLevel") != null)
	{
	String problemDifficultyLevel = request.getParameter("difficultyLevel");
	%>
	<script>
	document.getElementById('difficultyLevel').value = <%=problemDifficultyLevel%>
	</script>
	<%
	}
%>
<!--Some java code to decide which lesson to include will be inserted here. -->
<%
String appPath = session.getServletContext().getRealPath(request.getContextPath());
String thisPath = request.getRequestURI();
File fj = new File(appPath + thisPath);
File f = fj.getParentFile();
File[] files = f.listFiles();
String author = "";
if (session.getAttribute("problemDifficultyLevel") != null)
	{
	String problemDifficultyLevel = (String)session.getAttribute("problemDifficultyLevel");
	int pref = Integer.parseInt(problemDifficultyLevel);
	
	for (int ac=1; ac<11; ac++)
		{
		%>
		<%=ac%>
		<%
		for (int i=0; i<files.length; i++)
			{
			String infoPath = files[i] + "/info.txt";
			File file = new File(infoPath);
			if (file.exists())
				{
				FileReader fr = new FileReader(file);
				BufferedReader br = new BufferedReader(fr);
				String line = br.readLine();
				int prob = Integer.parseInt(line);
				if (Math.abs(prob-pref)<ac)
					{
					author = files[i].getName();
					}
				br.close();
				fr.close();
				}
			}
		if (author != "")
				break;
		}
	}%>
	<%
	

if (author == "")
	{
	author="PracticeProblems_default";
	}

String bestPageL = author + "/L.txt";
String bestPageR = author + "/R.txt";
%>

<jsp:include page="<%=bestPageL%>" />	
<jsp:include page="/JSP/TextLesson_LessonIntermediateText.jsp" />	
<jsp:include page="<%=bestPageR%>" />	
<%=files[2].getName()%>

<jsp:include page="/JSP/TextLesson_LessonTrailingText.jsp" />	

</div>

<%@ include file="/JSP/TextLesson_postLessonIncludes.jsp" %>
<script>
displayDifficulty();
</script>
</body>
</html>