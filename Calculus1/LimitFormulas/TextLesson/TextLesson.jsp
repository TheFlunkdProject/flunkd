<div id="leftpage">
<div class="calcheaderleft"
	onmouseover="topicsMenuOn()"
	onmouseout="topicsMenuOff()"
		>Limit Formulas</div>




		<div class="LeftPageTextContainer">
<h3>4.2 - Limit Formulas</h3>
<span> <!-- The unique lesson content goes here -->


<p>Now we find the exact area under a curve with the same formulas as in the last section, but now with <img src="../../Functions/image620.png" alt="limn"> in front of <a href="#">the area formula
	<span class="B1">You can start with any method and end up finding the same area in the end.</span></a>.</p>

<p>Instead of plugging in the limit first like with normal limits, there is some arranging that we need to do. We need to get every problem into one of <a href="#">these forms
	<span class="B1">Look at the left-hand sides of the equations.</span></a>:</p>

<img src="../../Functions/image621.png" alt="i=1n1=n"><br>
<img src="../../Functions/image622.png" alt="i=1ni=n(n+1)2"><br>
<img src="../../Functions/image623.png" alt="i=1ni2=n(n+1)(2n+1)6"><br>
<img src="../../Functions/image624.png" alt="i=1ni3=(n(n+1)2)2">

<p>We arrive at these forms by setting everything up like usual, and then factoring out all of the numbers and n’s from every term in the summation, using these properties of sums:</p>

<img src="../../Functions/image625.png" alt="i=1naf(x)=ai=1nf(x)">,  <img src="../../Functions/image626.png" alt="i=1n[f(x)+g(x)]=i=1nf(x)+i=1ng(x)">


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


<p>Let's do an example.</p>

<p>Let's find the <a href="#" class="L1">exact area under the curve <img src="../../Functions/image627.png" alt="f(x)=3-x^2"> from x=0 to x=2
<img src="../../Graphs/graphareaunder3-x^2.png" class="imgA1"></a>
We'll do it by starting with the formula for right endpoint rectangles.</p>

<img src="../../Functions/image628.png" alt="xi=0+ix=2in">
A=ni=1n[3-(2in)2]*2n=ni=1n[6n-8i2n3]=n[6ni=1n1-8n3i=1ni2] 

<p>Now that we have these summations in the forms we need them to be in, we can use the formulas for this section, which you are probably required to memorize.</p>

<img src="../../Functions/image629.png" alt="=n[6nn-8n3n(n+1)(2n+1)6]"><img src="../../Functions/image630.png" alt="=n[6-4(n+1)(2n+1)3n2] = 6- 4*23=6-83=103">

<p><a href="#">If you are finding
	<span class="B1">in Calculus 1 at least</span></a> the area under a curve, and you still get infinity for an answer, you did something wrong. These are all finite areas that we are finding. The limits all turn into finite numbers.</p>


</span>

</div>
</div>