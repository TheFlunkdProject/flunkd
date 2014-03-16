<!doctype html>
<%@ page import="java.lang.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>
<html>
<head>
<script src="/JS/ExpressionEvaluater.js" type="text/javascript"></script>
<script type="text/x-mathjax-config">
  MathJax.Hub.Config({
   tex2jax: {inlineMath: [["$","$"]]},
   displayAlign: "center",
   displayIndent: "0.1em"
  });
</script>
<script src="http://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS_HTML.js"></script>

<link rel="stylesheet" type="text/css" href="ProblemCreator.css"/>

</head>



<body>
<form name="fCreateProblem" action="ProblemCreator.jsp" method="get">
	<input type="hidden" name="hCourse" id="hCourse"/>
	<input type="hidden" name="hTopic" id="hTopic"/>
	<input type="hidden" name="hQuestion" id="hQuestion"/>
	<input type="hidden" name="hVar1From" id="hVar1From"/>
	<input type="hidden" name="hVar1To" id="hVar1To"/>
	<input type="hidden" name="hVar2From" id="hVar2From"/>
	<input type="hidden" name="hVar2To" id="hVar2To"/>
	<input type="hidden" name="hAnswer" id="hAnswer"/>
	<input type="hidden" name="hDifficulty" id="hDifficulty"/>
	<input type="hidden" name="hExample" id="hExample"/>
	
	<input type="hidden" name="problemSubmitted" id="problemSubmitted"/>
</form>
<div id="mainContainer">
	<div id="mainHeader">
		<div id="titleHeader">
		Problem Creator
		</div>
		<div id="d1">
			This problem creator can give each user unique numbers to work with. 
			Random numbers will be inserted for var1 and var2 in the question you write.
		</div>
		<div id="pathBanner">
			Course:
			<select name="courseName" id="courseName" onchange="updateCourse()">
				<option value="" selected="selected"></option>
			</select>
		<%
		String appPath = session.getServletContext().getRealPath(request.getContextPath());
		File appFile = new File(appPath);
		File[] listMain = appFile.listFiles();
		
		for (int i = 0; i < listMain.length; i+=1)
			{
			String courseName = listMain[i].getName();
			String coursePath = listMain[i].getPath() + "/TopicsMenu.jsp";
			File topicsMenu = new File(coursePath);
			if (topicsMenu.exists())  //This checks if the folder is for a course or not
				{
				%>
				<script>
				var courseName = "<%=courseName%>";
	
				var thisTime = "option<%=i%>";
				
				var newOption = document.createElement('option');
				newOption.setAttribute('id', thisTime);
				newOption.value = courseName;
				newOption.text = courseName;
				var select = document.getElementById('courseName');
				select.appendChild(newOption);
				</script>
				<%
				}
			}
		if (request.getParameter("hCourse") != null) //carry over through form submission
			{
			String hCourse = request.getParameter("hCourse");
			%>
			<script>
			document.getElementById('courseName').value = "<%=hCourse%>";
			</script>
			
			
			Topic:
			<select name="topicName" id="topicName" onChange="updateTopic()">
				<option value="" selected="selected"></option>
			</select>
			<%// Now list all of the topics in the course:
			String hCoursePath = appPath + "/" + hCourse;
			File hCourseFile = new File(hCoursePath);
			File[] listTopics = hCourseFile.listFiles();
			
			for (int i=0; i<listTopics.length; i++)
				{
				String topicName = listTopics[i].getName();
				String checkIfTopicPath = listTopics[i].getPath() + "/TextLesson";
				File checkIfTopicFile = new File(checkIfTopicPath);
				if (checkIfTopicFile.exists())  //This checks if the folder is for a topic or not
					{
					%>
					<script>
					var topicName = "<%=topicName%>";
		
					var thisTime = "option<%=i%>";
					
					var newOption = document.createElement('option');
					newOption.setAttribute('id', thisTime);
					newOption.value = topicName;
					newOption.text = topicName;
					var select = document.getElementById('topicName');
					select.appendChild(newOption);
					</script>
					<%
					}
				}
				
			}
			if (request.getParameter("hTopic") != null)
				{
				String hTopic = request.getParameter("hTopic");
				%>
				<script>
				document.getElementById('topicName').value = "<%=hTopic%>";
				</script>
				<%
				}
			%>
		</div>
		
	</div>
	<div id="mainLeft">
		<div id="d2">
			Question:
			<textarea id="question"></textarea>
		</div>
		<p id="p2">
			Within what range would you like var1 and var2 to be generated?
		</p>
		<p>
		var1 range: <input type="text" id="var1From"/> to <input type="text" id="var1To"/>
		<br>
		var2 range: <input type="text" id="var2From"/> to <input type="text" id="var2To"/>
		</p>
		<p id="p3">
			What form should the answer be in?
			<input type="text" id="answer"/>
		</p>
		<br>
		<input type="button" id="previewProblemButton" onclick="previewProblem();" value="Preview Problem"/>
	</div>
	<div id="mainRight">
		<div id="exampleLabel">
		To help struggling students, you can write an example of how to do this 
		kind of problem here. Enclose equations with dollar signs and write them in LaTeX.
		</div>
		<textarea id="example"></textarea>
	</div>
</div>
<div id="problemPreview">
	<p id="generatedQuestion">
	</p>
	<input type="text" id="userAnswer"/>
	<input type="button" id="checkAnswer" onclick="answerProblem();" value="Check"/>
	<p id="feedback">
	</p>
	<p>
		On a scale of 1 to 10, how difficult is this problem?
	<input type="text" id="difficulty"/>
	</p>
	<input type="button" id="closeProlemPreview" onclick="closePreview();" value="Close"/>
	<input type="button" id="submitProblem" onclick="submitProblem();" value="Submit Problem"/>
</div>


<% //This is where we handle problem submissions:
String hCourse = "";
String hTopic = "";
StringBuffer hQuestion = new StringBuffer("");
String hVar1From = "";
String hVar1To = "";
String hVar2From = "";
String hVar2To = "";
String hAnswer = "";
String hDifficulty = "";
StringBuffer hExample = new StringBuffer("");
if (request.getParameter("hCourse") != null)
	{
	hCourse = request.getParameter("hCourse");
	}
if (request.getParameter("hTopic") != null)
	{
	hTopic = request.getParameter("hTopic");
	}
if (request.getParameter("hQuestion") != null)
	{
	hQuestion = new StringBuffer(request.getParameter("hQuestion"));
	int locr = (new String(hQuestion)).indexOf('\n');
	while(locr > 0)
		{
		hQuestion.replace(locr, locr+1, "<BR>");
		locr = (new String(hQuestion)).indexOf('\n');
		}
	}
if (request.getParameter("hVar1From") != null)
	{
	hVar1From = request.getParameter("hVar1From");
	}
if (request.getParameter("hVar1To") != null)
	{
	hVar1To = request.getParameter("hVar1To");
	}
if (request.getParameter("hVar2From") != null)
	{
	hVar2From = request.getParameter("hVar2From");
	}
if (request.getParameter("hVar2To") != null)
	{
	hVar2To = request.getParameter("hVar2To");
	}
if (request.getParameter("hAnswer") != null)
	{
	hAnswer = request.getParameter("hAnswer");
	}
if (request.getParameter("hDifficulty") != null)
	{
	hDifficulty = request.getParameter("hDifficulty");
	}
if (request.getParameter("hExample") != null)
	{
	hExample = new StringBuffer(request.getParameter("hExample"));
	int locr = (new String(hExample)).indexOf('\n');
	while(locr > 0)
		{
		hExample.replace(locr, locr+1, "<BR>");
		locr = (new String(hExample)).indexOf('\n');
		}
	}

Random randomValue = new Random();
int i=(int) (Math.random() * 1000000);
String ranString = String.format("%02d", i);

if (request.getParameter("problemSubmitted") != null && hTopic != "")
	{
	String newTopicProblemFolderPath = session.getServletContext().getRealPath(request.getContextPath()) 
	+ "/" + hCourse + "/" + hTopic + "/PracticeProblems/PracticeProblems_pears22" + ranString;
	%><%=newTopicProblemFolderPath%><%
	
	File newTopicProblemFolder = new File(newTopicProblemFolderPath);
	boolean successful = newTopicProblemFolder.mkdir();
	%><%=successful%><%
	
	String newProblemInfoPath = newTopicProblemFolderPath + "/info.txt";
	File newProblemInfoFile = new File(newProblemInfoPath);
	newProblemInfoFile.createNewFile();
	PrintWriter pw = new PrintWriter(new FileOutputStream(newProblemInfoPath));
	pw.println(hDifficulty);
	pw.close();
	
	//All this is writing to L.txt...
	String allOfL = "\t<input type=\"hidden\" name=\"hCourse\" id=\"hCourse\"> \n\t" + 
		"<input type=\"hidden\" name=\"hTopic\" id=\"hTopic\"> \n\t" + 
		"<input type=\"hidden\" name=\"hQuestion\" id=\"hQuestion\" value=\""+hQuestion+"\"> \n\t" + 
		"<input type=\"hidden\" name=\"hVar1From\" id=\"hVar1From\" value=\""+hVar1From+"\"> \n\t" + 
		"<input type=\"hidden\" name=\"hVar1To\" id=\"hVar1To\" value=\""+hVar1To+"\"> \n\t" + 
		"<input type=\"hidden\" name=\"hVar2From\" id=\"hVar2From\" value=\""+hVar2From+"\"> \n\t" + 
		"<input type=\"hidden\" name=\"hVar2To\" id=\"hVar2To\" value=\""+hVar2To+"\"> \n\t" + 
		"<input type=\"hidden\" name=\"hAnswer\" id=\"hAnswer\" value=\""+hAnswer+"\"> \n\t" + 
		"<input type=\"hidden\" name=\"hDifficulty\" id=\"hDifficulty\" value=\""+hDifficulty+"\"> \n\t" + 
		"<input type=\"hidden\" name=\"hExample\" id=\"hExample\" value=\""+hExample+"\"> \n" + 
	"<p id=\"generatedQuestion\"> \n" + 
	"</p> \n" + 
	"<input type=\"text\" id=\"userAnswer\"> \n" + 
	"<input type=\"button\" id=\"checkAnswer\" onclick=\"answerProblem()\" value=\"Check\"> \n" + 
	"<p id=\"feedback\"> \n" +
	"</p> \n";
	String newProblemLPath = newTopicProblemFolderPath + "/L.txt";
	File newProblemLFile = new File(newProblemLPath);
	newProblemLFile.createNewFile();
	PrintWriter pwl = new PrintWriter(new FileOutputStream(newProblemLPath));
	pwl.println(allOfL);
	pwl.close();
	
	String allOfR = "<div id=\"exampleOpenTrigger\" onmouseover=\"showExampleHover()\" onclick=\"showExample()\"> \n" + 
	"</div> \n" + 
	"<div id=\"example\" style=\"display:none\"> \n" +
	"</div> \n<br>\n" + 
	"<div id=\"exampleCloseTrigger\" onmouseover=\"hideExampleHover()\" onclick=\"hideExample()\"> \n" + 
	"</div> \n" + 
	"\n" + 
	"<script>\n" + 
	"title+=\" Problems\";\n" + 
	"</script>\n";
	String newProblemRPath = newTopicProblemFolderPath + "/R.txt";
	File newProblemRFile = new File(newProblemRPath);
	newProblemRFile.createNewFile();
	PrintWriter pwr = new PrintWriter(new FileOutputStream(newProblemRPath));
	pwr.println(allOfR);
	pwr.close();
	
	
	
	Date creationDate = new Date();
	String ip = request.getRemoteAddr();
	String creationPath = "/home/learnfla/tomcat/webapps/learningflare.com/ROOT/updateLog.txt";
	File creationFile = new File(creationPath);
	creationFile.createNewFile();
	if (creationFile.exists() && creationFile.canWrite())
		{
		BufferedWriter feedbackWriter = new BufferedWriter(new FileWriter(creationFile,true)); //true appends rather than overwriting.
		
		feedbackWriter.write(ip);
		feedbackWriter.newLine();
		feedbackWriter.write(creationDate.toString());
		feedbackWriter.newLine();
		feedbackWriter.write("New practice problem created:" + newTopicProblemFolderPath);
		feedbackWriter.newLine();
		feedbackWriter.newLine();
		
		feedbackWriter.flush();
		feedbackWriter.close();
		}
	}
%>

<script type="text/javascript" src="ProblemCreator.js"></script>
</body>
</html>