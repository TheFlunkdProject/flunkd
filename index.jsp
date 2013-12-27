<!DOCTYPE html>
<html>
<head>
<script src="JS/myhomescript.js"></script>
<script src="JS/StyleChanger.js"></script>

<link rel="stylesheet" type="text/css" href="CSS/HomeStyleChickenChanger.css">

<link rel="stylesheet" type="text/css" href="CSS/myhomestylechicken.css">

<link rel="alternate stylesheet" type="text/css" href="CSS/OrangeShadows.css" title="Style1">
<link rel="stylesheet" type="text/css" href="CSS/TurquoiseShadows.css" title="Style2">
<link rel="alternate stylesheet" type="text/css" href="CSS/purpleShadows.css" title="Style3">
</head>
<body>

<img src="images/blackbackground.jpg" id="back1">
<div id="flunkdholder"><div id="flunkd"><a href="#">flunk'd</a></div></div>


<div id="horizontalbanner">
<div id="HorizontalBannerSpacer"></div>

<div id="HowBox" onmouseover="flunkdHowOn()" onmouseout="flunkdHowOff()">
	<ul style="padding:0;margin:0;">
	<li id="InfoWord">
		<a href="HowIsFlunkdTransformingEducation/HowIsFlunkdTransformingEducation.html">How</a></li>
	<li id="InfoQuestion">
		<a href="HowIsFlunkdTransformingEducation/HowIsFlunkdTransformingEducation.html">is flunk transforming education?</a></li></ul>
</div>
<div id="WhatBox" onmouseover="flunkdWhatOn()" onmouseout="flunkdWhatOff()">
	<ul style="padding:0;margin:0;">
	<li id="InfoWord">
		<a href="WhatCanIGetFromFlunkd/WhatCanIGetFromFlunkd.html">What</a></li>
	<li id="InfoQuestion">
		<a href="WhatCanIGetFromFlunkd/WhatCanIGetFromFlunkd.html">can I get from flunk'd?</a></li>
	</ul>
</div>
<div id="WhoBox" onmouseover="flunkdWhoOn()" onmouseout="flunkdWhoOff()">
	<ul style="padding:0;margin:0;">
	<li id="InfoWord">
		<a href="WhoIsCreatingFlunkd/WhoIsCreatingFlunkd.html">Who</a></li>
	<li id="InfoQuestion">
		<a href="WhoIsCreatingFlunkd/WhoIsCreatingFlunkd.html">is creating flunk'd?</a></li>
	</ul>
</div>
</div>

<%@ include file="/JSP/StyleChanger.jsp" %>


<div id="verticalbanner">
<!--<div id="LoginSignUp">
	<div id="InputUsernameLabel">Username: </div>
	<div id="InputUsernameContainer">
		<input type="text" id="InputUsername"/></div>
	<div id="InputPasswordLabel">Password: </div>
	<div id="InputPasswordContainter">
		<input type="text" id="InputPassword"/></div>
	<div id="Login">Login</div>
	<div id="SignUp">Sign Up</div>
</div>-->
<div id="SearchFlunkd">
	<div id="SearchFlunkdLabel">Search flunk'd:</div>
	<div id="SearchFlunkdInputContainter">
		<input type="text" id="SearchFlunkdInput"/></div>
	<div id="Go">Go</div>
</div>

<div id="verticaltest" onmouseover="canYouDesignOn()" onmouseout="canYouDesignOff()">
	<div id="LearnLabel">Classes:</div>
	<div id="ClassListContainer">
		<ul id="ClassList">
		<li><a href="Calculus1/Calculus1.jsp">Calculus 1</a></li>
<!--		<li><a href="#">Calculus 2</a></li>
		<li><a href="#">Physics Newtonian Mechanics</a></li>-->
		</ul>
	</div>
</div>


</div>
</div>







<div id="subflunkdholder"><div id="subflunkd">Transforming Education</div></div>


<div id="flunkdexplanation">
	<embed 
width="80%%" height="100%" src="http://www.youtube.com/v/7vsCAM17O-M" 
type="application/x-shockwave-flash" style="left:10%;" allowfullscreen="true"> </embed>
</div>

</body>
</html>