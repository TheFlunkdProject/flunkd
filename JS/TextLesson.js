document.getElementById('topicsmenu').style.opacity="0";//because BlueAndBlack css always dominates somehow...

var box1Trigger = document.getElementById('box1Trigger');
var box2Trigger = document.getElementById('box2Trigger');
var box3Trigger = document.getElementById('box3Trigger');
var box4Trigger = document.getElementById('box4Trigger');
var box5Trigger = document.getElementById('box5Trigger');
var box6Trigger = document.getElementById('box6Trigger');
var box7Trigger = document.getElementById('box7Trigger');
var box8Trigger = document.getElementById('box8Trigger');
var box9Trigger = document.getElementById('box9Trigger');
var box10Trigger = document.getElementById('box10Trigger');
var box11Trigger = document.getElementById('box11Trigger');
var box12Trigger = document.getElementById('box12Trigger');
var box13Trigger = document.getElementById('box13Trigger');
var box14Trigger = document.getElementById('box14Trigger');
var box15Trigger = document.getElementById('box15Trigger');

var box1 = document.getElementById('box1');
var box2 = document.getElementById('box2');
var box3 = document.getElementById('box3');
var box4 = document.getElementById('box4');
var box5 = document.getElementById('box5');
var box6 = document.getElementById('box6');
var box7 = document.getElementById('box7');
var box8 = document.getElementById('box8');
var box9 = document.getElementById('box9');
var box10 = document.getElementById('box10');
var box11 = document.getElementById('box11');
var box12 = document.getElementById('box12');
var box13 = document.getElementById('box13');
var box14 = document.getElementById('box14');
var box15 = document.getElementById('box15');


var cssStringOpenboxFadeIn = "visibility: visible;transition: border .4s .2s,  " + 
"background-color .4s .2s, visibility .4s .2s, color .4s .2s, opacity .4s .2s;" + 
"-webkit-transition: border .4s .2s,  background-color .4s .2s, visibility .4s .2s, " + 
"color .4s .2s opacity .4s .2s;-moz-transition: border .4s .2s,  background-color .4s .2s, " + 
"visibility .4s .2s, color .4s .2s opacity .4s .2s;-o-transition: border .4s .2s,  " + 
"background-color .4s .2s, visibility .4s .2s, color .4s .2s opacity .4s .2s;" + 
"background-color: rgba(174,204,255,.9);border: 5px ridge rgba(100,100,100,1);" + 
"color: black;opacity: 1;cursor:pointer;"

var cssStringTriggerOn="color:#882288;cursor:pointer;"
	
var cssStringCloseboxNoTransition = "transition: border 0s,  " + 
"background-color 0s, visibility 0s, color 0s;-webkit-transition: " + 
"border 0s,  background-color 0s, visibility 0s, color 0s;-moz-transition: " + 
"border 0s,  background-color 0s, visibility 0s, color 0s;-o-transition: border 0s,  " + 
"background-color 0s, visibility 0s, color 0s;visibility: hidden;" + 
"border: 5px ridge rgba(220,220,220,0); color: rgba(0,0,0,0);" + 
"background-color: rgba(102,204,255,0);opacity: 0;";

var cssStringTriggerOff="color:#6E8C6E;cursor:auto;"
	
var cssStringCloseboxFadeOut = "visibility: hidden;transition: border .2s,  " + 
"background-color .2s, visibility 0s .2s, opacity .2s, color .2s;" + 
"-webkit-transition: border .2s,  background-color .2s, visibility 0s .2s, " + 
"opacity .2s, color .2s;-moz-transition: border .2s,  background-color .2s, " + 
"visibility 0s .2s, opacity .2s, color .2s;-o-transition: border .2s,  " + 
"background-color .2s, visibility 0s .2s, opacity .2s, color .2s;position: fixed;" + 
"border: 5px ridge rgba(220,220,220,0);border-radius: 5px;width: 300px; height: 300px;" + 
"margin: auto;top: 0;left: 0;right: 0;bottom: 0;padding: 10px;" + 
"background-color: #333; /* for browsers that don't understand rgba() notation */" + 
"background-color: rgba(102,204,255,0);color: black;opacity: 0;z-index:500;";




function openbox1FadeIn() {
box1.style.cssText = cssStringOpenboxFadeIn;
box1Trigger.style.cssText=cssStringTriggerOn;
}

function openbox2FadeIn() {
box2.style.cssText = cssStringOpenboxFadeIn;
box2Trigger.style.cssText=cssStringTriggerOn;
}

function openbox3FadeIn() {
box3.style.cssText = cssStringOpenboxFadeIn;
box3Trigger.style.cssText=cssStringTriggerOn;
}

function openbox4FadeIn() {
box4.style.cssText = cssStringOpenboxFadeIn;
box4Trigger.style.cssText=cssStringTriggerOn;
}

function openbox5FadeIn() {
box5.style.cssText = cssStringOpenboxFadeIn;
box5Trigger.style.cssText=cssStringTriggerOn;
}

function openbox6FadeIn() {
box6.style.cssText = cssStringOpenboxFadeIn;
box6Trigger.style.cssText=cssStringTriggerOn;
}

function openbox7FadeIn() {
box7.style.cssText = cssStringOpenboxFadeIn;
box7Trigger.style.cssText=cssStringTriggerOn;
}

function openbox8FadeIn() {
box8.style.cssText = cssStringOpenboxFadeIn;
box8Trigger.style.cssText=cssStringTriggerOn;
}

function openbox9FadeIn() {
box9.style.cssText = cssStringOpenboxFadeIn;
box9Trigger.style.cssText=cssStringTriggerOn;
}

function openbox10FadeIn() {
box10.style.cssText = cssStringOpenboxFadeIn;
box10Trigger.style.cssText=cssStringTriggerOn;
}

function openbox11FadeIn() {
box11.style.cssText = cssStringOpenboxFadeIn;
box11Trigger.style.cssText=cssStringTriggerOn;
}

function openbox12FadeIn() {
box12.style.cssText = cssStringOpenboxFadeIn;
box12Trigger.style.cssText=cssStringTriggerOn;
}

function openbox13FadeIn() {
box13.style.cssText = cssStringOpenboxFadeIn;
box13Trigger.style.cssText=cssStringTriggerOn;
}

function openbox14FadeIn() {
box14.style.cssText = cssStringOpenboxFadeIn;
box14Trigger.style.cssText=cssStringTriggerOn;
}

function openbox15FadeIn() {
box15.style.cssText = cssStringOpenboxFadeIn;
box15Trigger.style.cssText=cssStringTriggerOn;
}






function closebox1FadeOut() {
box1.style.cssText = cssStringCloseboxFadeOut;
box1Trigger.style.cssText=cssStringTriggerOff;
}

function closebox2FadeOut() {
box2.style.cssText = cssStringCloseboxFadeOut;
box2Trigger.style.cssText=cssStringTriggerOff;
}

function closebox3FadeOut() {
box3.style.cssText = cssStringCloseboxFadeOut;
box3Trigger.style.cssText=cssStringTriggerOff;
}

function closebox4FadeOut() {
box4.style.cssText = cssStringCloseboxFadeOut;
box4Trigger.style.cssText=cssStringTriggerOff;
}

function closebox5FadeOut() {
box5.style.cssText = cssStringCloseboxFadeOut;
box5Trigger.style.cssText=cssStringTriggerOff;
}

function closebox6FadeOut() {
box6.style.cssText = cssStringCloseboxFadeOut;
box6Trigger.style.cssText=cssStringTriggerOff;
}

function closebox7FadeOut() {
box7.style.cssText = cssStringCloseboxFadeOut;
box7Trigger.style.cssText=cssStringTriggerOff;
}

function closebox8FadeOut() {
box8.style.cssText = cssStringCloseboxFadeOut;
box8Trigger.style.cssText=cssStringTriggerOff;
}

function closebox9FadeOut() {
box9.style.cssText = cssStringCloseboxFadeOut;
box9Trigger.style.cssText=cssStringTriggerOff;
}

function closebox10FadeOut() {
box10.style.cssText = cssStringCloseboxFadeOut;
box10Trigger.style.cssText=cssStringTriggerOff;
}
function closebox11FadeOut() {
box11.style.cssText = cssStringCloseboxFadeOut;
box11Trigger.style.cssText=cssStringTriggerOff;
}

function closebox12FadeOut() {
box12.style.cssText = cssStringCloseboxFadeOut;
box12Trigger.style.cssText=cssStringTriggerOff;
}

function closebox13FadeOut() {
box13.style.cssText = cssStringCloseboxFadeOut;
box13Trigger.style.cssText=cssStringTriggerOff;
}

function closebox14FadeOut() {
box14.style.cssText = cssStringCloseboxFadeOut;
box14Trigger.style.cssText=cssStringTriggerOff;
}

function closebox15FadeOut() {
box15.style.cssText = cssStringCloseboxFadeOut;
box15Trigger.style.cssText=cssStringTriggerOff;
}





function closebox1NoTransition() {
box1.style.cssText = cssStringCloseboxNoTransition;
}

function closebox2NoTransition() {
box2.style.cssText = cssStringCloseboxNoTransition;
}

function closebox3NoTransition() {
box3.style.cssText = cssStringCloseboxNoTransition;
}

function closebox4NoTransition() {
box4.style.cssText = cssStringCloseboxNoTransition;
}

function closebox5NoTransition() {
box5.style.cssText = cssStringCloseboxNoTransition;
}

function closebox6NoTransition() {
box6.style.cssText = cssStringCloseboxNoTransition;
}

function closebox7NoTransition() {
box7.style.cssText = cssStringCloseboxNoTransition;
}

function closebox8NoTransition() {
box8.style.cssText = cssStringCloseboxNoTransition;
}

function closebox9NoTransition() {
box9.style.cssText = cssStringCloseboxNoTransition;
}

function closebox10NoTransition() {
box10.style.cssText = cssStringCloseboxNoTransition;
}

function closebox11NoTransition() {
box11.style.cssText = cssStringCloseboxNoTransition;
}

function closebox12NoTransition() {
box12.style.cssText = cssStringCloseboxNoTransition;
}

function closebox13NoTransition() {
box13.style.cssText = cssStringCloseboxNoTransition;
}

function closebox14NoTransition() {
box14.style.cssText = cssStringCloseboxNoTransition;
}

function closebox15NoTransition() {
box15.style.cssText = cssStringCloseboxNoTransition;
}



box1.addEventListener("mouseover", openbox1FadeIn);
box1.addEventListener("mouseout", closebox1FadeOut);
box1.addEventListener("click", closebox1NoTransition);
box1.className = "hiddenBoxA";

box1Trigger.addEventListener("mouseover", openbox1FadeIn);
box1Trigger.addEventListener("mouseout", closebox1FadeOut);
box1Trigger.addEventListener("click", closebox1NoTransition);
box1Trigger.className = "hiddenBoxTriggerA";


box2.addEventListener("mouseover", openbox2FadeIn);
box2.addEventListener("mouseout", closebox2FadeOut);
box2.addEventListener("click", closebox2NoTransition);
box2.className = "hiddenBoxA";

box2Trigger.addEventListener("mouseover", openbox2FadeIn);
box2Trigger.addEventListener("mouseout", closebox2FadeOut);
box2Trigger.addEventListener("click", closebox2NoTransition);
box2Trigger.className = "hiddenBoxTriggerA";


box3.addEventListener("mouseover", openbox3FadeIn);
box3.addEventListener("mouseout", closebox3FadeOut);
box3.addEventListener("click", closebox3NoTransition);
box3.className = "hiddenBoxA";

box3Trigger.addEventListener("mouseover", openbox3FadeIn);
box3Trigger.addEventListener("mouseout", closebox3FadeOut);
box3Trigger.addEventListener("click", closebox3NoTransition);
box3Trigger.className = "hiddenBoxTriggerA";


box4.addEventListener("mouseover", openbox4FadeIn);
box4.addEventListener("mouseout", closebox4FadeOut);
box4.addEventListener("click", closebox4NoTransition);
box4.className = "hiddenBoxA";

box4Trigger.addEventListener("mouseover", openbox4FadeIn);
box4Trigger.addEventListener("mouseout", closebox4FadeOut);
box4Trigger.addEventListener("click", closebox4NoTransition);
box4Trigger.className = "hiddenBoxTriggerA";


box5.addEventListener("mouseover", openbox5FadeIn);
box5.addEventListener("mouseout", closebox5FadeOut);
box5.addEventListener("click", closebox5NoTransition);
box5.className = "hiddenBoxA";

box5Trigger.addEventListener("mouseover", openbox5FadeIn);
box5Trigger.addEventListener("mouseout", closebox5FadeOut);
box5Trigger.addEventListener("click", closebox5NoTransition);
box5Trigger.className = "hiddenBoxTriggerA";


box6.addEventListener("mouseover", openbox6FadeIn);
box6.addEventListener("mouseout", closebox6FadeOut);
box6.addEventListener("click", closebox6NoTransition);
box6.className = "hiddenBoxA";

box6Trigger.addEventListener("mouseover", openbox6FadeIn);
box6Trigger.addEventListener("mouseout", closebox6FadeOut);
box6Trigger.addEventListener("click", closebox6NoTransition);
box6Trigger.className = "hiddenBoxTriggerA";


box7.addEventListener("mouseover", openbox7FadeIn);
box7.addEventListener("mouseout", closebox7FadeOut);
box7.addEventListener("click", closebox7NoTransition);
box7.className = "hiddenBoxA";

box7Trigger.addEventListener("mouseover", openbox7FadeIn);
box7Trigger.addEventListener("mouseout", closebox7FadeOut);
box7Trigger.addEventListener("click", closebox7NoTransition);
box7Trigger.className = "hiddenBoxTriggerA";


box8.addEventListener("mouseover", openbox8FadeIn);
box8.addEventListener("mouseout", closebox8FadeOut);
box8.addEventListener("click", closebox8NoTransition);
box8.className = "hiddenBoxA";

box8Trigger.addEventListener("mouseover", openbox8FadeIn);
box8Trigger.addEventListener("mouseout", closebox8FadeOut);
box8Trigger.addEventListener("click", closebox8NoTransition);
box8Trigger.className = "hiddenBoxTriggerA";


box9.addEventListener("mouseover", openbox9FadeIn);
box9.addEventListener("mouseout", closebox9FadeOut);
box9.addEventListener("click", closebox9NoTransition);
box9.className = "hiddenBoxA";

box9Trigger.addEventListener("mouseover", openbox9FadeIn);
box9Trigger.addEventListener("mouseout", closebox9FadeOut);
box9Trigger.addEventListener("click", closebox9NoTransition);
box9Trigger.className = "hiddenBoxTriggerA";


box10.addEventListener("mouseover", openbox10FadeIn);
box10.addEventListener("mouseout", closebox10FadeOut);
box10.addEventListener("click", closebox10NoTransition);
box10.className = "hiddenBoxA";

box10Trigger.addEventListener("mouseover", openbox10FadeIn);
box10Trigger.addEventListener("mouseout", closebox10FadeOut);
box10Trigger.addEventListener("click", closebox10NoTransition);
box10Trigger.className = "hiddenBoxTriggerA";


box11.addEventListener("mouseover", openbox11FadeIn);
box11.addEventListener("mouseout", closebox11FadeOut);
box11.addEventListener("click", closebox11NoTransition);
box11.className = "hiddenBoxA";

box11Trigger.addEventListener("mouseover", openbox11FadeIn);
box11Trigger.addEventListener("mouseout", closebox11FadeOut);
box11Trigger.addEventListener("click", closebox11NoTransition);
box11Trigger.className = "hiddenBoxTriggerA";


box12.addEventListener("mouseover", openbox12FadeIn);
box12.addEventListener("mouseout", closebox12FadeOut);
box12.addEventListener("click", closebox12NoTransition);
box12.className = "hiddenBoxA";

box12Trigger.addEventListener("mouseover", openbox12FadeIn);
box12Trigger.addEventListener("mouseout", closebox12FadeOut);
box12Trigger.addEventListener("click", closebox12NoTransition);
box12Trigger.className = "hiddenBoxTriggerA";


box13.addEventListener("mouseover", openbox13FadeIn);
box13.addEventListener("mouseout", closebox13FadeOut);
box13.addEventListener("click", closebox13NoTransition);
box13.className = "hiddenBoxA";

box13Trigger.addEventListener("mouseover", openbox13FadeIn);
box13Trigger.addEventListener("mouseout", closebox13FadeOut);
box13Trigger.addEventListener("click", closebox13NoTransition);
box13Trigger.className = "hiddenBoxTriggerA";


box14.addEventListener("mouseover", openbox14FadeIn);
box14.addEventListener("mouseout", closebox14FadeOut);
box14.addEventListener("click", closebox14NoTransition);
box14.className = "hiddenBoxA";

box14Trigger.addEventListener("mouseover", openbox14FadeIn);
box14Trigger.addEventListener("mouseout", closebox14FadeOut);
box14Trigger.addEventListener("click", closebox14NoTransition);
box14Trigger.className = "hiddenBoxTriggerA";


box15.addEventListener("mouseover", openbox15FadeIn);
box15.addEventListener("mouseout", closebox15FadeOut);
box15.addEventListener("click", closebox15NoTransition);
box15.className = "hiddenBoxA";

box15Trigger.addEventListener("mouseover", openbox15FadeIn);
box15Trigger.addEventListener("mouseout", closebox15FadeOut);
box15Trigger.addEventListener("click", closebox15NoTransition);
box15Trigger.className = "hiddenBoxTriggerA";