<!doctype html>
<html>
<head>
<script language="javascript" type="text/javascript">
var focus;
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
var newtext = '<a href=""></a>'
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
	newtext = '<div id="box1Trigger"></div><div id="box1"></div>';
	}
	else if (leftpage.value.indexOf('box2') == -1 && rightpage.value.indexOf('box2') == -1)
	{
	newtext = '<div id="box2Trigger"></div><div id="box2"></div>';
	}
	else if (leftpage.value.indexOf('box3') == -1 && rightpage.value.indexOf('box3') == -1)
	{
	newtext = '<div id="box3Trigger"></div><div id="box3"></div>';
	}
	else if (leftpage.value.indexOf('box4') == -1 && rightpage.value.indexOf('box4') == -1)
	{
	newtext = '<div id="box4Trigger"></div><div id="box4"></div>';
	}
	else if (leftpage.value.indexOf('box5') == -1 && rightpage.value.indexOf('box5') == -1)
	{
	newtext = '<div id="box5Trigger"></div><div id="box5"></div>';
	}
	else
	{
	newtext="The maximum number of Hidden Info Boxes you can use is currently only 5." + 
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




function eraseJSP() {
	if (window.location.href == "file:///C:/Users/pears22/Desktop/GitHub/flunkd/create/LessonBuilder.html")
	{
	document.getElementById('importJSP').innerHTML = "";
	document.getElementById('newImageJSP').innerHTML = "";
	document.getElementById('textareaJSP').innerHTML = "";
	document.getElementById('previewJSP').innerHTML = "";
	}
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
var selectedImage = document.getElementById('newOrOpen').value;
var newtext = '<img src="/imageLibrary/' + selectedImage + '">';
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

#mathExpressionWindowCloser {
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

#mathExpressionWindowContentContainer {
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

#editSelectedImage {
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

#refreshLibrary {
	position:absolute;
	top:147px;
	margin:auto;
	left:0;
	right:0;
}

#insertImage {
	position:absolute;
	top:200px;
	margin:auto;
	left:0;
	right:0;
	
	z-index:500;
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
				</td>
				<td>
				<input title='' type="button" value="Insert Image" onClick="addImage();">
				</td>
			</tr>
		</table>
	</div>
	
	<!-- Appears when "Math Expression" is clicked: -->
	<div id="mathExpressionWindow" >
	<div id="mathExpressionWindowCloser" onclick="closeMathExpressionWindow()"
		onmouseover="mathExpressionWindowCloserHover()" onmouseout="mathExpressionWindowCloserOff()">X
	</div>
		<div id="mathExpressionWindowContentContainer">
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
<form name="lessontext" action="LessonBuilder.jsp" method="post">
	<!-- Appears when "insert Image" is clicked: -->
	<div id="killz">
		<img id="imagePreview" src="newImages/newImage500.jpg">
		<div id="killzClose" onclick="killzClose();" onmouseover="killzCloseHover();" onmouseout="killzCloseHoverOff();">
		X
		</div>
			<div id="imageForm">
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
					String newImageName = request.getParameter("name");
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
				<input type="submit" id="refreshLibrary" name="refreshLibrary"
					value="Refresh Image Library"/>
			<!-- The purpose of the following code is to keep the selected image in view.-->
				<%
				if (request.getParameter("refreshLibrary") != null)
					{
					%>
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
				<input type="button" title='' id="insertImage" value="Insert Selected Image" 
				disabled="true" onclick="insertImageHref();"/>
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
	File f = new File("/home/learnfla/tomcat/webapps/learningflare.com/ROOT/create/TextLessonPreview.txt");
	if (!f.exists())f.createNewFile();

	String specialScript = "apple";

	String leftpage = "<div id=\"leftpage\"> <img class=\"pageTexture\" src=\"/create/texture.png\">" + 
		"\n <div class=\"calcheaderleft\" " + 
		"\n \t onmouseover=\"topicsMenuOn()\" \n \t onmouseout=\"topicsMenuOff()\" " + 
		"\n \t >Chain Rule</div> \n \n 	<div class=\"LeftPageTextContainer\"> <h3>3.7 - " + 
		"Chain Rule</h3> \n <!-- The unique lesson content goes here -->";

	
	StringBuffer lefttext = new StringBuffer(request.getParameter("leftpage"));
	int locl = (new String(lefttext)).indexOf('\n');
	while(locl > 0)
		{
		lefttext.replace(locl, locl+1, "<BR>");
		locl = (new String(lefttext)).indexOf('\n');
		}

	
	String rightpage = "</div>" + 
	" \n </div>" +
	"\n <div id=\"rightpage\"><img class=\"pageTexture\" src=\"/create/texture.png\">" + 

	"\n \n <div class=\"calcheaderright\" " + 
	"\n \t onmouseover=\"classesMenuOn()\";" + 
	"\n \t onmouseout=\"classesMenuOff()\";" + 
	"\n \t onclick=\"(this).style.backgroundColor=\'red\'\">Calculus 1</div>" + 


	"\n \n \t <div class=\"RightPageTextContainer\">" + 
	"<!-- The unique lesson content goes here -->";


	StringBuffer righttext = new StringBuffer(request.getParameter("rightpage"));
	int locr = (new String(righttext)).indexOf('\n');
	while(locr > 0)
		{
		righttext.replace(locr, locr+1, "<BR>");
		locr = (new String(righttext)).indexOf('\n');
		}

	
	String righttextend = "</div> \n </div>";



	PrintWriter pw = new PrintWriter(new FileOutputStream("/home/learnfla/tomcat/webapps/learningflare.com/ROOT/create/TextLessonPreview.txt"));
	pw.println(leftpage + lefttext + rightpage + righttext + righttextend);
	pw.close();
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