<div id="leftpage">
<div class="calcheaderleft"
	onmouseover="topicsMenuOn()"
	onmouseout="topicsMenuOff()"
		>Intermediate Value Theorem</div>
		<div class="LeftPageTextContainer">
<h3>2.7 - Intermediate Value Theorem Examples</h3>
<span> <!-- content goes here-->


<ul>
<li>
<p>Prove that there is at least one solution to the equation <img src="../../Functions/image441.png" alt="ex+x=2">.</p>

<h4>Solution</h4>

<p>Notice that it's impossible to solve for x.</p>

<p>Since <img src="../../Functions/image442.png" alt="ex+x"> is a continuous function, we can use the Intermediate Value Theorem. We get to pick any <i>a</i> and <i>b</i> that we think will give us numbers above and below 2. If it does, our answer will look like this:</p>

<img src="../../Functions/image443.png" alt="f(0)=e0+0=1"><br>
<img src="../../Functions/image444.png" alt="f(1)=e1+12.7+1=3.7">

<p>Therefore, since <img src="../../Functions/image442.png" alt="ex+x"> is continuous on the interval <img src="../../Functions/image445.png" alt="[0,1]"> (it's actually continuous everywhere, but we only need it between 0 and 1), by the Intermediate Value Theorem, there is a <i>c</i> where <img src="../../Functions/image446.png" alt="0<c<1">, such that <img src="../../Functions/image447.png" alt="ec+c=2">. So <img src="../../Functions/image441.png" alt="ex+x=2"> has at least one solution.</p>
</li>


</ul>

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

<ul>
<li>
<p>Prove that there is at least one real solution to the equation <img src="../../Functions/image448.png" alt="x-3=lnx"></p>

<h4>Solution</h4>

<p>One step we can do first is move the lnx over. Then we can just prove that the new equation has at least one real solution.</p>

<img src="../../Functions/image449.png" alt="x-lnx-3=0">

<p>Now our goal is to pick two x values where one makes our function positive and the other makes our function negative.</p>

<img src="../../Functions/image450.png" alt="f(3)=3-ln3-3=-ln3<0">

<p>So we found the negative. </p>

<img src="../../Functions/image451.png" alt="f(e2)=e2-lne2-3=e2-2-32.72-5=6.29-5=1>0">

<p>Since <img src="../../Functions/image452.png" alt="x-lnx-3"> is continuous on <img src="../../Functions/image453.png" alt="[3,e2]">, there exists a real number <i>c</i> such that <img src="../../Functions/image454.png" alt="c-lnc-3=0"> by the Intermediate Value Theorem. Therefore, <img src="../../Functions/image448.png" alt="x-3=lnx"> has at least one real solution.</p>

</li>
</ul>

</span>
</div>
</div>