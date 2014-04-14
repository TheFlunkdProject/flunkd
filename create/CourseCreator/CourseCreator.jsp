<!doctype html>
<%@ page import="java.lang.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>
<%@ page import="org.apache.commons.io.FileUtils" %>
<%@page import="javax.imageio.ImageIO"%>
<%@page import="java.net.URL"%>
<%@page import="java.awt.image.*,com.sun.image.codec.*" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
<head>
<link rel="stylesheet" type="text/css" href="course-creator.css"/>

</head>
<body>
<img src="/images/blackbackground2.jpg" id="back1">
<div id="pageContainer">
	<div id="pageHeadContainer">
		<div id="titleHeader">
		Course Creator
		</div>
		<div id="d1">
			Start a new course, or edit an existing course.
		</div>
	</div>
	<div class="horizontalNitchLine"></div>
	<div id="pageBodyContainer">
		<form name="createOrEditForm"><!--changeAnswerType()-->
			<BR><input type="radio" id="createCourse" name="createOrEditRadio" 
			value="createCourse" onclick="createOrEdit()" >Create New Course
			<BR><input type="radio" id="editCourse" name="createOrEditRadio" 
			value="editCourse" onclick="createOrEdit()">Edit Existing Course
		</form>
		<div id="createCourseStuff" style="display:block">
<!-- INPUTS -->
			<form name="createForm" action="CourseCreator.jsp" method="get">
			
			
			
				<div id="coursePageDetailsContainer">

<!--h1 -->
					h1 text:
					<br><input type="text" name="h1" id="h1" class="darkInput"/>
					<br><br>p1 text:
					<br><textarea name="p1" id="p1" class="darkInput"></textarea>
					
<!--Prerequisites -->
<!--Brief history -->
					<br><br>h2 text:
					<br><input type="text" name="h2" id="h2" class="darkInput"/>
					<br><br>p2 text:
					<br><textarea name="p2" id="p2" class="darkInput"></textarea>
					
<!--Course Image -->
					Select an image from the image library, or paste the URL of an image online:
					<select name="newOrOpen" id="newOrOpen" onchange="changychangy();">
						<option value="" selected="selected"></option>
					</select>
					<img id="imagePreview" src="/imageLibrary/ElectronDiffractionPattern.jpg">
					<%
					File newImagesDirectory = new File(request.getRealPath("imageLibrary"));
					File[] list = newImagesDirectory.listFiles();
						
						
					for (int i = 0; i < list.length; i+=1)
						{
						%>
						<script>
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
					<br><br>New image URL:
					<br><input type="text" name="newImageURL" id="newImageURL" class="darkInput"/>
					<br><br>New image Name:
					<br><input type="text" name="newImageName" id="newImageName" class="darkInput"/>
					<br><br>Any image online works. <a href="http://pixlr.com/editor" target="_blank">Pixlr</a> has a great editor.
<!--Flow chart image -->
					<br><br>Paste the URL for the image of a flowchart for the course:
					<br><input type="text" name="flowchartURL" id="flowchartURL" class="darkInput"/>
<!--Overview video -->
					<br><br>Paste the YouTube URL that overviews the course:
					<br><textarea name="vidURL" id="vidURL" class="darkInput"></textarea>
					<br><br>
				</div>
				
				
<!--Title of new course -->
				<br><br>Course Title: 
				<br><input type="text" name="courseTitle" id="courseTitle" class="darkInputCourse"/>
<!--Chapter name -->
				<br><br>Chapter Name:
				<br><input type="text" name="chapter1Name" id="chapter1Name" class="darkInputChapter"/>
<!--Topic Name -->
					<br><br>Topic Name:
					<br><input type="text" name="topic101Name" id="topic101Name" class="darkInputTopic"/>
					
<!--New topic -->
					<br>
					<div class="newTopicDiv" id="newTopicDiv1">
						<div class="newElementButton" id="newTopicButtonCh1"
							onclick="newTopic('newTopicButtonCh1')"></div>
						<div class="newElementLabel"> Create New Topic</div>
					</div>
					
<!--New chapter -->
				<br>
				<div class="newChapterDiv" id="newChapterDiv1">
					<div class="newElementButton" id="newChapterButton"
						onclick="newChapter('newChapterButton')"></div>
					<div class="newElementLabel"> Create New Chapter</div>
				</div>
				
<!--Save/update course -->
				
				<input type="submit" name="createFormSubmit" id="createFormSubmit" value="Save Course" />
				<!-- if this were a relatively positioned element, height:auto would not work. -->
			</form>
		</div>
		<div id="editCourseStuff" style="display:none">
		Currently unavailable
		</div>


<!--HANDLING THE PARAMETERS -->
<!--When a new course is created, these tasks need to be performed:-->

<!--Get list of parameters-->
<!--Copy default course directory with its contents: -->
<!--Add courseTitle to some list-->
<!--Rename the course page -->
<!--Overwrite name.txt-->
<!--Write to the TopicsMenu.jsp with the appropriate topics and chapters -->
	<!-- get chapter and topic list: -->
		<!-- get a list of the chapters -->
		<!-- get the number of each chapter's topics:-->
		<!-- get chapter and topic list: -->
	<!-- Now we can make the string that will be written to TopicsMenu.jsp: -->
	<!-- Now we can write to TopicsMenu.jsp: -->
	
<!--Copy the default topic folder for each topic-->
<!--Write to Name.txt -->

<!--Store the course image in the course folder under a default name -->
<!--Store the flowchart image with a default name -->
<!--Write to h1.txt -->
<!--Write to p1.txt -->
<!--Write to h2.txt -->
<!--Write to p2.txt -->
<!--vid-id.txt (just the v= id) -->


<!-- -->

<!--
Create a folder for each topic
	Write topic title to "Name.txt"
Create a main page for the course
	Create a simple representative image using greys and the colour #3366FF
	Motivation to learn the topic
	Prerequisites 
	Brief history of the topic
	Flow chart image
	Overview video

http://www.avajava.com/tutorials/lessons/how-do-i-move-a-file-to-a-directory.html
-->

-->


<c:if test="${!empty param.createFormSubmit && !empty param.courseTitle}">
<!--Get list of parameters-->
<%
//There is no limit to how many parameters may be passes, so we need a list of all of them.
//To get a list of all the parameter names:
List<String> parametersArrayList = new ArrayList<String>();
Enumeration paramNames = request.getParameterNames();
while(paramNames.hasMoreElements())
{
      String paramName =
(String)paramNames.nextElement();
		parametersArrayList.add(paramName);
      //out.print(paramName);
}
String[] parameters = new String[ parametersArrayList.size() ];
parametersArrayList.toArray( parameters );
%>
<!--Copy default course directory with its contents:
http://kodejava.org/how-do-i-copy-directory-with-all-its-contents-to-another-directory/ -->
<%
String rootPath = session.getServletContext().getRealPath(request.getContextPath());
String templateCourseFolderPath = rootPath + "/newCourse";
String courseTitle = request.getParameter("courseTitle");
String courseTitlePathFormat = courseTitle.replaceAll(" ", "-"); //This is the format I want the URL paths to be in
courseTitlePathFormat = courseTitlePathFormat.toLowerCase(); //This is the format I want the URL paths to be in
String newCourseFolderPath = rootPath + "/" + courseTitlePathFormat;
File srcDir = new File(templateCourseFolderPath);
File destDir = new File(newCourseFolderPath);

FileUtils.copyDirectory(srcDir, destDir);


%><!--<%=newCourseFolderPath%>--><%

%>

<!--Add courseTitle to some list-->
<%
String createdCoursesLogPath = rootPath + "/course-list.txt";
File createdCoursesLogFile = new File(createdCoursesLogPath);
if (!createdCoursesLogFile.exists()) {
	createdCoursesLogFile.createNewFile();
	}
BufferedWriter courseListWriter = new BufferedWriter(new FileWriter(createdCoursesLogFile,true)); //true appends rather than overwriting.
courseListWriter.write("\r\n \r\n" + courseTitle);
Date creationDate = new Date();
String ip = request.getRemoteAddr();
courseListWriter.write("\r\n" + creationDate.toString());
courseListWriter.write("\r\n" + ip);
//courseListWriter.newLine(); creates a new line for my server, which runs on Linux. However, I'm viewing this
//on windows.

courseListWriter.flush();
courseListWriter.close();
%>

<!--Rename the course page -->
<%

File coursePageFileOldName = new File(newCourseFolderPath + "/coursePage.jsp");
File coursePageFileNewName = new File(newCourseFolderPath + "/" + courseTitlePathFormat + ".jsp");
coursePageFileOldName.renameTo(coursePageFileNewName);

%>

<!--Overwrite name.txt-->
<%
File nameTXT = new File(newCourseFolderPath + "/name.txt");
BufferedWriter courseNameWriter = new BufferedWriter(new FileWriter(nameTXT,false)); //false overwrites.
courseNameWriter.write(courseTitle);
courseNameWriter.flush();
courseNameWriter.close();
%>

<!--Write to the TopicsMenu.jsp with the appropriate topics and chapters -->
	<!-- get chapter and topic list: -->
		<!-- get a list of the chapters -->
<%
List<String> chaptersArrayList = new ArrayList<String>();
Integer numberOfChapters = 0;
for (int i=0;i<parameters.length;i++) {
	if (parameters[i].indexOf("chapter") != -1) {
		numberOfChapters++;
		String thisChapter = "chapter" + numberOfChapters.toString() + "Name";
		chaptersArrayList.add(thisChapter);
	}
}
String[] chapterList = new String[numberOfChapters];
chaptersArrayList.toArray( chapterList );

%>

		<!-- get the number of each chapter's topics:-->
<%
Integer[] numberOfAllTopicsList = new Integer[numberOfChapters];
for (int i=0;i<numberOfAllTopicsList.length;i++) {
	numberOfAllTopicsList[i] = 0;
}
for (int i=0;i<numberOfChapters;i++) {
	int chapterDigitsLength = String.valueOf(i+1).length(); //Separate 1101 vs 101, etc...
	for (int n=0;n<parameters.length;n++) {
		//String thisTopic = 
		if (parameters[n].indexOf("topic" + String.valueOf(i+1)) != -1 && parameters[n].length() == chapterDigitsLength + 11) {
			numberOfAllTopicsList[i]++;
			
		}
	}
}
%>

		<!-- get chapter and topic list: -->
<%	
//There is now a list of all the chapter parameter names (chapterList)
// as well as a corresponding list of how many topic parameter names there are
// for each chapter parameter.

//Now we make a single array, the elements of which are all in the correct order of TopicMenu.jsp.
//For chapters, the strings are prepended with "chapter", for topics, "topic":

List<String> menuArrayList = new ArrayList<String>();
for (int i=0;i<numberOfChapters;i++) {
	menuArrayList.add("chapt" + request.getParameter(chapterList[i]));
	%><!--<%=request.getParameter(chapterList[i]) + "<br>"%>--><%
	for (int n=0;n<numberOfAllTopicsList[i];n++) {
		
		int iWantTwoDigits = n+1;
		String paraName = "topic" + String.valueOf(i+1) + String.format("%02d", iWantTwoDigits) + "Name";
		%><!--<%=request.getParameter(paraName) + "<br>"%>--><%
		menuArrayList.add("topic" + request.getParameter(paraName));
	}
}
String[] menuList = new String[menuArrayList.size()];
menuArrayList.toArray( menuList );
/*
for (int i=0;i<menuList.length;i++) {
%><%=menuList[i]%><%
}
*/
%>

	<!-- Now we can make the string that will be written to TopicsMenu.jsp: -->
<%
String topicsMenuText = "";
topicsMenuText = topicsMenuText + "<div id=\"topicsmenu\" " + 
	"\r\n\t onmouseover=\"topicsMenuOn()\" " + 
	"\r\n\t onmouseout=\"topicsMenuOff()\"> " + 
"\r\n" + 
"\r\n<ul class=\"topicssubmenuheader\">" + 
"\r\n<li><a href=\"#\">" + courseTitle + "</a>" + 
"\r\n</li>" +
"\r\n</ul>" +
"\r\n" + 
"\r\n<ul class=\"topicssubmenu\">" +
"\r\n<li><a href=\"/" + courseTitlePathFormat + "/" + courseTitlePathFormat + ".jsp" + "\">" + courseTitle + " Introduction</a>" +
"\r\n</li>"; //Each chapter inserted will close the <ul> from before and leave a <ul> open.

String titleAppropriate = "";
String pathAppropriate = "";
for (int i=0;i<menuList.length;i++) {
	
	titleAppropriate = menuList[i].substring(5);
	pathAppropriate = titleAppropriate.replaceAll(" ", "-").toLowerCase();
	if (menuList[i].indexOf("chapt") == 0) {
		topicsMenuText = topicsMenuText + 
		"\r\n</ul>" +
		"\r\n" +
		"\r\n<ul class=\"topicssubmenuheader\">" +
		"\r\n<li><a href=\"#\">" + titleAppropriate + "</a" +
		"\r\n</li>" +
		"\r\n</ul>" +
		"\r\n" +
		"\r\n<ul class=\"topicssubmenu\">"; //this <ul> will be closed by the next chapter.
	}
	else if (menuList[i].indexOf("topic") == 0) {
	topicsMenuText = topicsMenuText +
	"\r\n<li><a href=\"/"+courseTitlePathFormat+"/" + pathAppropriate + "/TextLesson/TextLesson.jsp\">" + titleAppropriate + "</a>" +
	"\r\n</li>";
	}
}
topicsMenuText = topicsMenuText +
"\r\n</ul>" +
"\r\n" +
"\r\n</div>";
%><%--=topicsMenuText--%><%
%>

	<!-- Now we can write to TopicsMenu.jsp: -->
<%
File newTopicsMenu = new File(newCourseFolderPath + "/TopicsMenu.jsp");
BufferedWriter menuWriter = new BufferedWriter(new FileWriter(newTopicsMenu,false)); //false overwrites.

menuWriter.write(topicsMenuText);

menuWriter.flush();
menuWriter.close();
//Victory.
%>
<br><br><br><br>Your new course: <a href="<%="/"+courseTitlePathFormat+"/"+courseTitlePathFormat+".jsp"%>" target="_blank"><%=courseTitle%></a>

<!--Copy the default topic folder for each topic-->
<%
for (int i=0;i<menuList.length;i++) {
	if (menuList[i].indexOf("topic") == 0) {
		titleAppropriate = menuList[i].substring(5);
		pathAppropriate = titleAppropriate.replaceAll(" ", "-").toLowerCase();
		
		String defaultTopicFolderName = rootPath + "/new-topic-folder";
		String destinationFolderName = newCourseFolderPath + "/" + pathAppropriate;
		File topSrcDir = new File(defaultTopicFolderName);
		File topDestDir = new File(destinationFolderName);

		FileUtils.copyDirectory(topSrcDir, topDestDir);
	}
}
		

%>
<!--Write to Name.txt -->



<!--Store the course image in the course folder under a default name -->
	<!-- If they provided a URL, first we need to copy the image into our imageLibrary: -->
<%
if (request.getParameter("newImageURL") != null) {
	String newCourseImageLocation = rootPath + "/imageLibrary/";
	String newCourseImageName = "no-name-provided.png";
	if (request.getParameter("newImageName") != null) {
		newCourseImageName = request.getParameter("newImageName") + ".png";
		}
	String newCourseImageFullPath = newCourseImageLocation + newCourseImageName;
	File newCourseImageFile = new File(newCourseImageFullPath);
	if (!newCourseImageFile.exists()) { //So that we don't replace anything.
		newCourseImageFile.createNewFile();
		FileOutputStream imageOutputStream = new FileOutputStream(newCourseImageFile);
		URL url = new URL(request.getParameter("newImageURL"));
		BufferedImage img = null;
		img = ImageIO.read(url);
		ImageIO.write(img, "png", imageOutputStream);
						
		imageOutputStream.close();
		
		%>
	<!-- Now we need to write to course-image-name.txt -->
		<%
		String officialImageName = newCourseImageFile.getName(); //because maybe it wasn't a png and java changed it
		String imageSRC = "/imageLibrary/" + officialImageName;
		
		
		File writeToMe = new File(newCourseFolderPath + "/course-image-name.txt");
		BufferedWriter imageNameWriter = new BufferedWriter(new FileWriter(writeToMe,false)); //false overwrites.

		imageNameWriter.write(imageSRC);
		
		imageNameWriter.flush();
		imageNameWriter.close();
	}%>
	<!-- If they selected an image that already existed:-->
	<%
} 
if (request.getParameter("newOrOpen") != null && !request.getParameter("newOrOpen").equals("")) {
	String officialImageName = request.getParameter("newOrOpen");
	String imageSRC = "/imageLibrary/" + officialImageName;
	File writeToMe = new File(newCourseFolderPath + "/course-image-name.txt");
	BufferedWriter imageNameWriter = new BufferedWriter(new FileWriter(writeToMe,false)); //false overwrites.
	
	imageNameWriter.write(imageSRC);
	
	imageNameWriter.flush();
	imageNameWriter.close();
}

%>

<!--Store the flowchart image with a default name -->
<%
if (request.getParameter("flowchartURL") != null) {
	String flowchartName = "flowchart.png";

	String newFlowchartFullPath = newCourseFolderPath + "/" + flowchartName;
	File newFlowchartFile = new File(newFlowchartFullPath);
	if (!newFlowchartFile.exists()) { //Somehow just in case I guess...
		newFlowchartFile.createNewFile();
		FileOutputStream imageOutputStream = new FileOutputStream(newFlowchartFile);
		URL url = new URL(request.getParameter("flowchartURL"));
		BufferedImage img = null;
		img = ImageIO.read(url);
		ImageIO.write(img, "png", imageOutputStream);
						
		imageOutputStream.close();
	}
}
%>
<!--Write to h1.txt -->
<%
if (request.getParameter("h1") != null) {
	String parameterValue = request.getParameter("h1");
	String fileToWriteToPath = newCourseFolderPath + "/h1.txt";
	File fileToWriteToFile = new File(fileToWriteToPath);
	BufferedWriter thisWriteness = new BufferedWriter(new FileWriter(fileToWriteToFile,false)); //false overwrites.
	thisWriteness.write(parameterValue);
	thisWriteness.flush();
	thisWriteness.close();
}
%>
<!--Write to p1.txt -->
<%
if (request.getParameter("p1") != null) {
	String parameterValue = request.getParameter("p1");
	String fileToWriteToPath = newCourseFolderPath + "/p1.txt";
	File fileToWriteToFile = new File(fileToWriteToPath);
	BufferedWriter thisWriteness = new BufferedWriter(new FileWriter(fileToWriteToFile,false)); //false overwrites.
	thisWriteness.write(parameterValue);
	thisWriteness.flush();
	thisWriteness.close();
}
%>
<!--Write to h2.txt -->
<%
if (request.getParameter("h2") != null) {
	String parameterValue = request.getParameter("h2");
	String fileToWriteToPath = newCourseFolderPath + "/h2.txt";
	File fileToWriteToFile = new File(fileToWriteToPath);
	BufferedWriter thisWriteness = new BufferedWriter(new FileWriter(fileToWriteToFile,false)); //false overwrites.
	thisWriteness.write(parameterValue);
	thisWriteness.flush();
	thisWriteness.close();
}
%>
<!--Write to p2.txt -->
<%
if (request.getParameter("p2") != null) {
	String parameterValue = request.getParameter("p2");
	String fileToWriteToPath = newCourseFolderPath + "/p2.txt";
	File fileToWriteToFile = new File(fileToWriteToPath);
	BufferedWriter thisWriteness = new BufferedWriter(new FileWriter(fileToWriteToFile,false)); //false overwrites.
	thisWriteness.write(parameterValue);
	thisWriteness.flush();
	thisWriteness.close();
}
%>
<!--vidId.txt (just the video ID) -->
<%
if (request.getParameter("vidURL") != null) {
	String parameterValue = request.getParameter("vidURL");
	int vidIdStartIndex = parameterValue.indexOf("v=");
	String vidId = parameterValue.substring(vidIdStartIndex+2, vidIdStartIndex+13);
	String fileToWriteToPath = newCourseFolderPath + "/vid-id.txt";
	File fileToWriteToFile = new File(fileToWriteToPath);
	BufferedWriter thisWriteness = new BufferedWriter(new FileWriter(fileToWriteToFile,false)); //false overwrites.
	thisWriteness.write(vidId);
	thisWriteness.flush();
	thisWriteness.close();
}
%>

<!-- -->

</c:if>
	</div>
</div>
<script type="text/javascript" src="course-creator.js"></script>
</body>
</html>

<!--
								var thisPar = this.parentNode;
								var previousSibling = thisPar.previousSibling;
								while(previousSibling.tagName != 'INPUT') {
									previousSibling = previousSibling.previousSibling;
								}
								newTopicHere(previousSibling.id)" 
							onmouseover="newElementHover()-->