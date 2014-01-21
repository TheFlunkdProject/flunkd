<%@ page import="java.io.*, java.lang.*, java.util.*" %>
<div id="topbannerTrigger" onmouseover="topbannerReveal()" onmouseout="topbannerConceal()">
	Menu
</div>
<div id="topbannerContainer" onmouseover="topbannerReveal()" onmouseout="topbannerConceal()">
<div class="texture"></div>
	<div id="logoContainer">
		<a href="/index.jsp">
		<div id="logoBoxWidth">
		<div id="logoText">
		Learning<br>Flare
		</div>
		</div>
		</a>
	</div>
	<div class="spacerLine"></div>
	<div id="menuCourse1">
		<a class="menu" href="/Calculus1/Calculus1.jsp">
		<div id="menuCourse1Text">
		Calculus 1
		</div>
		</a>
	</div>
	<div id="menuCourse2">
		<a class="menu" href="#">
		<div id="menuCourse2Text">
		Linear Algebra
		</div>
		</a>
	</div>
	<div id="menuCourse3">
		<a class="menu" href="/ModernPhysics/ModernPhysics.jsp">
		<div id="menuCourse3Text">
		Modern Physics
		</div>
		</a>
	</div>
	<div class="spacerLine"></div>
	<div id="adaptiveLearningDiv">
		<a class="menu" href="/AdaptiveLearning/AdaptiveLearning.html">
		<div id="adaptiveLearningText">
		Adaptive Learning
		</div>
		</a>
	</div>
	<div class="spacerLine"></div>
	<div id="feedbackDiv" onclick="feedbackInputBoxOn();" onmouseover="this.cursor = 'pointer';">
		<a class="menu">
		<div id="feedbackText">
		Feedback
		</div>
		</a>
	</div>
</div>
<div id="feedbackInputBox">
<div class="texture"></div>
	<div id="feedbackInstructions">
		Please tell us what you think about Learning Flare.
	</div>
	<textarea id="feedbackInput"></textarea>
	<div id="feedbackSuggestions">
		We would love to hear your thoughts on adaptive learning, 
		the design of our site, or anything else you want to tell us.
	</div>
	<input type="button" name="submitFeedback" id="submitFeedback" value="Submit" 
		onclick="feedbackInputSubmit()" />
	<input type="button" name="cancelFeedback" id="cancelFeedback" value="Cancel" 
		onclick="feedbackInputBoxOff()" />
</div>
<div id="thanksForFeedbackBox">
<div class="texture"></div>
	<div id="thanksForFeedback">
		Thanks for your input!
	</div>
</div>
<div id="formsContainer">
	<form name="submitFeedbackForm" id="submitFeedbackForm" action="" method="post">
		<input type="hidden" name="feedbackInputInForm" id="feedbackInputInForm" />
	</form>
</div>
<%
if (request.getParameter("feedbackInputInForm") != null)
	{
	%>
	<script>
	thanksForFeedbackOn();
	window.setTimeout(thanksForFeedbackOff,1000);
	</script>
	<%
	Date feedbackDate = new Date();
	String ip = request.getRemoteAddr();
	String feedbackInput = request.getParameter("feedbackInputInForm");
	String feedbackPath = "/home/learnfla/tomcat/webapps/learningflare.com/ROOT/feedback.txt";
	File feedbackFile = new File(feedbackPath);
	if (feedbackFile.exists() && feedbackFile.canWrite())
		{
		BufferedWriter feedbackWriter = new BufferedWriter(new FileWriter(feedbackFile,true)); //true appends rather than overwriting.
		
		feedbackWriter.write(ip);
		feedbackWriter.newLine();
		feedbackWriter.write(feedbackDate.toString());
		feedbackWriter.newLine();
		feedbackWriter.write(feedbackInput);
		feedbackWriter.newLine();
		feedbackWriter.newLine();
		
		feedbackWriter.flush();
		feedbackWriter.close();
		}
	}
%>