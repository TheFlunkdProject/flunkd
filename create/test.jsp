<!doctype html>
<html>
<head>
</head>
<body>
<%@ page import="java.io.*,java.lang.*" %>
<%
File f = new File("/home/learnfla/tomcat/webapps/learningflare.com/ROOT/create/TextLessonPreview.txt");
if (!f.exists())f.createNewFile();

String specialScript = "apple";

String leftpage = "<div id=\"leftpage\"> <img class=\"pageTexture\" src=\"/create/texture.png\">" + 
	"\n <div class=\"calcheaderleft\" " + 
	"\n \t onmouseover=\"topicsMenuOn()\" \n \t onmouseout=\"topicsMenuOff()\" " + 
	"\n \t >Chain Rule</div> \n \n 	<div class=\"LeftPageTextContainer\"> <h3>3.7 - " + 
	"Chain Rule</h3> \n <!-- The unique lesson content goes here -->";

	
StringBuffer lefttext = new StringBuffer(request.getParameter("leftpage"));
int locl = (new String(lefttext)).indexOf('\n');
while(locl > 0)
	{
	lefttext.replace(locl, locl+1, "<BR>");
	locl = (new String(lefttext)).indexOf('\n');
	}

	
String rightpage = "</div>" + 
" \n </div>" +
"\n <div id=\"rightpage\"><img class=\"pageTexture\" src=\"/create/texture.png\">" + 

"\n \n <div class=\"calcheaderright\" " + 
	"\n \t onmouseover=\"classesMenuOn()\";" + 
	"\n \t onmouseout=\"classesMenuOff()\";" + 
	"\n \t onclick=\"(this).style.backgroundColor=\'red\'\">Calculus 1</div>" + 


		"\n \n \t <div class=\"RightPageTextContainer\">" + 
"<!-- The unique lesson content goes here -->";


StringBuffer righttext = new StringBuffer(request.getParameter("rightpage"));
int locr = (new String(righttext)).indexOf('\n');
while(locr > 0)
	{
	righttext.replace(locr, locr+1, "<BR>");
	locr = (new String(righttext)).indexOf('\n');
	}

	
String righttextend = "</div> \n </div>";



PrintWriter pw = new PrintWriter(new FileOutputStream("/home/learnfla/tomcat/webapps/learningflare.com/ROOT/create/TextLessonPreview.txt"));
pw.println(leftpage + lefttext + rightpage + righttext + righttextend);
pw.close();
%>
<script>
window.open('http://www.learningflare.com/create/newfolder/TextLesson/TextLesson.jsp', 'Preview');
</script>




</body>
</html>



