<!doctype html>
<html>
<head>
<script language="javascript" type="text/javascript">
var focus = 0;
function focusLeft() {
focus=1;
document.getElementById('focusValue').value = "focus is left";
}
function focusRight() {
focus=2;
document.getElementById('focusValue').value = "focus is right";
}


function openMathExpressionWindow() {
document.getElementById('mathExpressionWindow').style.visibility="visible";
var e = document.getElementById('mathExpression');
e.focus();
e.onkeyup = function(e){
    if (e.which == 13 || e.keyCode == 13) {
        //Enter was pressed, handle it here
	insertMathExpressions();
	}
	}
e.value="";
}

function closeMathExpressionWindow() {
document.getElementById('mathExpressionWindow').style.visibility="hidden";
}


function mathExpressionWindowCloserHover() {
cssStringKillzCloseHover = "background-color:#FF9999;cursor:pointer;"
document.getElementById('mathExpressionWindowCloser').style.cssText = cssStringKillzCloseHover;
}

function mathExpressionWindowCloserOff() {
cssStringKillzCloseHoverOff = "background-color:#FFEEEE;"
document.getElementById('mathExpressionWindowCloser').style.cssText = cssStringKillzCloseHoverOff;
}


function insertMathExpressions() {
var expression = document.getElementById('mathExpression').value;
var newtext = '$' + expression + '$'
	if(focus == 1)
	{
	document.lessontext.leftpage.value += newtext;
	document.lessontext.leftpage.focus();
	}
	else if (focus == 2)
	{document.lessontext.rightpage.value += newtext;
	document.lessontext.rightpage.focus();
	}
document.getElementById('mathExpressionWindow').style.visibility="hidden";
}



function addExpression() {
var newtext = '<div class="importantExpression"></div>'
	if(focus == 1)
	{
	document.lessontext.leftpage.value += newtext;
	document.lessontext.leftpage.focus();
	}
	else if (focus == 2)
	{document.lessontext.rightpage.value += newtext;
	document.lessontext.rightpage.focus();
	}
}
function addTitle() {
var newtext = '<span title=""></span>';
	if(focus == 1)
	{
	document.lessontext.leftpage.value += newtext;
	document.lessontext.leftpage.focus();
	}
	else if(focus == 2)
	{
	document.lessontext.rightpage.value += newtext;
	document.lessontext.rightpage.focus();
	}
}
function addLink() {
var newtext = '<a href="" target="_blank"></a>'
	if(focus == 1)
	{
	document.lessontext.leftpage.value += newtext;
	document.lessontext.leftpage.focus();
	}
	else if (focus == 2)
	{
	document.lessontext.rightpage.value += newtext;
	document.lessontext.rightpage.focus();
	}
}

function addInfoBox() {
var newtext;
	if (leftpage.value.indexOf('box1') == -1 && rightpage.value.indexOf('box1') == -1)
	{
	newtext = '<span id="box1Trigger"></span><div id="box1"></div>';
	}
	else if (leftpage.value.indexOf('box2') == -1 && rightpage.value.indexOf('box2') == -1)
	{
	newtext = '<span id="box2Trigger"></span><div id="box2"></div>';
	}
	else if (leftpage.value.indexOf('box3') == -1 && rightpage.value.indexOf('box3') == -1)
	{
	newtext = '<span id="box3Trigger"></span><div id="box3"></div>';
	}
	else if (leftpage.value.indexOf('box4') == -1 && rightpage.value.indexOf('box4') == -1)
	{
	newtext = '<span id="box4Trigger"></span><div id="box4"></div>';
	}
	else if (leftpage.value.indexOf('box5') == -1 && rightpage.value.indexOf('box5') == -1)
	{
	newtext = '<span id="box5Trigger"></span><div id="box5"></div>';
	}
	else if (leftpage.value.indexOf('box6') == -1 && rightpage.value.indexOf('box6') == -1)
	{
	newtext = '<span id="box6Trigger"></span><div id="box6"></div>';
	}
	else if (leftpage.value.indexOf('box7') == -1 && rightpage.value.indexOf('box7') == -1)
	{
	newtext = '<span id="box7Trigger"></span><div id="box7"></div>';
	}
	else if (leftpage.value.indexOf('box8') == -1 && rightpage.value.indexOf('box8') == -1)
	{
	newtext = '<span id="box8Trigger"></span><div id="box8"></div>';
	}
	else if (leftpage.value.indexOf('box9') == -1 && rightpage.value.indexOf('box9') == -1)
	{
	newtext = '<span id="box9Trigger"></span><div id="box9"></div>';
	}
	else if (leftpage.value.indexOf('box10') == -1 && rightpage.value.indexOf('box10') == -1)
	{
	newtext = '<span id="box10Trigger"></span><div id="box10"></div>';
	}
	else if (leftpage.value.indexOf('box11') == -1 && rightpage.value.indexOf('box11') == -1)
	{
	newtext = '<span id="box11Trigger"></span><div id="box11"></div>';
	}
	else if (leftpage.value.indexOf('box12') == -1 && rightpage.value.indexOf('box12') == -1)
	{
	newtext = '<span id="box12Trigger"></span><div id="box12"></div>';
	}
	else if (leftpage.value.indexOf('box13') == -1 && rightpage.value.indexOf('box13') == -1)
	{
	newtext = '<span id="box13Trigger"></span><div id="box13"></div>';
	}
	else if (leftpage.value.indexOf('box14') == -1 && rightpage.value.indexOf('box14') == -1)
	{
	newtext = '<span id="box14Trigger"></span><div id="box14"></div>';
	}
	else if (leftpage.value.indexOf('box15') == -1 && rightpage.value.indexOf('box15') == -1)
	{
	newtext = '<span id="box15Trigger"></span><div id="box15"></div>';
	}
	else
	{
	newtext="The maximum number of Hidden Info Boxes you can use is currently only 15." + 
	 " Please inform me you need more. mike@flunkd.com. Thanks.";
	}

	if(focus == 1)
	{
	document.lessontext.leftpage.value += newtext;
	document.lessontext.leftpage.focus();
	}
	else if (focus == 2)
	{
	document.lessontext.rightpage.value += newtext;
	document.lessontext.rightpage.focus();
	}
}

function addImage() {
document.getElementById('killz').style.visibility="visible";
}






function killzClose() {
document.getElementById('killz').style.visibility = 'hidden';
}

function killzCloseHover() {
cssStringKillzCloseHover = "background-color:#FF9999;cursor:pointer;"
document.getElementById('killzClose').style.cssText = cssStringKillzCloseHover;
}

function killzCloseHoverOff() {
cssStringKillzCloseHoverOff = "background-color:#FFEEEE;"
document.getElementById('killzClose').style.cssText = cssStringKillzCloseHoverOff;
}

function imageFormSubmit() {
	document.forms['imageForm'].submit();
}

function changychangy() {
var gabba = document.getElementById('newOrOpen');
var newImageSource = "/imageLibrary/" + document.getElementById('newOrOpen').value;
	if (gabba.options[gabba.selectedIndex].value != "")
	{
	document.getElementById('editSelectedImage').disabled = false;
	document.getElementById('insertImage').disabled = false;
	document.getElementById('imagePreview').src = newImageSource;
	
	}
	else 
	{
	document.getElementById('editSelectedImage').disabled = true;
	document.getElementById('insertImage').disabled = true;
	document.getElementById('imagePreview').src = "newImages/newImage500.jpg";
	}
	
}

function insertImageHref() {
var floatSpec = "";
for (var i = 0; i < document.getElementsByName('floatGroup').length; i++)
	{
	if (document.getElementsByName('floatGroup')[i].checked)
		{
		floatSpec = document.getElementsByName('floatGroup')[i].value;
		}
	}

var selectedImage = document.getElementById('newOrOpen').value;
if (floatSpec != "")
	{
	var newtext = '<img class="' + floatSpec + '" src="/imageLibrary/' + selectedImage + '">';
	}
else
	{
	var newtext = '<img class="normal" src="/imageLibrary/' + selectedImage + '">';
	}
	
if(focus == 1)
	{
	document.lessontext.leftpage.value += newtext;
	document.lessontext.leftpage.focus();
	}
else if (focus == 2)
	{
	document.lessontext.rightpage.value += newtext;
	document.lessontext.rightpage.focus();
	}
}

function addGraph() {
document.getElementById('graphWindow').style.visibility="visible";
}

function closeGraphWindow() {
document.getElementById('graphWindow').style.visibility="hidden";
}

function graphWindowCloserHover() {
cssStringGraphWindowCloseHover = "background-color:#FF9999;cursor:pointer;";
document.getElementById('graphWindowCloser').style.cssText = cssStringGraphWindowCloseHover;
}

function graphWindowCloserOff() {
cssStringGraphWindowCloseHoverOff = "background-color:#FFEEEE;";
document.getElementById('graphWindowCloser').style.cssText = cssStringGraphWindowCloseHoverOff;
}

function addVideo() {
document.getElementById('videoWindow').style.visibility="visible";
var videoURL = document.getElementById('videoURL');
var videoCreator = document.getElementById('videoCreator');
var videoName = document.getElementById('videoName');
var videoTimes = document.getElementById('videoTimes');
videoURL.focus();

videoTimes.onkeyup = function(videoTimes) {
	if (videoTimes.which == 13 || videoTimes.keyCode == 13) {
	insertVideo();
	}
	}
videoURL.value = "";
videoCreator.value = "";
videoName.value = "";
videoTimes.value = "";
}

function insertVideo() {
var ember = document.getElementById('videoURL').value;
var videoIDStart = ember.indexOf('v=') + 2;
var videoIDEnd = videoIDStart + 13;

var videoID = ember.substring(videoIDStart,videoIDEnd);
var creator = document.getElementById('videoCreator').value;
var videoName = document.getElementById('videoName').value;
var times = document.getElementById('videoTimes').value;

var newtext = '<div class="videoContainer">' + 
	'<iframe class="embeddedVideo"' + 
		'src="https://www.youtube.com/embed/' + videoID + 
		'?wmode=transparent&rel=0&amp;modestbranding=1&amp;version=3&amp;' + 
		'ap=%2526fmt%3D18&amp;autohide=1&amp;fs=1&amp;theme=light&amp;color=white"' + 
		'type="application/x-shockwave-flash" allowfullscreen>' + 
	'</iframe>' + 
	'<div class="videoDescription">' + 
		'<p>' + creator + '</p>' + 
		'<p>' + videoName + '</p>' + 
		'<p>' + times + '</p>' + 
	'</div>' + 
	'</div>';

	if(focus == 1)
	{
	document.lessontext.leftpage.value += newtext;
	document.lessontext.leftpage.focus();
	}
	else if (focus == 2)
	{document.lessontext.rightpage.value += newtext;
	document.lessontext.rightpage.focus();
	}
document.getElementById('videoWindow').style.visibility="hidden";
}

function closeVideoWindow() {
document.getElementById('videoWindow').style.visibility="hidden";
}

function videoWindowCloserHover() {
cssStringVideoWindowCloseHover = "background-color:#FF9999;cursor:pointer;";
document.getElementById('videoWindowCloser').style.cssText = cssStringVideoWindowCloseHover;
}

function videoWindowCloserOff() {
cssStringVideoWindowCloseHoverOff = "background-color:#FFEEEE;";
document.getElementById('videoWindowCloser').style.cssText = cssStringVideoWindowCloseHoverOff;
}

function eraseJSP() {
	if (window.location.href == "file:///C:/Users/pears22/Desktop/GitHub/flunkd/create/LessonBuilder.html")
	{
	document.getElementById('importJSP').innerHTML = "";
	document.getElementById('newImageJSP').innerHTML = "";
	document.getElementById('textareaJSP').innerHTML = "";
	document.getElementById('previewJSP').innerHTML = "";
	document.getElementById('createNewGraphJSP').innerHTML = "";
	document.getElementById('createNewVideoJSP').innerHTML = "";
	}
}
</script>

<style>


body {
	background-color:#FFFFFF;
}

#LessonEditor {
	position:absolute;
	left:3%;
	right:3%;
	height:60px;
	top:10px;
	
	font-size:50px;
	text-align:center;
	
	
}

#shortcutbuttons {
	position:absolute;
	left:3%;
	width:94%;
	top:80px;
	height:50px;
	
	background-color:#EEEEEE;
	border: 1px solid grey;
	border-radius:3px;
	z-index:49;
	text-align:center;

}

.thosebuttons {
	position:absolute;
	top:0%;
	bottom:0%;
	left:0%;
	right:0%;
	margin:auto;
}

#mathExpressionWindow {
	position:absolute;
	left:3%;
	width:300px;
	top:100px;
	height:240px;
	
	visibility:hidden;
	z-index:50;
	border:6px solid black;
	border-radius:4px;
	background-color:#EEEEEE;
	
	opacity:.96;
}

.windowCloser {
	position:absolute;
	width:20px;
	height:20px;
	top:2px;
	right:2px;
	
	background-color:#FFEEEE;
	border:1px solid #FF3333;
	border-radius:3px;
	padding:3px;
	
	text-align:center;
	font-weight:bold;
	
	
	z-index:1;
}

.windowContentContainer {
	position:absolute;
	left:20px;
	right:20px;
	top:20px;
	bottom:20px;
	background-color:#DDDDDD;
	z-index:0;
	padding:10px;
	text-align:center;
}

#mathExpression_label {
	position:absolute;
	top:10px;
	height:30px;
	margin:auto;
	left:0;
	right:0;
}

#mathExpression {
	position:absolute;
	top:45px;
	margin:auto;
	left:0;
	right:0;
}

#insertMathExpression {
	position:absolute;
	top:80px;
	margin:auto;
	left:0;
	right:0;
}

#latexExplanation {
	position:absolute;
	top:115px;
	margin:auto;
	left:0;
	right:0;
}

#killz {
	position:absolute;
	width:540px;
	height:300px;
	top:100px;
	right:0%;
	left:0%;
	margin:auto;
	
	visibility:hidden;
	z-index:50;
	border:6px solid black;
	border-radius:4px;
	background-color:#EEEEEE;
}

#killzClose {
	position:absolute;
	width:20px;
	height:20px;
	top:2px;
	right:2px;
	
	background-color:#FFEEEE;
	border:1px solid #FF3333;
	border-radius:3px;
	padding:3px;
	
	text-align:center;
	font-weight:bold;
	
	
	z-index:1;
}

#imageForm {
	position:absolute;
	left:20px;
	right:20px;
	top:20px;
	bottom:20px;
	background-color:#DDDDDD;
	z-index:0;
	padding:10px;
	
}

#imagePreview {
	position:absolute;
	height:80%;
	top:10%;
	left:6.5%;
	
	border:1px solid black;
	border-radius:3px;
	
	z-index:1;
}

.refreshImage {
	visibility:hidden;
}



#imageButtonsColumn {
	position:absolute;
	width:200px;
	top:10.3%;
	height:79%;
	right:6.5%;
	text-align:center;
	
	border:1px solid black;
	border-radius:3px;
	
	
	z-index:1;
}

#createNewImage {
	position:absolute;
	top:10px;
	margin:auto;
	left:0;
	right:0;
}

#uploadImage {
	position:absolute;
	top:45px;
	margin:auto;
	left:0;
	right:0;
}

#refreshLibrary {
	position:absolute;
	top:80px;
	margin:auto;
	left:0;
	right:0;
}

#newOrOpen {
	position:absolute;
	top:115px;
	margin:auto;
	left:0;
	right:0;
	width:80%;
}

#editSelectedImage {
	position:absolute;
	top:147px;
	margin:auto;
	left:0;
	right:0;
}

#radioHolder {
	position:absolute;
	top:175px;
	width:100%;
}

#insertImage {
	position:absolute;
	top:205px;
	margin:auto;
	left:0;
	right:0;
	
	z-index:500;
}

#graphWindow {
	position:absolute;
	right:3%;
	width:300px;
	top:100px;
	height:240px;
	
	visibility:hidden;
	z-index:50;
	border:6px solid black;
	border-radius:4px;
	background-color:#EEEEEE;
	
	opacity:.96;
}

#graph_label {
	position:absolute;
	top:0px;
	height:50px;
	margin:auto;
	left:5px;
	right:5px;
}

#graphURL {
	position:absolute;
	width:80%;
	left:0;
	right:0;
	margin:auto;
	top:85px;
}

#createNewGraph {
	position:absolute;
	left:0;
	right:0;
	margin:auto;
	top:115px;
}

#labelAfterGraphSubmit {
	position:absolute;
	left:5px;
	right:5px;
	margin:auto;
	top:140px;
}

#videoWindow {
	position:absolute;
	right:3%;
	width:300px;
	top:100px;
	height:400px;
	
	visibility:hidden;
	z-index:50;
	border:6px solid black;
	border-radius:4px;
	background-color:#EEEEEE;
	
	opacity:.96;
}

#videoURL_label {
	position:absolute;
	top:0px;
	height:50px;
	margin:auto;
	left:5px;
	right:5px;
}

#videoURL {
	position:absolute;
	width:80%;
	left:0;
	right:0;
	margin:auto;
	top:70px;
}

#videoCreator_label {
	position:absolute;
	height:50px;
	margin:auto;
	left:5px;
	right:5px;
	top:100px;
}

#videoCreator {
	position:absolute;
	width:50%;
	left:0;
	right:0;
	margin:auto;
	top:120px;
}

#videoName_label {
	position:absolute;
	height:50px;
	margin:auto;
	left:5px;
	right:5px;
	top:150px;
}

#videoName {
	position:absolute;
	width:70%;
	left:0;
	right:0;
	margin:auto;
	top:170px;
}

#videoTimes_label {
	position:absolute;
	height:50px;
	margin:auto;
	left:5px;
	right:5px;
	top:200px;
}

#videoTimes {
	position:absolute;
	width:80%;
	left:0;
	right:0;
	margin:auto;
	top:240px;
}

#createNewVideo {
	position:absolute;
	left:0;
	right:0;
	margin:auto;
	top:280px;
}

#labelAfterVideoSubmit {
	position:absolute;
	left:5px;
	right:5px;
	margin:auto;
	top:310px;
}

#leftPageContainer {
	position:absolute;
	min-height:200px;
	bottom:80px;
	top:150px;
	width:45%;
	left:3%;
	
	border:1px solid grey;
	border-radius:3px;

}

#rightPageContainer {
	position:absolute;
	bottom:80px;
	top:150px;
	width:45%;
	right:3%;
	
	border:1px solid grey;
	border-radius:3px;
}



#leftpage {
	position:relative;
	width:98.9%;
	height:98.9%;
	margin:0;
}

#rightpage {
	position:relative;
	width:98.9%;
	height:98.9%;
	margin:0;
}

#actionbuttons {
	position:absolute;
	width:20%;
	left:0%;
	right:0%;
	margin:auto;
	height:30px;
	bottom:10px;
}

	
</style>

</head>
<body onload="eraseJSP()">

<span id="importJSP">
<%@ page import="java.io.*,java.lang.*" %>
<%@page import="javax.imageio.ImageIO"%>
<%@page import="java.net.URL"%>
<%@page import="java.awt.*, java.awt.image.*,com.sun.image.codec.*" %>
</span>


<div id="LessonEditor">
	
	
Lesson Editor
</div>
<div id="shortcutbuttons">
	<table class="thosebuttons" border="0" cellspacing="0" cellpadding="5">
		<tr>
			<td>
			<input title="$put your math here$" type="button" value="Math Expression" onClick="openMathExpressionWindow();">
			</td>
			<td>
			<input title='<div class="importantExpression">Write the important expression here</div>' type="button" value="Important Expressions" onClick="addExpression();">
			</td>
			<td>
			<input title='<span title="Insert label here" and >Insert text to be labeled here</span>' type="button" value="Hidden Label" onClick="addTitle();">
			</td>
			<td>
			<input title='<a href="Put the link URL here">Text to be clicked</a>' type="button" value="Link" onClick="addLink();">
			</td>
			<td>
			<input title='... ger">Insert triggering text here</div><div id="box1">Insert hidden text here</div>' type="button" value="Hidden Info Box" onClick="addInfoBox();">
			</td>				<td>
			<input title='' type="button" value="Image" onClick="addImage();">
			</td>				<td>
			<input title='' type="button" value="Graph" onClick="addGraph();">
			</td>
			</td>				<td>
			<input title='' type="button" value="Video" onClick="addVideo();">
			</td>
		</tr>
	</table>
</div>
	
	<!-- Appears when "Math Expression" is clicked: -->
<div id="mathExpressionWindow" >
<div class="windowCloser" id="mathExpressionWindowCloser" onclick="closeMathExpressionWindow()"
	onmouseover="mathExpressionWindowCloserHover()" onmouseout="mathExpressionWindowCloserOff()">X	</div>
	<div class="windowContentContainer" id="mathExpressionWindowContentContainer">
		<div id="mathExpression_label">
		Insert math expression:
		</div><br>
		<input type="text" id="mathExpression" name="mathExpression"/><br>
		<input type="button" id="insertMathExpression" name="insertMathExpression" 
			value="Insert Math Expression" onclick="insertMathExpressions()"/>
		<div id="latexExplanation">
		Insert expressions as Latex code. For a nice Latex code editor, 
		<a href="http://www.codecogs.com/latex/eqneditor.php" target="_blank">click here.</a> 
		You can then copy and paste your Latex in here.
		</div>
	</div>
</div>

<!-- Appears when "Video" is clicked: -->
<div id="videoWindow">
	<div class="windowCloser" id="videoWindowCloser" onclick="closeVideoWindow()"
	onmouseover="videoWindowCloserHover()" onmouseout="videoWindowCloserOff()">X
	</div>
	<div class="windowContentContainer">
		<div id="videoURL_label">
		Go to <a href="http://www.youtube.com/" target="_blank">YouTube</a> and 
		find a good video. Then copy the URL of the video and paste it into this 
		blank space:
		</div>
		<input type="text" id="videoURL" name="videoSourceURL"/>
		<div id="videoCreator_label">
		Who made the video?
		</div>
		<input type="text" id="videoCreator" name="videoCreator"/>
		<div id="videoName_label">
		What is the video called?
		</div>
		<input type="text" id="videoName" name="videoName"/>
		<div id="videoTimes_label">
		What parts of the video should students watch?
		</div>
		<input type="text" id="videoTimes" name="Times"/>
		
		<input type="button" id="createNewVideo" name="createNewvideo" 
			value="Insert Video" onclick="insertVideo()" />
		<div id="labelAfterVideoSubmit">This video will be embedded in your lesson.
		</div>
		<span id="createNewVideoJSP">		
		</span>
	</div>
</div>
	
<form name="lessontext" action="LessonBuilder.jsp" method="post">
	<!-- Appears when "insert Image" is clicked: -->
	<div id="killz">
		<img id="imagePreview" src="newImages/newImage500.jpg">
		<div id="killzClose" onclick="killzClose();" onmouseover="killzCloseHover();" onmouseout="killzCloseHoverOff();">
		X
		</div>
			<div class="windowContentContainer">
			</div>
			<div id="imageButtonsColumn">
				<input type="hidden" id="name" name="name" value="defaultImageName" />
				<input type="submit" id="createNewImage" name="createNewImage" 
					value="Create New Image"
					onclick="imageFormSubmit();"/>
			<span id="newImageJSP">
			<!-- The following will execute if the user clicks "create new image" -->
				<% 
				if (request.getParameter("createNewImage") != null)
					{
					String newImageName = request.getParameter("name"); //this "name" is always "defaultImageName" here
					if (newImageName != null)
						{
						try{
						//create new image file, copy from jpg file
						String copyingImagePath = "/home/learnfla/tomcat/webapps/learningflare.com/ROOT/create/newImages/newImage500.jpg";
						String newImagePath = "/home/learnfla/tomcat/webapps/learningflare.com/ROOT/images/" + newImageName + ".jpg";
						
						
						File sourceImage = new File(copyingImagePath);
						File copiedImage = new File(newImagePath);
						if(!sourceImage.exists()){
						throw new IOException("No source file:" + copyingImagePath);
						}
						if (!copiedImage.exists())copiedImage.createNewFile();
						if (!copiedImage.canWrite()){
						throw new IOException("Destination read-only:" + newImagePath);
						}
						
						
						FileInputStream inStream = new FileInputStream(sourceImage);
						FileOutputStream outStream = new FileOutputStream(copiedImage);
						
						byte[] buf = new byte[8192];
						int len;
						while ((len = inStream.read(buf)) > 0)
							{
							outStream.write(buf, 0, len);
							}
						inStream.close();
						outStream.close();
						
						}
						catch (IOException ex) {%><strong style="color:red;background-color:gold;">
						<%=ex.getMessage()%></strong>
						<%}
						
						%>
						<script>
						if (window.location.href != "file:///C:/Users/pears22/Desktop/GitHub/flunkd/create/LessonBuilder.html")
						{
						<!-- and then open the new window with the API to edit it -->
						window.open("http://fotoflexer.com/API/API_Loader_v1_01.php" + 
						"?ff_image_url=http://www.learningflare.com/images/<%=newImageName%>.jpg&ff_" + 
						"callback_url=http://www.learningflare.com/create/newImage.jsp&ff_cancel_" + 
						"url=http://www.learningflare.com/create/close.jsp&ff_lang=en-US");
						}
						</script>
						<%
						}
					}
				%>
			</span>
				<input type="submit" id="uploadImage" name="uploadImage"
					disabled="true" value="Upload Image"/>
				<input type="submit" id="refreshLibrary" name="refreshLibrary"
					value="Refresh Image Library" title="If the changes you make to 
					an image don't show on the preview image, they will in your lesson 
					preview."/>
			
				<label for="newOrOpen" id="newOrOpen_label"></label>
				<select name="newOrOpen" id="newOrOpen" onchange="changychangy();">
					<option value="" selected="selected"></option>
					
				</select><br><br>
				<span id="testtesttest">
				</span>
				<%
				File newImagesDirectory = new File(request.getRealPath("imageLibrary"));
				File[] list = newImagesDirectory.listFiles();
					
					
				for (int i = 0; i < list.length; i+=1)
					{
					%><script>
					var stringI = "<%=list[i].getPath()%>";
					
					
					var firstletter = stringI.indexOf("imageLibrary/");
					var firstLetter = firstletter + 13;
					var lastLetter = stringI.length;
					
					var value = stringI.substring(firstLetter, lastLetter);
					var thisTime = "option<%=i%>";
					
					var newOption = document.createElement('option');
					newOption.setAttribute('id', thisTime);
					newOption.value = value;
					newOption.text = value;
					var select = document.getElementById('newOrOpen');
					select.appendChild(newOption);
					</script>
					
					<%
					}
				%>
				<input type="submit" id="editSelectedImage" name="editSelectedImage" 
					title="Create a new image from an already existing image." value="Edit Selected Image" 
					disabled="true" />
			<span id="editSelectedImageJSP">
		<!-- The following will execute if the user clicks "Edit Existing Image" -->
				<% 
				if (request.getParameter("editSelectedImage") != null)
					{
					String newOrOpen = request.getParameter("newOrOpen");
					%>
					<script>
					if (window.location.href != "file:///C:/Users/pears22/Desktop/GitHub/flunkd/create/LessonBuilder.html")
						{
						<!-- and then open the new window with the API to edit it -->
						window.open("http://fotoflexer.com/API/API_Loader_v1_01.php" + 
						"?ff_image_url=http://www.learningflare.com/imageLibrary/<%=newOrOpen%>&ff_" + 
						"callback_url=http://www.learningflare.com/create/newImage.jsp&ff_cancel_" + 
						"url=http://www.learningflare.com/create/close.jsp&ff_lang=en-US");
						}
					</script>
					<%
					}
				%>
			</span>
				<div id="radioHolder" title="These specify the size and position of the image. L='float left' M='Middle' R='float right' n='normal(default)'">
					<input type="radio" id="radio1" name="floatGroup" value="fl250">L
					<input type="radio" id="radio2" name="floatGroup" value="fm250">M
					<input type="radio" id="radio3" name="floatGroup" value="fr250">R
					<input type="radio" id="radio4" name="floatGroup" value="" checked>n
				</div>
				<input type="button" title='' id="insertImage" value="Insert Selected Image" 
				disabled="true" onclick="insertImageHref();"/>
				
				<!-- The purpose of the following code is to keep the selected image in view.-->
				<%
				if (request.getParameter("refreshLibrary") != null)
					{

					%>
					<%=request.getParameter("newOrOpen")%>
					<script>
					addImage();
					document.getElementById('newOrOpen').value = "<%=request.getParameter("newOrOpen")%>";
					changychangy();
					</script>
			<!-- LessonBuilder.jsp needs a new reference to the image to load its changes.-->
					<%
					String refreshedImagePath = "/imageLibrary/" + request.getParameter("newOrOpen");
					%>
					<img class="refreshImage" src="<%=refreshedImagePath%>">
					<%
					}
				%>
			</div>
			
			
	</div>
	<div id="graphWindow">
		<div class="windowCloser" id="graphWindowCloser" onclick="closeGraphWindow()"
	onmouseover="graphWindowCloserHover()" onmouseout="graphWindowCloserOff()">X
		</div>
		<div class="windowContentContainer">
			<div id="graph_label">
			Go to <a href="http://www.craigsmaths.com/openPlaG/openPlaG.html" target="_blank">this website,</a> and make a graph. Then 
			right-click on the image and select "copy image location." Paste it into this 
			blank space:
			</div>
			<input type="text" id="graphURL" name="graphSourceURL"/>
			<input type="submit" id="createNewGraph" name="createNewGraph" 
				value="Create New Graph" />
			<div id="labelAfterGraphSubmit">This image of the graph will be saved in the 
			same place as the other images.
			</div>
			<span id="createNewGraphJSP">
		<!-- The following will execute if the user clicks "Create New Graph" -->
				<% 
				if (request.getParameter("createNewGraph") != null)
					{
					String graphSourceURL = request.getParameter("graphSourceURL");
					
			/*FML. Since the graphs are generated dependent on the program, I don't have any 
			way of getting their actual location. 
			
			But the program is open source, so I got the code and in it he says to recommend 
			blocking people from accessing the image from the url. Since its open source, there 
			is another website that uses the program, and they don't block the url! 
			
			But the url is full of GET parameter stuff, so I might have to save it to my server 
			before sending it to Fotoflexer. */
				
					if (graphSourceURL != null)
					{
					String initialGraph500Path = "/home/learnfla/tomcat/webapps/learningflare.com/ROOT/create/newImages/defaultGraph500.png";
					
					File initialGraph500 = new File(initialGraph500Path);
					
					//Remove the previously created graph stored in the default location:
					if (initialGraph500.exists()) initialGraph500.delete();
					
					//create file to copy image from URL onto:
					initialGraph500.createNewFile();
					FileOutputStream graphOutputStream = new FileOutputStream(initialGraph500);
					
					//Write onto the new file:
					URL url = new URL(graphSourceURL);
					BufferedImage img = null;
					img = ImageIO.read(url);
					ImageIO.write(img, "png", graphOutputStream);
					
					graphOutputStream.close();
					
					
					
					
					%>
					<script>
					if (window.location.href != "file:///C:/Users/pears22/Desktop/GitHub/flunkd/create/LessonBuilder.html")
						{
						<!-- and then open the new window with the API to edit it -->
						window.open("http://fotoflexer.com/API/API_Loader_v1_01.php" + 
						"?ff_image_url=http://learningflare.com/create/newImages/defaultGraph500.png&ff_" + 
						"callback_url=http://www.learningflare.com/create/newGraph.jsp&ff_cancel_" + 
						"url=http://www.learningflare.com/create/close.jsp&ff_lang=en-US");
						}
					</script>
					<%
					}
					}
				%>
			</span>
		</div>
	</div>
	
	<!-- carry the focus over submits: -->
			<input type="hidden" id="focusValue" name="focusValue" value="" />
			<%
			if (request.getParameter("focusValue") != null)
				{String focusValueString = request.getParameter("focusValue");
				%><script>
				var focusValueString = "<%=focusValueString%>";
				if (focusValueString = "focus is left")
					{
					focusLeft();
					}
				else if (focusValueString = "focus is right")
					{
					focusRight();
					}
				</script><%
				}
			%>
				
			
			
	<!-- carry over the text in the textareas, if a form was submitted: -->
	<span id="textareaJSP">
	</span>
	<div id="leftPageContainer">
		<textarea id="leftpage" name="leftpage" onfocus="focusLeft()"><%
			if (request.getParameter("leftpage") != null) 
			{
			%><%=request.getParameter("leftpage")%><%
			}%></textarea>
	</div>
	<div id="rightPageContainer">
		<textarea id="rightpage" name="rightpage" onfocus="focusRight()"><%
			if (request.getParameter("rightpage") != null)
			{
			%><%=request.getParameter("rightpage")%><%
			}%></textarea>
			
			
		
	</div>
	<div id="actionbuttons">
		<table class="thosebuttons" border="0" cellspacing="0" cellpadding="5">
			<tr>
				<td>
				<input type="submit" name="preview" value="Preview">
				</td>
				
<span id="previewJSP">
<%
if (request.getParameter("preview") != null)
{
	//Overwrite the left page lesson:
	File fileLeft = new File("/home/learnfla/tomcat/webapps/learningflare.com/ROOT/create/TextLessonPreviewL.txt");
	if (!fileLeft.exists())fileLeft.createNewFile();

	StringBuffer lefttext = new StringBuffer(request.getParameter("leftpage"));
	int locl = (new String(lefttext)).indexOf('\n');
	while(locl > 0)
		{
		lefttext.replace(locl, locl+1, "<BR>");
		locl = (new String(lefttext)).indexOf('\n');
		}

	PrintWriter pwl = new PrintWriter(new FileOutputStream("/home/learnfla/tomcat/webapps/learningflare.com/ROOT/create/TextLessonPreviewL.txt"));
	pwl.println(lefttext);
	pwl.close();
	
	
	
	//Overwrite the right page lesson:
	File fileRight = new File("/home/learnfla/tomcat/webapps/learningflare.com/ROOT/create/TextLessonPreviewR.txt");
	if (!fileRight.exists())fileRight.createNewFile();
	
	StringBuffer righttext = new StringBuffer(request.getParameter("rightpage"));
	int locr = (new String(righttext)).indexOf('\n');
	while(locr > 0)
		{
		righttext.replace(locr, locr+1, "<BR>");
		locr = (new String(righttext)).indexOf('\n');
		}
		
	PrintWriter pwr = new PrintWriter(new FileOutputStream("/home/learnfla/tomcat/webapps/learningflare.com/ROOT/create/TextLessonPreviewR.txt"));
	pwr.println(righttext);
	pwr.close();
	%>
<script>
if (window.location.href != "file:///C:/Users/pears22/Desktop/GitHub/flunkd/create/LessonBuilder.html")
window.open('http://www.learningflare.com/create/newfolder/TextLesson/TextLesson.jsp', 'Preview');
</script>
<%
}
%>
</span>
			</tr>
		</table>
	</div>
	
</form>

</body>
</html>