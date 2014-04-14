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
<form name="fCreateProblem" action="ProblemCreator.jsp" method="post">
	<input type="hidden" name="hCourse" id="hCourse"/>
	<input type="hidden" name="hTopic" id="hTopic"/>
	<input type="hidden" name="hQuestion" id="hQuestion"/>
	<input type="hidden" name="hVar1From" id="hVar1From"/>
	<input type="hidden" name="hVar1To" id="hVar1To"/>
	<input type="hidden" name="hVar2From" id="hVar2From"/>
	<input type="hidden" name="hVar2To" id="hVar2To"/>
	<input type="hidden" name="hAnswerType" id="hAnswerType" />
	<input type="hidden" name="hAnswer" id="hAnswer"/>
	<input type="hidden" name="hChoice1" id="hChoice1"/>
	<input type="hidden" name="hChoice2" id="hChoice2"/>
	<input type="hidden" name="hChoice3" id="hChoice3"/>
	<input type="hidden" name="hChoice4" id="hChoice4"/>
	<input type="hidden" name="hChoice5" id="hChoice5"/>
	<input type="hidden" name="hChoice6" id="hChoice6"/>
	<input type="hidden" name="hChoice7" id="hChoice7"/>
	<input type="hidden" name="hChoice8" id="hChoice8"/>
	<input type="hidden" name="hCorrectChoice" id="hCorrectChoice"/>
	<input type="hidden" name="hDifficulty" id="hDifficulty"/>
	<input type="hidden" name="hExample" id="hExample"/>
	
	<input type="hidden" name="problemSubmitted" id="problemSubmitted"/>
</form>

<img src="/images/blackbackground2.jpg" id="back1">
<div id="windowSpacer"></div>
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
			<select name="courseName" id="courseName" onchange="updateCourse()" class="darkInput">
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
			<select name="topicName" id="topicName" onChange="updateTopic()" class="darkInput">
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
	<div class="horizontalNitchLine"></div>
	<div id="mainLeft">
		<div id="d2">
			Question:
			<textarea id="question" class="darkInput"></textarea>
		</div>
		<form name="answerTypeForm">
		Answer type:
		<BR><input type="radio" id="freeResponse" name="answerTypeRadio" 
		value="freeResponse" onclick="changeAnswerType()" >Free Response
		<BR><input type="radio" id="multipleChoice" name="answerTypeRadio" 
		value="multipleChoice" onclick="changeAnswerType()">Multiple Choice
		</form>

		<div id="freeResponseStuff" style="display:none">
		<p id="p2">
			Within what range would you like var1 and var2 to be generated?
		</p>
		<p>
		var1 range: <input type="text" id="var1From" class="darkInput"/> to <input type="text" id="var1To" class="darkInput"/>
		<br>
		var2 range: <input type="text" id="var2From" class="darkInput"/> to <input type="text" id="var2To" class="darkInput"/>
		</p>
		<p id="p3">
			What form should the answer be in?
			<input type="text" id="answer" class="darkInput"/>
		</p>
		</div>
		<div id="multipleChoiceStuff" style="display:none">
			<p id="multipleChoicePara">
				<input type="button" id="addChoice" value="Add Choice" onclick="addChoice()" />
				(Select correct answer)<BR>
				<form name="multipleChoiceForm">
					Choice 1: <input type="text" id="choice1" class="darkInput"/>
					<input type="radio" name="correctChoice" id="choice1Correct" /><BR>
					Choice 2: <input type="text" id="choice2" class="darkInput" />
					<input type="radio" name="correctChoice" id="choice2Correct" /><BR>
				</form>
			</p>
		</div>
		<br>
		<input type="button" id="previewProblemButton" onclick="previewProblem();" value="Preview Problem"/>
	</div>
	<div id="mainRight">
		<div id="exampleLabel">
		To help struggling students, you can write an example of how to do this 
		kind of problem here. Enclose equations with dollar signs and write them in LaTeX.
		</div>
		<textarea id="example" class="darkInput"></textarea>
	</div>
</div>
<!-- This appears when they click on "preview":-->
<div id="problemPreview">
	<div id="pageTexture">
		<p id="generatedQuestion">
		</p>
		<!-- Free response: -->
		<input type="text" id="userAnswer" class="darkInput"/>
		<p id="generatedAnswer"></p>
		<!-- Multiple choice options:-->
		<p id="multipleChoicePreviewAnswers">
			<input type="radio" name="choicesPreview" id="choice1P" checked="true" />
			<span id="choice1Text"></span><BR>
			<input type="radio" name="choicesPreview" id="choice2P" />
			<span id="choice2Text"></span><BR>
		</p>
		<!-- Same for all questions: -->
		<input type="button" id="checkAnswer" onclick="answerProblem();" value="Check"/>
		<p id="feedback">
		</p>
		<p>
			On a scale of 1 to 10, how difficult is this problem?
		<input type="text" id="difficulty" class="darkInput"/>
		</p>
		
		<input type="button" id="closeProlemPreview" onclick="closePreview();" value="Close"/>
		<input type="button" id="submitProblem" onclick="submitProblem();" value="Submit Problem"/>
	</div>
</div>


<% //This is where we handle problem submissions:
String hCourse = "";
String hTopic = "";
StringBuffer hQuestion = new StringBuffer("");
String hVar1From = "";
String hVar1To = "";
String hVar2From = "";
String hVar2To = "";
String hAnswerType = "";
String hAnswer = "";
String hChoice1 = "";
String hChoice2 = "";
String hChoice3 = "";
String hChoice4 = "";
String hChoice5 = "";
String hChoice6 = "";
String hChoice7 = "";
String hChoice8 = "";
String hCorrectChoice = "";
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
if (request.getParameter("hAnswerType") != null)
	{
	hAnswerType = request.getParameter("hAnswerType");
	}
if (request.getParameter("hAnswer") != null)
	{
	hAnswer = request.getParameter("hAnswer");
	}
if (request.getParameter("hChoice1") != null)
	{
	hChoice1 = request.getParameter("hChoice1");
	}
if (request.getParameter("hChoice2") != null)
	{
	hChoice2 = request.getParameter("hChoice2");
	}
if (request.getParameter("hChoice3") != null)
	{
	hChoice3 = request.getParameter("hChoice3");
	}
if (request.getParameter("hChoice4") != null)
	{
	hChoice4 = request.getParameter("hChoice4");
	}
if (request.getParameter("hChoice5") != null)
	{
	hChoice5 = request.getParameter("hChoice5");
	}
if (request.getParameter("hChoice6") != null)
	{
	hChoice6 = request.getParameter("hChoice6");
	}
if (request.getParameter("hChoice7") != null)
	{
	hChoice7 = request.getParameter("hChoice7");
	}
if (request.getParameter("hChoice8") != null)
	{
	hChoice8 = request.getParameter("hChoice8");
	}
if (request.getParameter("hCorrectChoice") != null)
	{
	hCorrectChoice = request.getParameter("hCorrectChoice");
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
	+ "/" + hCourse + "/" + hTopic + "/PracticeProblems/PracticeProblems_pears22_" + ranString;
	%><!--<%=newTopicProblemFolderPath%>--><%
	
	File newTopicProblemFolder = new File(newTopicProblemFolderPath);
	boolean successful = newTopicProblemFolder.mkdir();
	%><!--<%=successful%>--><%
	
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
		"<input type=\"hidden\" name=\"hAnswerType\" id=\"hAnswerType\" value=\""+hAnswerType+"\"> \n\t" + 
		"<input type=\"hidden\" name=\"hAnswer\" id=\"hAnswer\" value=\""+hAnswer+"\"> \n\t" + 
		"<input type=\"hidden\" name=\"generatedAnswer\" id=\"generatedAnswer\" value=\"\"> \n\t" + //I don't need this, but just in case I guess.
		"<input type=\"hidden\" name=\"hChoice1\" id=\"hChoice1\" value=\""+hChoice1+"\"> \n\t" + 
		"<input type=\"hidden\" name=\"hChoice2\" id=\"hChoice2\" value=\""+hChoice2+"\"> \n\t" + 
		"<input type=\"hidden\" name=\"hChoice3\" id=\"hChoice3\" value=\""+hChoice3+"\"> \n\t" + 
		"<input type=\"hidden\" name=\"hChoice4\" id=\"hChoice4\" value=\""+hChoice4+"\"> \n\t" + 
		"<input type=\"hidden\" name=\"hChoice5\" id=\"hChoice5\" value=\""+hChoice5+"\"> \n\t" + 
		"<input type=\"hidden\" name=\"hChoice6\" id=\"hChoice6\" value=\""+hChoice6+"\"> \n\t" + 
		"<input type=\"hidden\" name=\"hChoice7\" id=\"hChoice7\" value=\""+hChoice7+"\"> \n\t" + 
		"<input type=\"hidden\" name=\"hChoice8\" id=\"hChoice8\" value=\""+hChoice8+"\"> \n\t" + 
		"<input type=\"hidden\" name=\"hCorrectChoice\" id=\"hCorrectChoice\" value=\""+hCorrectChoice+"\"> \n\t" + 
		"<input type=\"hidden\" name=\"hDifficulty\" id=\"hDifficulty\" value=\""+hDifficulty+"\"> \n\t" + 
		"<input type=\"hidden\" name=\"hExample\" id=\"hExample\" value=\""+hExample+"\"> \n" + 
	"<p id=\"generatedQuestion\"> \n" + 
	"</p> \n";
	%><!--This if for free response:--><%
	if (hAnswerType.equals("freeResponse")) {
		allOfL = allOfL + "<input type=\"text\" id=\"userAnswer\"> \n";
	}
	%><!--This is for multiple choice:--><%
	if (hAnswerType.equals("multipleChoice")) {
	String allTheseChoices[] = new String[8];
	allTheseChoices[0] = hChoice1;
	allTheseChoices[2] = hChoice3;
	allTheseChoices[3] = hChoice4;
	allTheseChoices[4] = hChoice5;
	allTheseChoices[5] = hChoice6;
	allTheseChoices[6] = hChoice7;
	allTheseChoices[7] = hChoice8;
	allTheseChoices[1] = hChoice2;
		for (int iti = 1; iti < 9; iti++) {
			String thisChoice = "choice" + String.valueOf(iti);
			if (!allTheseChoices[iti-1].equals("")) {
				String additionalChoice = "<input type=\"radio\" name=\"choicesPreview\" id=\"" + thisChoice + 
				"P" + "\" /> \n" + 
				"<span id=\"" + thisChoice + "Text\"></span><BR> \n";
				allOfL = allOfL + additionalChoice;
			}
		}
	}
	
	allOfL = allOfL + "<input type=\"button\" id=\"checkAnswer\" onclick=\"answerProblem()\" value=\"Check\"> \n" + 
	"<p id=\"feedback\"> \n" +
	"</p> \n";
		
	String newProblemLPath = newTopicProblemFolderPath + "/L.txt";
	File newProblemLFile = new File(newProblemLPath);
	newProblemLFile.createNewFile();
	PrintWriter pwl = new PrintWriter(new FileOutputStream(newProblemLPath));
	pwl.println(allOfL);
	pwl.close();
	
	String allOfR = "<input type=\"button\" id=\"exampleTrigger\" onmouseover=\"triggerExampleHover()\"" + 
	" onclick=\"triggerExample()\" value=\"Show Example\" disabled/> \n<br>\n<br>\n" + 
	"<div id=\"example\" style=\"display:none\"> \n" +
	"</div> \n<br>\n" + 

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
		
		//courseListWriter.newLine(); creates a new line for my server, which runs on Linux.
		//However, I'm viewing this on windows.
		feedbackWriter.write(ip + "\r\n\r\n");
		feedbackWriter.write(creationDate.toString() + "\r\n\r\n");
		feedbackWriter.write("New practice problem created:" + newTopicProblemFolderPath + "\r\n\r\n" + "\r\n\r\n");
		
		feedbackWriter.flush();
		feedbackWriter.close();
		}
	}
%>

<script type="text/javascript" src="ProblemCreator.js"></script>
</body>
</html>