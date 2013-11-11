<div id="leftpage">
<div class="calcheaderleft"
	onmouseover="topicsMenuOn()"
	onmouseout="topicsMenuOff()"
		>U-Substitution</div>




		<div class="LeftPageTextContainer">
<h3>4.4 - U-Substitution</h3>
<span> <!-- The unique lesson content goes here -->


<img src="../../Functions/image656.png" alt="2x(x2-1)98dx">

<p>Here is a definite integral that you would not want to simplify. The other way to do this problem is with U-substitution.</p>

<p>U-substitution is a good idea when you see some x's inside of something slightly complicated, and you see the derivative of those x's on the outside of that complicated thing. Here, x2-1 is on the inside of a 98th power, and the derivative of <img src="../../Functions/image657.png" alt="x^2-1"> , which is 2x, is on the outside of it. Here is how you do U-Substitution on it:</p>

<p>Choose <img src="../../Functions/image658.png" alt="u=x2-1"></p>

<p>Take the derivative: <a href="#"><img src="../../Functions/image659.png" alt="du=2xdx">
	<span class="B1">The <img src="../../Functions/image660.png" alt="du">'s and dx's are important to write. They are not meaningless.</span></a></p>

<p>Divide everything over to the left side: <img src="../../Functions/image661.png" alt="du/2xdx=1"></p>

<p>Multiply your integral by this expression <img src="../../Functions/image662.png" alt="du2xdx">, which equals one, and substitute the u in at the same time: <a href="#"><img src="../../Functions/image663.png" alt="2x(x2-1)98dx=2x(u)98dxdu2xdx=u98du=199u99+C">
	<span class="B1">You can skip this step. It is a little weird to have both x's and u's in the same equation.</span></a></p>

<p>And then don't forget to plug the x's back in for the u.</p>

<a href="#"><img src="../../Functions/image664.png" alt="=199(x2-1)99+C">
	<span class="B1">Always remember the +C.</span></a>
	

<p>If you take the derivative of this, you will get what you started with. You will also be using the chain rule to do it. That means that U-substitution is like a backwards chain rule.</p>

<p>The key to U-substitution is practice. At first it might be hard to see what u to pick, but after a while it gets easy. Here is another one:</p>

<img src="../../Functions/image665.png" alt="2sin(lnx)xdx">



<p><a href="#"><img src="../../Functions/image670.png" alt="2sin(lnx)xdx=2sin(lnx)xdxxdudx=2sin(u)du=-2cos(u)=-2cos(lnx)+C">
	<span class="B1">You can pull constants out of integrals.</span></a></p>
	


	
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


<p>The thing inside of something else would be the lnx inside of the <img src="../../Functions/image666.png" alt="sinx">. And the <a href="#">derivative of lnx
	<span class="B1">1x</span></a> is there too. So <img src="../../Functions/image667.png" alt="u=lnx"> is a good substitution. </p>

<img src="../../Functions/image667.png" alt="u=lnx"><br>
<img src="../../Functions/image668.png" alt="du=1xdx"><br>
<img src="../../Functions/image669.png" alt="xdudx=1">

<p>When you have bounds, you need to convert them for the u integral as well:</p>

<img src="../../Functions/image671.png" alt="17x(x2+7)dx"><br>
<img src="../../Functions/image672.png" alt="u=x2+7"><br>
<img src="../../Functions/image659.png" alt="du=2xdx"><br>
du2xdx=1<img src="../../Functions/image661.png" alt="du/2xdx=1">

<p>For the bounds, you use the substitution u=x2+7 to convert them. They are numbers for x, so you plug them into x to find out what the numbers for u <img src="../../Functions/image673.png" alt="are: u=12+7=8,u=72+7=56"></p>

17x(x2+7)dx=x(x2+7)dxdu2xdx=756121udu=12ln|u| |756=12ln56-12ln7=12ln567

<p>U-substitution with bounds can be nice because you don't have to ever go back into x's. There is an alternate way of doing it, however, which takes less thinking but more writing. That is not switching the bounds, but instead in the end substituting the x's back in, and plugging the old bounds into all of the x's.</p>

<p>There is one more trick with U-substitution. You can use your choice of u more than one time in your integral if you need to. <a href="#">Here is an example
	<span class="B1"><img src="../../Functions/image674.png" alt="xx-1dx">
The thing that is inside of something is <img src="../../Functions/image675.png" alt="x-1">, so that’s our first choice for u.

<img src="../../Functions/image676.png" alt="u=x-1"><br>
<img src="../../Functions/image677.png" alt="du=dx"><br>
But this won't take care of the x on the outside. But we still need to express the integral entirely in terms of u. No x's left behind. So you can use your substitution again, this time solve for x by adding the 1 over: <img src="../../Functions/image678.png" alt="x=u+1">
xx-1dx=(u+1)udu=u32+u12du=25u52+23u32=25(x-1)52+23(x-1)32+C</span></a>
</p>

</span>

</div>
</div>