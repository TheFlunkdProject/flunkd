<!-- This text precedes the unique lesson content's left page -->

<div id="leftpage">
	<div class="pageTexture">
		<div class="calcheaderleft" onmouseover="topicsMenuOn()" onmouseout="topicsMenuOff()">
			<img src="/images/downarrow.png" class="downarrow">
			<span id="currentTopic1"></span>
		</div>
		<div id="mediaIconBar">
			<div id="textLessonIconHolder"><a class="blocky" title="Text Lesson" href="../TextLesson/TextLesson.jsp">
				<img id="textLessonIcon" src="/images/bookIcon.png">
			</a></div>
			<div id="videoLessonIconHolder"><a class="blocky" title="Video Lesson" href="../VideoLessons/VideoLessons.jsp">
				<img id="videoLessonIcon" src="/images/videoCamera.png">
			</a></div>
			<div id="practiceProblemsIconHolder"><a class="blocky" title="Practice Problems" href="../PracticeProblems/PracticeProblems.jsp">
				<img id="practiceProblemsIcon" src="/images/pencilNotepad.png">
			</a></div>
		</div>
		
<!--All this stuff is to show which icon is selected. -->
<script>

currentURL = window.location.href;
cssStringIAmSelected = "border:1px solid #FFFFFF;";
if (currentURL.indexOf("TextLesson") != -1)
	{
	document.getElementById('textLessonIconHolder').style.cssText = cssStringIAmSelected;
	}
if (currentURL.indexOf("VideoLessons") != -1)
	{
	document.getElementById('videoLessonIconHolder').style.cssText = cssStringIAmSelected;
	}
if (currentURL.indexOf("PracticeProblems") != -1)
	{
	document.getElementById('practiceProblemsIconHolder').style.cssText = cssStringIAmSelected;
	}

</script>


		<div class="LeftPageTextContainer"> 
			<h3><span id="currentTopic2"></span></h3> 
			