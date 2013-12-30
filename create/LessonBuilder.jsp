<!doctype html>
<html>
<head>
<script language="javascript" type="text/javascript">
function addtext() {
	var newtext = '<span title=""></span>';
	document.lessontext.outputtext.value += newtext;
}
</script>
<style>
#textarea {
	position:absolute;
	height:80%;
	top:10%;
	left:150px;
	right:10px;
}

#buttons {
	position:absolute;
	left:10px;
	top:100px;
	width:130px;
	height:80%;
}

#footer {
	position:absolute;
	width:80%;
	left:0%;
	right:0%;
	margin:auto;
	height:30px;
	bottom:10px;
}
	
</style>

</head>
<body>
<%@ page import="java.io.*,java.lang.*" %>


<form name="lessontext">
	<div id="buttons">
	<table border="0" cellspacing="0" cellpadding="5">
		<tr>
			<td>
			<input title="Insert your label inside the title='' text, and insert the stuff to be labled between the > and < signs." type="button" value="Hidden Info Box" onClick="addtext();">
			</td>
			<td>
			</td>
		</tr>
	</table>
	</div>
<textarea id="textarea" name="outputtext"></textarea>
</form>


<div id="footer">
	<form name="footeractions">
		<table border="0" cellspacing="0" cellpadding="5">
			<tr>
				<td>
				<% if(request.getParameter("submit")!=null)
				{
					File f = new File("/home/learnfla/tomcat/webapps/learningflare.com/ROOT/create/TextLessonPreview.jsp");
					if (!f.exists())
					f.createNewFile();
					
					if(request.getParameter("outputtext")!=null)
					{
						StringBuffer text = new StringBuffer(request.getParameter("outputtext"));
					
						int loc = (new String(text)).indexOf('\n');
						while(loc > 0) 
						{
							text.replace(loc, loc+1, "<BR>");
							loc = (new String(text)).indexOf('\n');
						}
					
					
					PrintWriter pw = new PrintWriter(new FileOutputStream("/home/learnfla/tomcat/webapps/learningflare.com/ROOT/create/TextLessonPreview.jsp"));
					pw.println(text);
					pw.close();
					}
					
					
					
					
					%>
					<script>window.open('http://www.learningflare.com/create/newfolder/TextLesson/TextLesson.jsp', 'Preview');</script>
					<%
				}
				%>
				<input type="submit" name="submit" value="Preview">
				</td>
			</tr>
		</table>
	</form>
</div>

</body>
</html>