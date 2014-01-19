
<!-- The unique lesson content goes here -->
<%@ include file="/JSP/TextLesson_LessonLeadingText.jsp" %>

<p>The chain rule could probably be called the <a href="http://www.google.com/url?q=http%3A%2F%2Fen.wikipedia.
org%2Fwiki%2FMatryoshka_doll&sa=D&sntz=1&usg=AFQjCNE2KSLwOztOUBuyjmwSkGv6XSEDxg">Russian Nesting Doll</a> Method.
This is the formula for it:</p>
<img src="../../Functions/image266.png">
<p>It's best to just see how it works.</p>
<a href="#"><img src="../../Functions/image266.png">
	<span class="B1">The derivative of <img src="../../Functions/image268.png">, or 
<img src="../../Functions/image266.png"><br><br>2+0 is the derivative of 2x+1, or <i>g'</i> according to the formula.
	</span></a><br>

<%@ include file="/JSP/TextLesson_LessonIntermediateText.jsp" %>

<img src="../../Functions/image271.png"> &nbsp (notice that the angle doesn't change.)
<p>So the trick is to start on the very outside, and work your way inside. You start with the main form of 
the whole expression, and pretend anything inside of it is an x. Then, you multiply by the derivative of 
what was inside that you were pretending was an x, and so on, until what is on the inside is actually an x. 
Like this:</p>
<img src="../../Functions/image272.png" alt="ddx(ln(ln(ln(lnx))))=1ln(ln(lnx)))*1ln(lnx)*1lnx*1x">

<%@ include file="/JSP/TextLesson_LessonTrailingText.jsp" %>