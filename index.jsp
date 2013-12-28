<!DOCTYPE html>
<html>
<head>

<script src="https://www.google.com/jsapi" type="text/javascript"></script>
<script language="Javascript" type="text/javascript">
//<!
google.load('search', '1');
function OnLoad() {
var searchControl = new google.search.SearchControl();
var localSearch = new google.search.LocalSearch();
searchControl.addSearcher(localSearch);
searchControl.draw(document.getElementById("searchcontrol"));
}
google.setOnLoadCallback(OnLoad);
//]]>
</script>


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


<%@ include file="/JSP/VerticalBanner.jsp" %>








<div id="subflunkdholder"><div id="subflunkd">Transforming Education</div></div>


<div id="flunkdexplanation">
	<embed 
width="80%%" height="100%" src="http://www.youtube.com/v/7vsCAM17O-M" 
type="application/x-shockwave-flash" style="left:10%;" allowfullscreen="true"> </embed>
</div>

</body>
</html>