<!DOCTYPE html>
<html>
<head>
<script src="/JS/topMenu.js"></script>

<link rel="stylesheet" type="text/css" href="/CSS/topMenuCSS.css"/>
<link rel="stylesheet" type="text/css" href="/CSS/CourseTopicsMenu.css"/>
<link rel="stylesheet" type="text/css" href="/CSS/TopicsMenuBlueBlack.css"/>

<link rel="stylesheet" type="text/css" href="/CSS/CourseCSS.css"/>

</head>
<body>
<img src="../images/blackbackground2.jpg" id="back1">

<%@ include file="/JSP/topMenu.jsp" %>


<div id="courseContentCentered">

	<div id="courseInfoHolder">
		<div id="courseNameHeader"><h1>Modern Physics</h1></div>
		<img id="graph" src="../images/energyEinstein.png" ><!--update this-->
		<div id="courseQAMainContainer">
			<div id="courseQA1Container">
				<div id="courseQuestion1">Why study Modern Physics?</div>
				<div id="courseAnswer1">
						 <a class="dark" href="http://hubpages.com/hub/The-Benefits-of-Studying-Physics">Here</a> 
						 are some great reasons. Here are some more reasons:
					<ul class="inline">
						<li class="inline">
							You will understand things about the universe that most people 
							will only observe.
						</li>
						<li class="inline">
							You will learn why all the math you learned is important. You 
							will apply math to practical problems and in so doing understand 
							math more thoroughly than you could in any other major.
						</li>
						<li class="inline">
							Physics majors <a class="dark" href="http://www.physicscentral.com/buzz/blog/index.cfm?postid=6469561661568777605">
							frequently</a> score higher on the quantitative portion of the 
							GRE than any other major. 
						</li>
						<li>
							Click <a class="dark" href="http://www.aps.org/programs/education/highschool/teachers/why-physics.cfm">
							here</a> for a list of 10 reasons.
						</li>
					</ul>
					
				</div>
			</div>
			<div id="courseQA2Container">
				<div id="courseQuestion2">History of Modern Physics:</div>
				<div id="courseAnswer2">
					The history of Modern Physics is pretty cool. It begins with the difficult 
					question arising from the Michelson-Morley experiment in the 1880's, and 
					goes through Einstein's answer to this problem, and then on to 
					quantum theory. Read more about it <a class="dark" href="http://en.wikipedia.org/wiki/History_of_physics#20th_century:_Birth_of_Modern_Physics">
					here</a>.
				</div>
			</div>
		</div>
		<div id="flowChartHeader">
			Flow chart:No flow chart yet..
		</div>

		<div class="calculusVideoHeader">
			Introduction to what Modern Physics is about:
		</div>
		<iframe
			src="https://www.youtube.com/embed/ajhFNcUTJI0?wmode=transparent&rel=0&amp;modestbranding=1&amp;version=3&amp;ap=%2526fmt%3D18&amp;autohide=1&amp;fs=1&amp;theme=light&amp;color=white"
			type="application/x-shockwave-flash" class="courseVideo" allowfullscreen> 
		</iframe>
		<iframe
			src="https://www.youtube.com/embed/iVpXrbZ4bnU?wmode=transparent&rel=0&amp;modestbranding=1&amp;version=3&amp;ap=%2526fmt%3D18&amp;autohide=1&amp;fs=1&amp;theme=light&amp;color=white"
			type="application/x-shockwave-flash" class="courseVideo" allowfullscreen> 
		</iframe>
	</div>
	
	<%@ include file="ModernPhysicsTopicsMenu.jsp" %>
	
</div>

</body>
</html>