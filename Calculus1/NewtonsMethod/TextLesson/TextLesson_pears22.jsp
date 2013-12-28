<div id="leftpage">
<div class="calcheaderleft"
	onmouseover="topicsMenuOn()"
	onmouseout="topicsMenuOff()"
		>Newton's Method</div>




		<div class="LeftPageTextContainer">
<h3>3.13 - Newton's Method</h3>
<span> <!-- The unique lesson content goes here -->

<p>Newton's method is a way to approximate roots of equations. It is a formula that iterates, so the more times you put your number through the formula, the closer your number gets to the root of the equation. Here is the formula:</p>

<img src="../../Functions/image574.png" alt="xn+1=xn-f(xn)f'(xn)">

<p>So this formula requires you to find a derivative.</p>

<p>Here is an example of how to use it:</p>

<p>Use Newton's method three times to approximate the root of this equation starting with <img src="../../Functions/image575.png" alt="x=1">: <img src="../../Functions/image576.png" alt="f(x)=x^2-2"></p>

<h4>Solution:</h4>

<p>First, find f'(x):</p>

<img src="../../Functions/image577.png" alt="f'(x)="><img src="../../Functions/image578.png" alt="2x">



</span>
		</div>
		</div>

		<div id="rightpage">

<div class="calcheaderright"
	onmouseover="classesMenuOn()";
	onmouseout="classesMenuOff()";
	onclick="(this).style.backgroundColor='red'">Calculus 1</div>


		<div class="RightPageTextContainer">
<span> <!-- The unique lesson content goes here -->


<p>With the equation, <img src="../../Functions/image579.png" alt="xn"> is at first 1and we call it <img src="../../Functions/image580.png" alt="x1"> because it is the initial value we use. The formula finds the <img src="../../Functions/image581.png" alt="n+1">th number, so it finds the one after the one you are plugging in. We plug in <img src="../../Functions/image580.png" alt="x1"> and we find <img src="../../Functions/image582.png" alt="x2">.</p>

<img src="../../Functions/image583.png" alt="x2=1-(1)2-22(1)=1+12=1.5"><br>
<img src="../../Functions/image584.png" alt="x3=1.5-1.52-22(1.5)=1.5-2.25-23=1.5-.253=1.5-.083333=1.416667"><br>

<img src="../../Functions/image585.png" alt="x4=1.416667-1.4166672-22(1.416667)=1.416667-2.006945-22.833334=1.416667-.0069452.833334=1.416667-.002451=1.414216">

<p>That was three times, which is what they asked for. Notice what we just did. We just found the root of <img src="../../Functions/image586.png" alt="x^2-2">. That means we found out what x is when <img src="../../Functions/image587.png" alt="x^2-2=0">, or <img src="../../Functions/image588.png" alt="x=sqrt2">. So we basically came up with an approximation for <img src="../../Functions/image589.png" alt="sqrt2">. Compare what we came up with, 1.414216, to the actual number <img src="../../Functions/image590.png" alt="sqrt2=1.414124">... That's pretty close, and we didn't use a calcul
ator (because we know how to divide and multiply numbers). So, if you were stranded on an island somewhere, and for some reason you had to know what 2 was in order to survive, you could calculate it. The ancient Babylonians actually used a similar formula to calculate it. I'm not sure their lives depended on it, though.</p>

<p>There are some problems with Newton's method, however. And you can know how to avoid them if you understand how they arise. Check out the videos to learn about that.</p>

</span>

</div>
</div>