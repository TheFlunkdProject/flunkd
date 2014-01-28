<!-- This text precedes the unique lesson content's left page -->

<div id="leftpage">
	<div class="pageTexture">
		<div class="calcheaderleft" onmouseover="topicsMenuOn()" onmouseout="topicsMenuOff()">
			<img src="/images/downarrow.png" class="downarrow">
			<span id="currentTopic1"></span>
		</div>
		<div id="mediaIconBar">
			<a class="blocky" title="Text Lesson" href="../TextLesson/TextLesson.jsp"><div id="textLessonIconHolder">
				<img id="textLessonIcon" src="/images/bookIcon.png">
			</div></a>
			<a class="blocky" title="Video Lesson" href="../VideoLessons/VideoLessons.jsp"><div id="videoLessonIconHolder">
				<img id="videoLessonIcon" src="/images/videoCamera.png">
			</div></a>
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

</script>


		<div class="LeftPageTextContainer"> 
			<h3><span id="currentTopic2"></span></h3> 
			