var box1Trigger = document.getElementById('box1Trigger');
var box2Trigger = document.getElementById('box2Trigger');
var box3Trigger = document.getElementById('box3Trigger');
var box4Trigger = document.getElementById('box4Trigger');
var box5Trigger = document.getElementById('box5Trigger');

var box1 = document.getElementById('box1');
var box2 = document.getElementById('box2');
var box3 = document.getElementById('box3');
var box4 = document.getElementById('box4');
var box5 = document.getElementById('box5');


var cssStringOpenboxFadeIn = "visibility: visible;transition: border .4s .2s,  " + 
"background-color .4s .2s, visibility .4s .2s, color .4s .2s, opacity .4s .2s;" + 
"-webkit-transition: border .4s .2s,  background-color .4s .2s, visibility .4s .2s, " + 
"color .4s .2s opacity .4s .2s;-moz-transition: border .4s .2s,  background-color .4s .2s, " + 
"visibility .4s .2s, color .4s .2s opacity .4s .2s;-o-transition: border .4s .2s,  " + 
"background-color .4s .2s, visibility .4s .2s, color .4s .2s opacity .4s .2s;" + 
"background-color: rgba(174,204,255,.9);border: 5px ridge rgba(100,100,100,1);" + 
"color: black;opacity: 1;cursor:pointer;"

var cssStringTriggerOn="color:#880088;cursor:pointer;"
	
var cssStringCloseboxNoTransition = "transition: border 0s,  " + 
"background-color 0s, visibility 0s, color 0s;-webkit-transition: " + 
"border 0s,  background-color 0s, visibility 0s, color 0s;-moz-transition: " + 
"border 0s,  background-color 0s, visibility 0s, color 0s;-o-transition: border 0s,  " + 
"background-color 0s, visibility 0s, color 0s;visibility: hidden;" + 
"border: 5px ridge rgba(220,220,220,0); color: rgba(0,0,0,0);" + 
"background-color: rgba(102,204,255,0);opacity: 0;";

var cssStringTriggerOff="color:#000000;cursor:auto;"
	
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






function closebox1NoTransition() {
box1.style.cssText = cssStringCloseboxNoTransition;
}

function closebox2NoTransition() {
box2.style.cssText = cssStringCloseboxNoTransition;
}

function closebox3NoTransition() {
box3.style.cssText = cssStringCloseboxNoTransition;
}

function Closebox4NoTransition() {
box4.style.cssText = cssStringCloseboxNoTransition;
}

function closebox5NoTransition() {
box5.style.cssText = cssStringCloseboxNoTransition;
}



box1.addEventListener("mouseover", openbox1FadeIn);
box1.addEventListener("mouseout", closebox1FadeOut);
box1.addEventListener("click", closebox1NoTransition);
box1.className = "hiddenBoxA";

box1Trigger.addEventListener("mouseover", openbox1FadeIn);
box1Trigger.addEventListener("mouseout", closebox1FadeOut);
box1Trigger.addEventListener("click", closebox1NoTransition);


box2.addEventListener("mouseover", openbox2FadeIn);
box2.addEventListener("mouseout", closebox2FadeOut);
box2.addEventListener("click", closebox2NoTransition);
box2.className = "hiddenBoxA";

box2Trigger.addEventListener("mouseover", openbox2FadeIn);
box2Trigger.addEventListener("mouseout", closebox2FadeOut);
box2Trigger.addEventListener("click", closebox2NoTransition);


box3.addEventListener("mouseover", openbox3FadeIn);
box3.addEventListener("mouseout", closebox3FadeOut);
box3.addEventListener("click", closebox3NoTransition);
box3.className = "hiddenBoxA";

box3Trigger.addEventListener("mouseover", openbox3FadeIn);
box3Trigger.addEventListener("mouseout", closebox3FadeOut);
box3Trigger.addEventListener("click", closebox3NoTransition);


box4.addEventListener("mouseover", openbox4FadeIn);
box4.addEventListener("mouseout", closebox4FadeOut);
box4.addEventListener("click", closebox4NoTransition);
box4.className = "hiddenBoxA";

box4Trigger.addEventListener("mouseover", openbox4FadeIn);
box4Trigger.addEventListener("mouseout", closebox4FadeOut);
box4Trigger.addEventListener("click", closebox4NoTransition);


box5.addEventListener("mouseover", openbox5FadeIn);
box5.addEventListener("mouseout", closebox5FadeOut);
box5.addEventListener("click", closebox5NoTransition);
box5.className = "hiddenBoxA";

box5Trigger.addEventListener("mouseover", openbox5FadeIn);
box5Trigger.addEventListener("mouseout", closebox5FadeOut);
box5Trigger.addEventListener("click", closebox5NoTransition);

