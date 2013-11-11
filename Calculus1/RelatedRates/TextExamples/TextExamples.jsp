<div id="leftpage">
<div class="calcheaderleft"
	onmouseover="topicsMenuOn()"
	onmouseout="topicsMenuOff()"
		>Related Rates</div>
		<div class="LeftPageTextContainer">
<h3>3.10 - Related Rates Examples</h3>
<span> <!-- content goes here-->

<p>Here are a 4 examples that are extremely common on tests and homework:
<ul>

<li>The sliding ladder</li>
<li>The changing angle</li>
<li>The pile of dirt</li>
<li>The man and the lamppost</li>


<h4>The sliding ladder</h4>

<p>The top of a ladder of length 24 ft that is leaning up against a wall is sliding down at a speed of 2 ft/s. How fast is the bottom end of the ladder sliding away from the house when it is 8 feet away from the house?</p>

<h4>Solution</h4>

<p>A picture is nice to draw:</p> <img src="../../Graphs/sliding1.png" class="P1">

<p>Let's name the height of the ladder against the house <i>y</i>, and the distance of the bottom end of the ladder from the house <i>x</i>. The length of the ladder is 24 ft (since it doesn't change, it doesn't need a variable. But we can call it L).</p> 


<p>So the information we have is:</p>
<ul>
<li>
<img src="../../Functions/image359.png" alt="dydx=-2 ft/s"> (negative because y is decreasing)
</li>

<li>
<img src="../../Functions/image360.png" alt="x=8 ft">
</li>

<li>
Length of ladder <img src="../../Functions/image361.png" alt="L = 24 ft">
</li>

<li>
We want to find <img src="../../Functions/image362.png" alt="dx/dt">.
</li>
</ul>

<p>And so we have information involving the length of the ladder, <i>x</i>, and <i>y</i>. What would be the equation that relates all of these things?</p>

<img src="../../Functions/image363.png" alt="x^2+y^2=L^2">

<p>So to find <img src="../../Functions/image362.png" alt="dx/dt">, we can use the derivative of this equation.</p>

<img src="../../Functions/image364.png" alt="2xdxdt+2ydydt=0"> (because L is a constant.)

<p>Plug in the information, solve for <img src="../../Functions/image362.png" alt="dx/dt">, and we're done:</p>

<img src="../../Functions/image365.png" alt="dxdt=-2y(-2)2(8)=y4">

<p>We weren't given <i>y</i>. But we haven't used <i>L</i> yet. So we can go back to the original equation and use it to find what <i>y</i> is when <i>x</i> is <i>8 ft</i>.</p>



<img src="../../Functions/image366.png" alt="8^2+y^2=24^2"><br>
<img src="../../Functions/image367.png" alt="y=576-64=512=2128=162">
<p>Substituting that in,</p>
<img src="../../Functions/image368.png" alt="dydt=1624=42 ft/s">

<h4>The changing angle</h4>

<p>The right triangle in the picture <a href="#" class="L1">(image of the triangle)<img src="../../Graphs/changingangle1.png" class="imgA1"></a> is undergoing a change in length in one of its sides, y. If it is increasing at a rate of 3 units/second, find the rate of change of the angle opposite from it when it is 9 units long.</p>

<h4>Solution</h4>

<p>So we want <img src="../../Functions/image371.png" alt="dtheta/dt">, and we have <img src="../../Functions/image372.png" alt="dy/dt=3"> and the other side is always just <img src="../../Functions/image373.png" alt="12">.
We need an equation that relates <i>y</i>, Theta, and the side that has the constant length <img src="../../Functions/image373.png" alt="12">. That would have to be a trig function.</p>

<img src="../../Functions/image374.png" alt="tan(theta)=y/12">

<p>So we take the derivative, and we get:</p>

<img src="../../Functions/image375.png" alt="sec^2dthetadt=112dydt"><br>


<img src="../../Functions/image376.png" alt="ddt=112dydtcos2">

<p>The thing we don't have is Theta. So we go back to the original equation to find it. We know that at the instant we are interested in, <img src="../../Functions/image377.png" alt="y=9">. <i>x</i> is always 12. So the tangent of the angle has to be:</p>

<img src="../../Functions/image378.png" alt="tan=129=43">

<p>We don't care about the tangent, though. We want the cosine. In order to find the cosine, we need to find the 3rd side. It happens to be a 3-4-5 triangle, so we know that the 3rd side is 5 units long. So the cosine has to be <img src="../../Functions/image379.png" alt="cos=45">. So we can substitute that in now:</p>

<img src="../../Functions/image380.png" alt="ddt=112(3)(45)2=164*25=425 rad/s">

<h4>The pile of dirt</h4>

<p>A dirt pile is being formed in the shape of a cone, where the diameter of the base of the cone is always equal to the height of the cone. Dirt is being piled on at a rate of <img src="../../Functions/image381.png" alt="27cm^3/s" >. Find the rate of change of the height of the cone when the radius is 1 meter long.</p>


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

<h4>Solution</h4>

<img src="../../Graphs/dirtpile1.png" class="P1">
<p>This problem involves a volume of dirt being piled onto a cone. The volume of the cone increases, and that naturally affects the radius and height of the cone.</p>

<p>We know <img src="../../Functions/image382.png" alt="d=h" >, <img src="../../Functions/image383.png" alt="dVdt=27cm3/s" >, and we are interested in the instant where <img src="../../Functions/image384.png" alt="r=1m" >. We want to find <img src="../../Functions/image385.png" alt="dhdt" >.</p>

<p>The volume equation of a cone is what we would need to get the <img src="../../Functions/image385.png" alt="dVdt" > involved. It also involves the height of the cone, as well as the radius. So that is good.</p>

<img src="../../Functions/image387.png" alt="V=13r2h" >



<p>But here we have two variables on the right side of the equation. We need to get rid of one somehow, because this is single variable calculus. The variables are the radius and the height of the cone. They are related to each other because the diameter always equals the height. </p>

<img src="../../Functions/image382.png" alt="d=h" >, <img src="../../Functions/image388.png" alt="d=2r" >

<p>So we can say <img src="../../Functions/image389.png" alt="h=2r" > or <img src="../../Functions/image390.png" alt="r=1/2h" >. Which one should we use? Do we want to get rid of <i>h</i>, or <i>r</i>? Well, we want to find <img src="../../Functions/image385.png" alt="dhdt" > in the end, so let's keep <i>h</i> around. So we choose <img src="../../Functions/image390.png" alt="r=1/2h" > and substitute it into the volume equation:</p>

<a href="#"><img src="../../Functions/image391.png" alt="V=13(12h)2h">
	<span class="B1">Now that we have it in a single variable, we can take the derivative. But it's always best to simplify with algebra before we do calculus, so we'll do that and then take the derivative.
	</span></a><br>

<img src="../../Functions/image392.png" alt="V=1314h2h=12h3" ><br>
<img src="../../Functions/image393.png" alt="dVdt=4h2dhdt" ><br>

<p>And now we can solve for <img src="../../Functions/image385.png" alt="dhdt" >.</p>

<img src="../../Functions/image394.png" alt="dhdt=dVdt4h2"><br>


<p>We know <img src="../../Functions/image385.png" alt="dVdt" >, and we know that the radius will be <img src="../../Functions/image384.png" alt="r=1m" > at that instant, so we know that <img src="../../Functions/image395.png" alt="d=2m"> and <img src="../../Functions/image396.png" alt="h=2m">. But <img src="../../Functions/image385.png" alt="dVdt"> was given in cubic centimeters per second, so to keep the units consistent, we will say <img src="../../Functions/image397.png" alt="h=200 cm."></p>

<a href="#"><img src="../../Functions/image398.png" alt="dhdt=27(4*40000)=2710,000cm/s">
	<span class="B1">That's pretty slow. But it makes sense because only 27 cubic centimeters were being poured on it every second. That's like the amount of dirt inside of a miniature 3X3 rubik's cube. And the pile was already 2 meters high. So it makes sense it wouldn't change very much.</span></a>

<h4>The man and the lamppost</h4>

<p>A 6 foot tall man is walking away from a 10 foot tall lamp post at a speed of 2 feet/second. How fast is the tip of his shadow moving away from the lamp post when the man is 3 feet away from the post?</p>

<p><a href="#" class="L1">A picture is good for this problem.<img src="../../Graphs/lamppost1.png" class="imgA1"></a></p>



<p>The things that don't change are:</p>
<ul>
<li>The height of the man</li>
<li>The height of the lamp post</li>
<li>The speed of his walking.</li>
</ul>

<p>The thing that we are interested in is the speed of the tip of his shadow. One of the tricks to this problem is realizing that there are two other speeds that contribute to this: The speed of the tip of the shadow moving away from the man, and the speed of the man moving away from the lamp post.</p>


<p>Let's name the length of the shadow <i>Jimmer</i>, and the distance of the man from the lamp post <i>Todd</i>. Since <i>Todd</i> is changing during the whole situation, and is only equal to 3 feet at one instant, we can't just use 3 to describe this distance. We have to call it <i>Todd</i>. Let's call the answer we want dx/dt, because it is a rate.</p>

<p>Finding the equation that relates all of this is the other trick to this problem. There are really 4 lengths that we are interested in: <i>Todd</i>, <i>Jimmer</i> (since the two add up to make x), the height of the man (6 ft), and the height of the post (10 ft). If we draw the situation, it looks like a triangle inside of a bigger triangle, sharing the same angle at the tip of the shadow. they share the same angle, so we can use similar triangles.</p>

<img src="../../Graphs/lamppost2.png" class="P1"><br>

<img src="../../Functions/image402.png" alt="10Todd+Jimmer=6Jimmer"><br>
<img src="../../Functions/image403.png" alt="10Jimmer=6(Jimmer+Todd)">

<p>We know <img src="../../Functions/image404.png" alt="dTodd/dt">, and we want <img src="../../Functions/image405.png" alt="dJimmer/dt"> (because <img src="../../Functions/image406.png" alt="x=Jimmer+Todd"> and so 
<img src="../../Functions/image407.png" alt="dxdt=dJimmerdt+dTodddt)">) So we take the derivative:</p>


<img src="../../Functions/image408.png" alt="10dJimmerdt=6dJimmerdt+6dTodddt"><br>
<img src="../../Functions/image409.png" alt="4dJimmerdt=6dTodddt"><br>
<img src="../../Functions/image410.png" alt="dJimmerdt=32dTodddt=32(2)=3 ft/s"><br>
<img src="../../Functions/image411.png" alt="dxdt=dJimmerdt+dTodddt=3+2=5 ft/s"><br>

<p>Here are some more random examples:</p>

<p>A car is driving backwards at 10 meters per second and almost collides with <a href="#" class="L1">a beached whale holding a camera.<img src="../../Graphs/beachedwhale1.png" class="imgA1"></a> The car backs in a straight line, and at the point right in front of the whale it is 1 meter away from the camera. How fast does the angle of the camera have to change at this point if the whale is to point the camera directly at the car the whole time?</p>

<p>A good idea would be to draw the situation. We need to give names to the important quantities: The angle of the camera, the distance of the car from the point in front of the whale, and the speed of the car. The speed of the angle is what we want.</p>

<p>Let's call the angle... Theta. So we want to find <img src="../../Functions/image371.png" alt="dtheta/dt">. Let's call the distance of the car from the point in front of the whale y. So the speed of the car will be <img src="../../Functions/image412.png" alt="-dydt"> (because y is getting smaller as the car approaches).
So we need an equation that will relate <img src="../../Functions/image413.png" alt="y,theta">,  and the <img src="../../Functions/image414.png" alt="1"> meter distance. That seems like tangent.</p>


<img src="../../Functions/image415.png" alt="tan=y1">

<p>And now we take the derivative:</p>

<img src="../../Functions/image416.png" alt="sec2ddt=dydt">
<img src="../../Functions/image417.png" alt="ddt=dydtcos2"><br>
<p>At the instant we care about, <img src="../../Functions/image418.png" alt="theta=0">, and <img src="../../Functions/image419.png" alt="dydt=-10"></p>

<img src="../../Functions/image420.png" alt="dtheta/dt=-10rad/s">

<p>So it is changing at a rate of <img src="../../Functions/image421.png" alt="10 rad/s">.</p>

<ul><li>If the amount of fame you have is given by this equation: <img src="../../Functions/image422.png" alt="A=.08e.6D+10De-.01tsin(t/40)"> Where <img src="../../Functions/image423.png" alt="D"> is the number of awesome things you did during your life, and t is the number of years since you have died, find how much your fame is changing 200 years after you die if you did 15 awesome things during your life.</li></ul>

<h4>Solution:</h4>

We have <img src="../../Functions/image424.png" alt="t=200, D=15">, and we need to find <img src="../../Functions/image425.png" alt="dA/dt">. Since <img src="../../Functions/image423.png" alt="D"> is constant after your life, it doesn't matter when you plug it into the equation and you don't need to multiply by <img src="../../Functions/image426.png" alt="dD/dt"> when you take the derivative. But since t changes, we can't plug in t=200 until after the derivative.</p>


<p><img src="../../Functions/image427.png" alt="dAdt=0+150e-.01tcos("><img src="../../Functions/image428.png" alt="pi*t/40"><img src="../../Functions/image429.png" alt="*pi/40-1.5e-.01tsin">(t/40) 	(product rule)</p>

<img src="../../Functions/image430.png" alt="dAdt(200)=150e-2cos(200/40))*/40-1.5e-2sin(200/40)"><br>
<img src="../../Functions/image431.png" alt="=154e2cos(5)-1.5e-2sin(5)=-154e2=-1.5944 fames/yr">


</span>
</div>
</div>