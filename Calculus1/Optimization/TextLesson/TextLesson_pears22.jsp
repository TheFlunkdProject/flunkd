<div id="leftpage">
<div class="calcheaderleft"
	onmouseover="topicsMenuOn()"
	onmouseout="topicsMenuOff()"
		>Optimization</div>




		<div class="LeftPageTextContainer">
<h3>3.12.5 - Optimization</h3>
<span> <!-- The unique lesson content goes here -->


<p>Optimization is a great application of derivatives.</p>

<p>There are always four steps you follow in an optimization problem:</p>
<ol>
<li>Write the equation for the thing you want to maximize/minimize
</li>
<li>Make sure it is in one variable
</li>
<li>Take the derivative, set it equal to zero, and find the critical numbers
</li>
<li>Make sure it is a maximum or a minimum with either the first derivative test or the second derivative test
</li>
<li>Answer the specific question they ask
</li>
</ol>

<p>Let's say we have a certain amount of fencing, and we want to enclose the maximum amount of square footage with it, and it has to be in the shape of a rectangle. Lets say we have 10 feet of fencing. So picture a rectangle like this:  
<a href="#" class="L1">Rectangle<img src="rectangle1.png" class="imgA1"></a></p>

<p>Let's call one side x and the other side y.</p>

<p><a href="#" class="L1">We want to maximize area. So we need the area equation.
<img src="../../Functions/image545.png" alt="A=xy">
	<span class="B1">Step 1. Write the equation for the thing you want to maximize/minimize</span></a></p>

<a href="#" class="L1">We need the right side in one variable. <span class="B1">Step 2. Make sure it is in one variable</span></a>So we need another equation in order to solve for one of them and 
substitute into this area equation. This other equation will come from whatever constraint we are given in the question. 
Here, we only have 10 feet to work with. So what is the equation that will give us the total length of fence we use on a 
rectangle? It's the equation for the parameter of a rectangle.<br><br>

<img src="../../Functions/image546.png" alt="P=2x+2y"><br>
<img src="../../Functions/image547.png" alt="10=2x+2y">  (it really doesn't matter which variable we solve for.)<br>
<img src="../../Functions/image548.png" alt="2x=10-2y"><br>
<a href="#" class="L1"><img src="../../Functions/image549.png" alt="x=5-y"><span class="B1">Still Step 2. Make sure it is in one variable</span></a>


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


<a href="#" class="L1">Substitute it back in:<br><br>

<p><img src="../../Functions/image550.png" alt="A=y(5-y)">  (before we take the derivative, it's good to do algebra if we can.)
	<span class="B1">Still Step 2. Make sure it is in one variable</span></a></p>

<img src="../../Functions/image551.png" alt="A=5y-y2"><br>
<a href="#" class="L1"><img src="../../Functions/image552.png" alt="dAdy=5-2y=0"><br>

<img src="../../Functions/image553.png" alt="y=5/2">
	<span class="B1">Step 3. Take the derivative, set it equal to zero, and find the critical numbers</span></a><br>

<a href="#" class="L1"><img src="../../Functions/image554.png" alt="A''=-2"><br><br>

<p>The second derivative is negative, so every critical number (all one of them, anyway) is a maximum. So we maximize the area when <img src="../../Functions/image553.png" alt="y=5/2">.
	<span class="B1">Step 4. Make sure it is a maximum or a minimum with either the first derivative test or the second derivative test</span></p></a>

<p><a href="#" class="L1">There are a couple of questions that they could be asking about this problem: What is the maximum area we can enclose with 10 feet of fencing? <img src="../../Functions/image555.png" alt="A=y(y-5)=52(5-52)=52(52)=254ft2"> What are the dimensions of the rectangle that can enclose the most area? <img src="../../Functions/image556.png" alt="x=5-y, x=5-52=522.5ftX"> (a square).
	<span class="B1">Step 5. Answer the specific question they ask. It makes sense that a square would be the most efficient rectangle to use to enclose an area. </span></a></p>

<p>The best way to learn how to do optimization is to look at a lot of examples and practice a lot.</p>

</span>

</div>
</div>