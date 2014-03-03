<!doctype html>
<%@ page import="java.lang.*"%>
<%@ page import="java.io.*"%>
<html>
<head>
<script src="../../JS/ExpressionEvaluater.js" type="text/javascript"></script>
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
	<input type="hidden" name="hAnswer" id="hAnswer"/>
	<input type="hidden" name="hDifficulty" id="hDifficulty"/>exampleTextarea
	<input type="hidden" name="hExample" id="hExample"/>
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
			<select name="courseName" id="courseName" onchange="loadTopics();">
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
		%>
			Topic:
			<select name="topicName" id="topicName">
				<option value="" selected="selected"></option>
			</select>
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
	<input type="button" id="closeProlemPreview" onclick="closePreview();" value="Close"/>
</div>
<script type="text/javascript" src="ProblemCreator.js"></script>
</body>
</html>