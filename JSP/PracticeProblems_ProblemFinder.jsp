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
		<%=ac-1%>
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