<div id="leftpage">
<div class="calcheaderleft"
	onmouseover="topicsMenuOn()"
	onmouseout="topicsMenuOff()"
		>Riemann Sums</div>
		<div class="LeftPageTextContainer">
<h3>4.1 - Riemann Sums</h3>
<span> <!-- content goes here-->


<p>Approximate the area under the curve <img src="../../Functions/image606.png" alt="x3-3x+7"> from x=-1 to x=2 using 3 rectangles using left endpoint, right endpoint, and midpoint rectangles.</p>

<h4>Solution:</h4>

<p>3 rectangles means <img src="../../Functions/image607.png" alt="n=3"></p>

<p>From x=-1 to x=2 means <img src="../../Functions/image608.png" alt="a=-1"> and b=2</p>

<p>So, with the formulas:</p>

<p><img src="../../Functions/image609.png" alt="x=2--13=33=1">  (If you draw a <a href="#" class="L1">picture<img src="../../Graphs/graphriemann2.1.png" class="imgA1"></a>, you can see that dividing the area into three rectangles will make three rectangles with width 1)</p>

<h4>Left endpoint</h4>

<img src="../../Functions/image610.png" alt="xi=-1+(i-1)1=i-2"><br>
<img src="../../Functions/image611.png" alt="A=i=13(xi3-3xi+7)*1=i=13[(i-2)3-3(i-2)+7]*1"><br>
<img src="../../Functions/image612.png" alt="=[(1-2)3-3(1-2)+7]*1+[(2-2)3-3(2-2)+7]*1+[(3-2)3-3(3-2)+7]*1"><br>
<img src="../../Functions/image613.png" alt="=[-1+3+7]+[7]+[1-3+7]=9+7+5=21">

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


<h4>Midpoint</h4>

<img src="../../Functions/image614.png" alt="xi=-1+(i-12)1=i-3/2"><br>
<img src="../../Functions/image615.png" alt="A=i=13[(i-32)3-3(i-32)+7]*1=[-18+32+7]*1+[18-32+7]*1+[278-92+7]*1=278-92+21"><br>
<img src="../../Functions/image616.png" alt="=27-36+1688=1598=19.875">

<h4>Right endpoint</h4>

<img src="../../Functions/image618.png" alt="xi=-1+i*1=i-1"><br>
<a href="#"><img src="../../Functions/image619.png" alt="A=i=13[(i-1)3-3(i-1)+7]*1=[7]*1+[1-3+7]*1+[8-6+7]*1=7+5+9=21">
	<span class="B1">Well that's rare. Left endpoints and right endpoints don't usually give the same area. The exact area under the curve is 20.25, so the midpoint method wins.</span></a>

</span>
</div>
</div>