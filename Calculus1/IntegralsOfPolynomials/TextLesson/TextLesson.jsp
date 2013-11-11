<div id="leftpage">
<div class="calcheaderleft"
	onmouseover="topicsMenuOn()"
	onmouseout="topicsMenuOff()"
		>Integrals of Polynomials</div>




		<div class="LeftPageTextContainer">
<h3>4.3 - Integrals of Polynomials</h3>
<span> <!-- The unique lesson content goes here -->

<p>An integral is an antiderivative (a derivative backwards). Like in the following questions:</p>

<p>2x is the derivative of <a href="#">what function
<span class="B1">x^2</span></a>?</p>

<p><img src="../../Functions/image631.png" alt="3x2"> is the derivative of <a href="#">what function
<span class="B1"><img src="../../Functions/image632.png" alt="x3"></span></a>?</p>

<p><img src="../../Functions/image633.png" alt="x4"> is the derivative of <a href="#">what function
<span class="B1"><img src="../../Functions/image634.png" alt="1/5x5"></span></a>?</p>

<p>Here is the formula for finding antiderivatives of polynomials:</p>

<p>If <img src="../../Functions/image635.png" alt="F'(x)=f(x)"> and <img src="../../Functions/image636.png" alt="f(x)=xn">, then <a href="#"><img src="../../Functions/image637.png" alt="F(x)=1n+1xn+1">
	<span class="B1">You add one to the exponent and multiply by the reciprocal of the new exponent. If you have a hard time using this formula, whenever you take an antiderivative, just take the derivative of your answer and if you get the same thing you started with, you did it right. That’s a good way to check your work with these problems. </span></a></p>

<p>To find the antiderivative of a special function, just remember what the derivatives of the special functions are and you should be able to figure out the antiderivatives you need to.</p>

<p>Try to get used to taking the antiderivative without thinking about the derivative too much.</p>

<p>The way to write an antiderivative is called an integral. The following is another way of saying, “Find the antiderivative of <img src="../../Functions/image638.png" alt="x2+3">”:</p>

<img src="../../Functions/image639.png" alt="(x2+3)dx">

<p>When you take the antiderivative, the <img src="../../Functions/image640.png" alt="integ"> (integral sign) and the <img src="../../Functions/image641.png" alt="dx"> go away.</p>


<a href="#"><img src="../../Functions/image642.png" alt="(x2+3)dx=13x3+3x+C">
	<span class="B1">An arbitrary constant</span></a>

<p>You always need to put the <img src="../../Functions/image643.png" alt="+C"> at the end of your answer. This is only necessary for <a href="#" class="L1">indefinite integrals
	<span class="B1">integrals with no bounds, unlike 12(x2+3)dx which is a definite integral</span></a>. Any number of functions could have the <a href="#">same derivative
	<span class="B1">if they have the same shape, like these ones: <img src="../../Graphs/graphoffbyaconstant.png" class="P1"></span></a>, and that is because constants (the <img src="../../Functions/image643.png" alt="+C">) die when you take their derivative.</p>

<p>You find a definite integral the same way, but at the end you plug in the bounds into the antiderivative, subtracting the bottom from the 
top bound:<a href="#">
<img src="../../Functions/image644.png" alt="12(x2+3)dx"><img src="../../Functions/image645.png" alt="12(x2+3)dx=13x3+3x|12=$$[13(2)2+3(2)]-[13(1)+3(1)]=43+6-13-3$$=1+3=4">
	<span class="B1">Don't forget to distribute your negatives properly. You’ll be really good at that after this section.</span></a></p>

<p>The way you would read the integral above is “\"The integral of <img src="../../Functions/image646.png" alt="x2+3"> from 1 to 2 is 4."</p>

<p>What that tells us is that the area under the curve x2+3 from x=1 to x=2 is <img src="../../Functions/image647.png" alt="4">.</p>

<p>This way is much faster than the Riemann sum way of finding the exact area under a curve. Let's check our <a href="#">answer from the last section
	<span class="B1">Link to that</span></a>:</p>

<img src="../../Functions/image648.png" alt="02(3-x2)dx=3x-13x3|02=3(2)-13(2)3-(0-0)=6-83=18-83=103">





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



<p>This is part of what is called the Fundamental Theorem of Calculus. There is one other part to the fundamental theorem of calculus. It can basically be described by this formula:></p>

<img src="../../Functions/image649.png" alt="ddx1xf(t)dt=f(x)">

<p>This is the most basic form. Notice that you are just taking the derivative of an antiderivative, so it's like you are taking a step forward then a step backward again. That's why you end up with the same function, but with x's instead of t's.</p>

<p>There is also this formula that you will use:</p>

<a href="#"><img src="../../Functions/image650.png" alt="ddx1f(x)g(t)dt=g(f(t))f'(t)">
	<span class="B1">This comes from the chain rule of derivatives.</span></a> 

<p>Here are some properties of integrals that should help:</p>

<ul>
<li><a href="#"><img src="../../Functions/image651.png" alt="abf(x)dx=-baf(x)dx">
	<span class="B1">you can integrate backwards if you put a negative sign in front of the integral.</span></a>
</li>
<li><a href="#"><img src="../../Functions/image652.png" alt="acf(x)dx=abf(x)dx+bcf(x)dx">
	<span class="B1">You can integrate to a certain point, take a break, then keep going.</span></a>
</li>
<li><a href="#"><img src="../../Functions/image653.png" alt="abcf(x)dx=cabf(x)dx">
	<span class="B1">you can pull constants out.</span></a>
</li>
</ul>


<p>So, here is an example where you would need these properties:</p>

<p><a href="#">Find the derivative of <img src="../../Functions/image654.png" alt="2x3x2(t2+1)dt">.
	<span class="B1">ddx2x3x2(t2+1)dt=ddx2x1(t2+1)dt+ddx13x2(t2+1)dt=-ddx12x(t2+1)dt+ddx13x2(t2+1)dt=-[(2x)2+1]2+[(3x2)2+1]6x
<img src="../../Functions/image655.png" alt="=-8x2-2+54x5+6x"></span></a></p>

<p>To sum this section up:

<p>There are two kinds of integrals: </p>
<ol>
<li>Definite integrals (integrals with bounds)
</li>
<li>Indefinite integrals (integrals without bounds)
</li>
</ol>
 
<p>To find them both, find the antiderivative of the function and either add a constant (+C), or plug in the top bound minus plug in the bottom bound.
To find the derivative of an integral, use properties of integrals, then plug in the bounds with x's in for all the t's. Multiply by the chain rule if needed.</p>



</span>

</div>
</div>