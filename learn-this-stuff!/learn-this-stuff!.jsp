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
<img src="/images/blackbackground2.jpg" id="back1">

<%@ include file="/JSP/topMenu.jsp" %>

<div id="courseContentCentered">

	<div id="courseInfoHolder">
		<div id="courseNameHeader"><h1><jsp:include page="name.txt" /></h1></div>
		<img id="graph" src="<jsp:include page="course-image-name.txt" />" >
		<div id="courseQAMainContainer">
			<div id="courseQA1Container">
				<div id="courseQuestion1"><jsp:include page="h1.txt" /></div>
				<div id="courseAnswer1">
						<jsp:include page="p1.txt" />
				</div>
			</div>
			<div id="courseQA2Container">
				<div id="courseQuestion2"><jsp:include page="h2.txt" /></div>
				<div id="courseAnswer2">
					<jsp:include page="p2.txt" />
				</div>
			</div>
		</div>
		<div id="flowChartHeader">
			Flow chart:
		</div>
		<!-- unique: -->
		<img src="flowchart.png" id="CalculusFlowchart">
		<div class="calculusVideoHeader">
			Here's a video that explains more about <jsp:include page="name.txt" />:
		</div>
		<iframe
			src="https://www.youtube.com/embed/<jsp:include page="vid-id.txt" />?wmode=transparent&rel=0&amp;modestbranding=1&amp;version=3&amp;ap=%2526fmt%3D18&amp;autohide=1&amp;fs=1&amp;theme=light&amp;color=white"
			type="application/x-shockwave-flash" class="courseVideo" allowfullscreen> 
		</iframe>
	</div>
	
	<%@ include file="TopicsMenu.jsp" %>
	
</div>

</body>
</html>