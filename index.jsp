<!DOCTYPE html>
<html>
<head>
<script src="/JS/topMenu.js"></script>

<link rel="stylesheet" type="text/css" href="CSS/indexCSS.css"/>
<link rel="stylesheet" type="text/css" href="CSS/topMenuCSS.css"/>

</head>
<body>


<div id="s600"></div>
<div id="backgroundTexture"></div>
<div id="backgroundGradient"></div>

<%@ include file="/JSP/topMenu.jsp" %>


<div id="freeStudentResource">
Learning Flare is a <span class="highlightBig">free student resource</span>.
</div>
<div id="ourGoal">
Our goal: To research and deliver the experience of 
 <span class="highlightBig" style="color:#3366FF">adaptive learning</span>.
</div>
<!--
<div id="startLearningBox">
Start learning: <input type="button" id="searchButton" value="Go"/><input type="text" id="searchInput"/>
</div>
-->


<div class="whyUsContainers" id="whyUsContainer1">
	<div class="whyLabel">
		<a style="display:inline;" href="http://www.wikipedia.org">Wikipedia</a> isn't good enough.
	</div>
	<div class="whyExplanation">
	<br>
	You have probably stumbled on somebody's <span class="highlightSmall">doctoral dissertation 
	</span>while trying to find a simple answer on Wikipedia.
	<br><br>
	Wikipedia has transformed online information, but it isn't the ultimate solution 
	to knowledge. Here is why:
	<ul>
		<li>
		Wikipedia is an encyclepedia, so it can be very difficult to understand.
		</li>
		<li>
		There is <span class="highlightSmall">only one description</span> for each topic, but variety is essential for a 
		customized learning experience.
		</li>
		<li>
		The style favors <span class="highlightSmall">textual</a> learners.
		</li>
	</ul>
	</div>
</div>

<div class="whyUsContainers" id="whyUsContainer2">
	<div class="whyLabel">
		Neither is <a style="display:inline;" href="http://www.youtube.com">YouTube.</a>
	</div>
	<div class="whyExplanation">
	<br>
	The videos you see on YouTube are generally high quality becuase lots of other people 
	liked them. Sometimes, this is good enough. 
	<br><br>
	But if you have even a slightly unique learning style, it may take a very long time 
	to find a video that YOU like.
	<br><br>
	Other problems:
	<ul>
		<li>
		There are <span class="highlightSmall">only videos</span>. You can't scan the content of a video in 3 seconds for 
		an equation you need.
		</li>
		<li>
		YouTube was not designed for education.
		</li>
	</ul>
	</div>
</div>

<div class="whyUsContainers" id="whyUsContainer3">
	<div class="whyLabel">
		Neither is <a style="display:inline" href="https://www.khanacademy.org/">Khan Academy.</a>
	</div>
	<div class="whyExplanation">
	<br>
	Google's Eric Schmidt said of Sal Khan, "innovation never comes from the 
	established institution. It's always a graduate student, or a crazy person, or
	somebody with a great vision. Sal is that person in education."
	<br><br>
	Khan Academy is innovative becuase it applys the concept of adaptive education 
	to Sal Khan's videos. Why isn't it good enough?
	<ul>
		<li>
		The adaptive education of Khan Academy adjusts the 
		subject difficulty</span> to meet each student at their level. 
		<span class="highlightSmall"> It doesn't adjust the style</span> or medium of the lessons.
		</li>
		<li>
		Sal Khan is <span class="highlightSmall">one person</span>. The solution for learning will come from the community.
		</li>
	</ul>
	</div>
</div>


<div id="conclusionContainer">
	<div id="conclusion">
		Learning Flare improves these 3 concepts and focuses on 
		the <span class="highlightBig">learning experience.</span>
	</div>
	<div id="coursesHeader">
		Courses contributed to:
	</div>
	<div class="courseBox" id="course1Box">
		<a class="course" href="/Calculus1/Calculus1.jsp">
		<div id="course1">
			<div id="course1Title">
			Calculus 1
			</div>
			<img class="coursePic" src="/images/calculusAliens.jpg">
			<div id="course1Contributors">
			Contributors: 2
			</div>
		</div>
		</a>
	</div>
	<div class="courseBox" id="course2Box">
		<a class="course" href="#">
		<div id="course2">
			<div id="course2Title">
			Linear Algebra
			</div>
			<img class="coursePic" src="https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcT6y2UkJKTv60beiI1XiAFm2-hBkUu1D0Q5xhyBLsjfKjdOjepE6w">
			<div id="course2Contributors">
			Contributors: 0
			</div>
		</div>
		</a>
	</div>
	<div class="courseBox" id="course3Box">
		<a class="course" href="/ModernPhysics/ModernPhysics.jsp">
		<div id="course3">
			<div id="course3Title">
			Modern Physics
			</div>
			<img class="coursePic" src="https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcSRcv4rpEdAaConKfB6a8U_SkOksmcAyWjBNTgYOFS7Nl915gEhuA">
			<div id="course3Contributors">
			Contributors: 1
			</div>
		</div>
		</a>
	</div>
</div>







</body>
</html>