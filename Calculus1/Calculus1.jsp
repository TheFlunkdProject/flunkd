<!DOCTYPE html>
<html>
<head>

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
		<div id="courseNameHeader"><h1>Calculus 1</h1></div>
		<img id="graph" src="../images/sinx+x2.png" >
		<div id="courseQAMainContainer">
			<div id="courseQA1Container">
				<div id="courseQuestion1">Why learn Calculus?</div>
				<div id="courseAnswer1">
						Here are just a couple reasons:
					<ul class="inline">
						<li class="inline">According to <a class="dark" href="http://www.forbes.com/sites/billconerly/2012/08/21/how-to-make-a-college-graduate-employable/">
						this Forbes Magazine article</a>, Calculus 1 is among the six classes that will 
						"make any college grad employable."
						</li>
						<li class="inline">
						According to <a class="dark" href="http://wainsworld.org/All_Worksheets/Articles/Want%20to%20Make%20More%20Money.pdf">
						this</a>, starting salaries across all industries increase by $2,000 for every 
						math class someone has taken after the ninth grade.
						</li>
						<li class="inline">
						Calculus is REALLY powerful.
						</li>
					</ul>
				</div>
			</div>
			<div id="courseQA2Container">
				<div id="courseQuestion2">History of Calculus:</div>
				<div id="courseAnswer2">
					The discovery of calculus is usually attributed mainly to Isaac Newton in the seventeenth 
					century. However, calculus has a very interesting history to which many people contributed. 
					You can read more about it <a class="dark" href="http://en.wikipedia.org/wiki/History_of_calculus">here</a>.
				</div>
			</div>
		</div>
		<div id="flowChartHeader">
			Flow chart:
		</div>
		<img src="CalculusFlowchart.jpg" id="CalculusFlowchart">
		<div class="calculusVideoHeader">
			Here's a video that explains more about calculus:
		</div>
		<iframe
			src="https://www.youtube.com/embed/97ajj5Y7tLA?wmode=transparent&rel=0&amp;modestbranding=1&amp;version=3&amp;ap=%2526fmt%3D18&amp;autohide=1&amp;fs=1&amp;theme=light&amp;color=white"
			type="application/x-shockwave-flash" class="courseVideo" allowfullscreen> 
		</iframe>
	</div>
	
	<%@ include file="Calculus1TopicsMenu.jsp" %>
	
</div>

</body>
</html>