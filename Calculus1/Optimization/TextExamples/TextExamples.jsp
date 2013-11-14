<div id="leftpage">
<div class="calcheaderleft"
	onmouseover="topicsMenuOn()"
	onmouseout="topicsMenuOff()"
		>Optimization</div>
		<div class="LeftPageTextContainer">
<h3>3.12.5 - Optimization Examples</h3>
<span> <!-- content goes here-->


<p>This is an extremely common question with optimization:</p>

<p>You are designing <a href="#" class="L1">a cardboard box with an open top<img src="../../Graphs/cardboardbox1.png" class="imgA1"></a>. The bottom of the box is in the shape of a square. You are allowed 60 cents of material to make the box. The cost of the bottom of the box is .2 cents per square inch and the cost of the sides of the box is .1 cent per square inch. Find the maximum volume that can be contained in this box.</p>

<h4>Solution:</h4>

<p>We want to maximize volume. So we need the volume equation of a box:</p>

<img src="../../Functions/image558.png" alt="V=xyz">

<p>But we know the base is a square, so <img src="../../Functions/image559.png" alt="x=y">:</p>

<img src="../../Functions/image560.png" alt="V=x^2z">

<p>We need the right side in a single variable, so we look at the information in our constraints. It is a constraint on the cost of the box. So we write an equation for the cost of the box:</p>

<p><img src="../../Functions/image561.png" alt="C=.001(4xz)+.002x2=.004xz+.002x2">
 (Note that the regular surface area of this box would be A=4xz+x2. To get the cost, multiple the cost of each surface by the respective area of each surface.)</p>

<img src="../../Functions/image562.png" alt="A=4xz+x2"> <br><br>

</span>
		</div>
		</div>

		<div id="rightpage">

<div class="calcheaderright"
	onmouseover="classesMenuOn()";
	onmouseout="classesMenuOff()";
	onclick="(this).style.backgroundColor='red'">Calculus 1</div>


		<div class="RightPageTextContainer">
	
<span> <!-- content goes here-->


<p>Let's solve for z.</p>

<img src="../../Functions/image563.png" alt=".6=.004xz+.002x2"><br>
<img src="../../Functions/image564.png" alt="z">
<img src="../../Functions/image565.png" alt=".6-.002x2=.004xz"><br>
<img src="../../Functions/image566.png" alt="z=.6-.002x2.004x">

<p>Now we can plug that in:

<img src="../../Functions/image567.png" alt="V=x2(.6-.002x2.004x)=x610-21000x241000=x(150-12x2)=150x-12x3"><br>
<img src="../../Functions/image568.png" alt="V'=150-32x2=0"><br>
<img src="../../Functions/image569.png" alt="x2=100"><br>
<img src="../../Functions/image570.png" alt="x=10">

<p>It wouldn't make sense to have a box with negative sides, so we'll just take the positive answer. Now we can make sure that it is a maximum:</p>

<img src="../../Functions/image571.png" alt="V''=-3x">

<p>This is negative for all <img src="../../Functions/image572.png" alt="x>0">, which is all values of x that would make sense for a real life situation. So it is a maximum.</p>

<p>What did the question ask? It asked for the volume. So we need to find that with the volume equation.</p>

<img src="../../Functions/image573.png" alt="V=150x-12x3=150(10)-12(10)3=1500-500=1000in3">

</span>
</div>
</div>