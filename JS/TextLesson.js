var cssStringOpenBoxFadeIn = "visibility: visible;transition: border .4s .2s,  background-color .4s .2s, visibility .4s .2s, color .4s .2s, opacity .4s .2s;-webkit-transition: border .4s .2s,  background-color .4s .2s, visibility .4s .2s, color .4s .2s opacity .4s .2s;-moz-transition: border .4s .2s,  background-color .4s .2s, visibility .4s .2s, color .4s .2s opacity .4s .2s;-o-transition: border .4s .2s,  background-color .4s .2s, visibility .4s .2s, color .4s .2s opacity .4s .2s;background-color: rgba(174,204,255,.9);border: 5px ridge rgba(100,100,100,1);color: black;opacity: 1;";
	
	
	
	
var cssStringCloseBoxNoTransition = "transition: border 0s,  background-color 0s, visibility 0s, color 0s;-webkit-transition: border 0s,  background-color 0s, visibility 0s, color 0s;-moz-transition: border 0s,  background-color 0s, visibility 0s, color 0s;-o-transition: border 0s,  background-color 0s, visibility 0s, color 0s;visibility: hidden;border: 5px ridge rgba(220,220,220,0); color: rgba(0,0,0,0);background-color: rgba(102,204,255,0);opacity: 0;";
	
	
	
	
var cssStringCloseBoxFadeOut = "visibility: hidden;transition: border .2s,  background-color .2s, visibility 0s .2s, opacity .2s, color .2s;-webkit-transition: border .2s,  background-color .2s, visibility 0s .2s, opacity .2s, color .2s;-moz-transition: border .2s,  background-color .2s, visibility 0s .2s, opacity .2s, color .2s;-o-transition: border .2s,  background-color .2s, visibility 0s .2s, opacity .2s, color .2s;position: fixed;border: 5px ridge rgba(220,220,220,0);border-radius: 5px;width: 300px; height: 300px;margin: auto;top: 0;left: 0;right: 0;bottom: 0;padding: 10px;background-color: #333; /* for browsers that don't understand rgba() notation */background-color: rgba(102,204,255,0);color: black;opacity: 0;z-index:500;";




function openBox1FadeIn() {
document.getElementById('Box1').style.cssText = cssStringOpenBoxFadeIn;
}

function openBox2FadeIn() {
document.getElementById('Box2').style.cssText = cssStringOpenBoxFadeIn;
}

function openBox3FadeIn() {
document.getElementById('Box3').style.cssText = cssStringOpenBoxFadeIn;
}

function openBox4FadeIn() {
document.getElementById('Box4').style.cssText = cssStringOpenBoxFadeIn;
}

function openBox5FadeIn() {
document.getElementById('Box5').style.cssText = cssStringOpenBoxFadeIn;
}





function closeBox1NoTransition() {
document.getElementById('Box1').style.cssText = cssStringCloseBoxNoTransition;
}

function closeBox2NoTransition() {
document.getElementById('Box2').style.cssText = cssStringCloseBoxNoTransition;
}

function closeBox3NoTransition() {
document.getElementById('Box3').style.cssText = cssStringCloseBoxNoTransition;
}

function CloseBox4NoTransition() {
document.getElementById('Box4').style.cssText = cssStringCloseBoxNoTransition;
}

function closeBox5NoTransition() {
document.getElementById('Box5').style.cssText = cssStringCloseBoxNoTransition;
}






function closeBox1FadeOut() {
document.getElementById('Box1').style.cssText = cssStringCloseBoxFadeOut;
}

function closeBox2FadeOut() {
document.getElementById('Box2').style.cssText = cssStringCloseBoxFadeOut;
}

function closeBox3FadeOut() {
document.getElementById('Box3').style.cssText = cssStringCloseBoxFadeOut;
}

function closeBox4FadeOut() {
document.getElementById('Box4').style.cssText = cssStringCloseBoxFadeOut;
}

function closeBox5FadeOut() {
document.getElementById('Box5').style.cssText = cssStringCloseBoxFadeOut;
}



