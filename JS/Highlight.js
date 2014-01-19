function highlightBlue() {
	var selection = window.getSelection();
	var range = selection.getRangeAt(0);
	var newNode = document.createElement("span");
	newNode.setAttribute("id", i);
	newNode.setAttribute("style", "background-color: #34d0b6;");
	range.surroundContents(newNode);
}

function highlightYellow() {
	var selection = window.getSelection();
	var range = selection.getRangeAt(0);
	var newNode = document.createElement("span");
	newNode.setAttribute("id", i);
	newNode.setAttribute("style", "background-color: #ffc040;");
	range.surroundContents(newNode);

}

function highlightRed() {
	var selection = window.getSelection();
	var range = selection.getRangeAt(0);
	var newNode = document.createElement("span");
	newNode.setAttribute("id", i);
	newNode.setAttribute("style", "background-color: #F53d68");
	range.surroundContents(newNode);

}

function eraseHighlight() {
	document.getElementById(i).style.backgroundColor="rgba(0,0,0,0)";
	i-=1;
}

var i = 5;
var t = '';
function gText(e) {
	t = (document.all) ?
	document.selection.createRange().text : 
	document.getSelection();
	if (t.toString().length > 1) 
	{i+=1;
	document.getElementById('highlightmenu').style.visibility='visible';
	document.getElementById('highlightedtext').innerHTML = t.toString();
	document.getElementById('bluehighlighter').style.visibility="visible";
	document.getElementById('yellowhighlighter').style.visibility="visible";
	document.getElementById('redhighlighter').style.visibility="visible";
	}
}

function closeHighlightMenu() {
	document.getElementById('highlightmenu').style.visibility='hidden';
	document.getElementById('notes').style.visibility='hidden';
	document.getElementById('bluehighlighter').style.visibility="hidden";
	document.getElementById('yellowhighlighter').style.visibility="hidden";
	document.getElementById('redhighlighter').style.visibility="hidden";
}

	
	
function clearText() {
	document.getElementById('highlightedtext').innerHTML = "";
}

var r = '';
function saveText() {
	cssStringNotes = "visibility:visible;"
	document.getElementById('notes').style.cssText = cssStringNotes;
	r = document.getElementById('highlightedtext').innerHTML;
	document.getElementById('notes').value += r;
}


document.onmouseup = gText;
if (!document.all) 
document.captureEvents(Event.MOUSEUP);


function savehighlight() {
document.getElementById('input').value = t.toString();
	}

	

function classesMenuOn() {
cssStringClassesMenuOn = "visibility:visible;"
document.getElementById('classesmenu').style.cssText = cssStringClassesMenuOn;
}


function classesMenuOff() {
cssStringClassesMenuOff = "visibility:hidden;"
document.getElementById('classesmenu').style.cssText = cssStringClassesMenuOff;
}



function topicsMenuOn() {
cssStringTopicsMenuOn = "visibility:visible;opacity:1;transition:opacity .1s .5s, visibility 0s 0s"
document.getElementById('topicsmenu').style.cssText = cssStringTopicsMenuOn
}

function topicsMenuOff() {
cssStringTopicsMenuOff = "visibility:hidden;opacity:0;transition:opacity .1s .5s, visibility 0s .6s;"
document.getElementById('topicsmenu').style.cssText = cssStringTopicsMenuOff;
}



function toolsOn() {
cssStringToolsTriggerOn = "left:0%;width:50%;opacity:0;"
cssStringToolsOn = "left:0%;bottom:5%;width:50%;"
cssStringPencilOn = "left:20%;bottom:60%;height:20%;"
cssStringNotepadOn = "left:17%;bottom:57%;height:23%;"
cssStringCalculatorOn = "left:45%;bottom:58%;height:23%"
document.getElementById('toolstrigger').style.cssText = cssStringToolsTriggerOn;
document.getElementById('toolmenu').style.cssText = cssStringToolsOn;
document.getElementById('pencil').style.cssText = cssStringPencilOn;
document.getElementById('notepad').style.cssText = cssStringNotepadOn;
document.getElementById('calculator').style.cssText = cssStringCalculatorOn;
}

function toolsOff() {
cssStringToolsTriggerOff = "left:5%;width:15%;"
cssStringToolsOff = "left:10%;bottom:-45%;width:10%"
cssStringPencilOff = "left:40%;bottom:91%;height:40%;"
cssStringNotepadOff = "left:-40%;bottom:57%;height:80%;"
cssStringCalculatorOff = "left:-50%;bottom:85%;height:40%"
document.getElementById('toolstrigger').style.cssText = cssStringToolsTriggerOff;
document.getElementById('toolmenu').style.cssText = cssStringToolsOff;
document.getElementById('pencil').style.cssText = cssStringPencilOff;
document.getElementById('notepad').style.cssText = cssStringNotepadOff;
document.getElementById('calculator').style.cssText = cssStringCalculatorOff;

}

function notepadOn() {
cssStringNotepadOn = "box-shadow:0px 0px 10px 10px white;"
document.getElementById('toolsquare1').style.cssText = cssStringNotepadOn;
}

function notesOn() {
	document.getElementById('notes').style.visibility="visible";
}


function calculatorOn() {
cssStringCalculatorOn = "box-shadow:0px 0px 10px 10px grey;"
document.getElementById('toolsquare2').style.cssText = cssStringCalculatorOn;
}

function notepadOff() {
cssStringNotepadOff = "box-shadow:0px 0px 0px 0px;"
document.getElementById('toolsquare1').style.cssText = cssStringNotepadOff;
}

function wolframOn() {
cssStringWolframOn = "visibility:visible;"
document.getElementById('wolfram').style.cssText = cssStringWolframOn;
}

function wolframOff() {
cssStringWolframOff = "visibility:hidden;"
document.getElementById('wolfram').style.cssText = cssStringWolframOff;
}


function calculatorOff() {
cssStringCalculatorOff = "box-shadow:0px 0px 0px 0px;"
document.getElementById('toolsquare2').style.cssText = cssStringCalculatorOff;
}



function mediaMenuOn() {
cssStringMediaMenuOn = "width:80%;height:20%;left:10%;bottom:15%;background-color:rgba(0,10,200,.5);opacity:.9"
cssStringMediaTriggerOn = "width:80%;height:20%;left:10%;bottom:0%;opacity:0;"
cssStringOpenbookOn = "left:12%;bottom:18%;width:9%;height:11%;"
cssStringVideosOn = "left:24%;bottom:17%;width:11%;height:15%;"
cssStringGameOn = "left:79.5%;bottom:21%;width:8%;height:8%;-webkit-transform:rotate(0deg);"
document.getElementById('mediamenu').style.cssText = cssStringMediaMenuOn;
document.getElementById('mediamenutrigger').style.cssText = cssStringMediaTriggerOn;
document.getElementById('openbook').style.cssText = cssStringOpenbookOn;
document.getElementById('videos').style.cssText = cssStringVideosOn;
document.getElementById('game').style.cssText = cssStringGameOn;
}

function mediaMenuOff() {
cssStringMediaMenuOff = "width:20%;height:10%;left:40%;bottom:-15%;transition:all .5s;opacity:0;"
cssStringMediaTriggerOff = "width:30%;height:10%;left:35%;bottom:0%;opacity:.8;"
cssStringOpenbookOff = "width:18%;height:24%;left:36%;bottom:-16%;"
cssStringVideosOff = "width:14%;height:18%;left:46%;bottom:-9.5%;"
cssStringGameOff = "width:11%;height:11%bottom:-5%;-webkit-transform:rotate(15deg);"
document.getElementById('mediamenu').style.cssText = cssStringMediaMenuOff;
document.getElementById('mediamenutrigger').style.cssText = cssStringMediaTriggerOff;
document.getElementById('openbook').style.cssText = cssStringOpenbookOff;
document.getElementById('videos').style.cssText = cssStringVideosOff;
document.getElementById('game').style.cssText = cssStringGameOff;
}

function mediaBox1On() {
cssStringMediaBox1On = "box-shadow:0px 0px 10px 10px white;"
document.getElementById('mediabox1').style.cssText = cssStringMediaBox1On;
}

function mediaBox1Off() {
cssStringMediaBox1Off = "box-shadow:0px 0px 0px 0px;"
document.getElementById('mediabox1').style.cssText = cssStringMediaBox1Off;
}

function mediaBox2On() {
cssStringMediaBox2On = "box-shadow:0px 0px 10px 10px white;"
document.getElementById('mediabox2').style.cssText = cssStringMediaBox2On;
}

function mediaBox2Off() {
cssStringMediaBox2Off = "box-shadow:0px 0px 0px 0px;"
document.getElementById('mediabox2').style.cssText = cssStringMediaBox2Off;
}

function mediaBox3On() {
cssStringMediaBox3On = "box-shadow:0px 0px 10px 10px white;"
document.getElementById('mediabox3').style.cssText = cssStringMediaBox3On;
}

function mediaBox3Off() {
cssStringMediaBox3Off = "box-shadow:0px 0px 0px 0px;"
document.getElementById('mediabox3').style.cssText = cssStringMediaBox3Off;
}

function mediaBox4On() {
cssStringMediaBox4On = "box-shadow:0px 0px 10px 10px white;"
document.getElementById('mediabox4').style.cssText = cssStringMediaBox4On;
}

function mediaBox4Off() {
cssStringMediaBox4Off = "box-shadow:0px 0px 0px 0px;"
document.getElementById('mediabox4').style.cssText = cssStringMediaBox4Off;
}

function mediaBox5On() {
cssStringMediaBox5On = "box-shadow:0px 0px 10px 10px white;"
document.getElementById('mediabox5').style.cssText = cssStringMediaBox5On;
}

function mediaBox5Off() {
cssStringMediaBox5Off = "box-shadow:0px 0px 0px 0px;"
document.getElementById('mediabox5').style.cssText = cssStringMediaBox5Off;
}

function mediaBox6On() {
cssStringMediaBox6On = "box-shadow:0px 0px 10px 10px white;"
document.getElementById('mediabox6').style.cssText = cssStringMediaBox6On;
}

function mediaBox6Off() {
cssStringMediaBox6Off = "box-shadow:0px 0px 0px 0px;"
document.getElementById('mediabox6').style.cssText = cssStringMediaBox6Off;
}



function contactOn() {
cssStringContactOn = "top:25%;left:70%"
cssStringContactMenuOn = "visibility:visible;bottom:12%;height:78%;width:77%;opacity:1;transition:all .5s;"
cssStringGalaxyOn = "height:100%;bottom:0%;left:0%;"
cssStringContactTriggerOn = "height:75%;width:28%;left:70%;opacity:0;z-index:20;"
document.getElementById('contact').style.cssText = cssStringContactOn;
document.getElementById('contactmenu').style.cssText = cssStringContactMenuOn;
document.getElementById('galaxy').style.cssText = cssStringGalaxyOn;
document.getElementById('contacttrigger').style.cssText = cssStringContactTriggerOn;

}

function contactOff() {
cssStringContactOff = "top:100%;left:87%"
cssStringContactMenuOff = "visibility:hidden;bottom:84%;height:22%;width:20%;opacity:0;transition:all .5s;"
cssStringGalaxyOff = "height:30%;left:0%;bottom:84%;"
cssStringContactTriggerOff = "height:10%;width:15%;left:80%;opacity:.8;z-index:28;"
document.getElementById('contact').style.cssText = cssStringContactOff;
document.getElementById('contactmenu').style.cssText = cssStringContactMenuOff;
document.getElementById('galaxy').style.cssText = cssStringGalaxyOff;
document.getElementById('contacttrigger').style.cssText = cssStringContactTriggerOff;
}

function writeMessageOn() {
cssStringWriteMessageOn = "visibility:visible;"
cssStringWriteMessageTextOn = "visibility:visible;"
document.getElementById('writemessage').style.cssText = cssStringWriteMessageOn;
document.getElementById('writemessagetextholder').style.cssText = cssStringWriteMessageTextOn;
}

function writeMessageOff() {
cssStringWriteMessageOff = "visibility:hidden;"
document.getElementById('writemessage').style.cssText = cssStringWriteMessageOn;
}

function contactListOn() {
cssStringContactListOn = "visibility:visible;"
document.getElementById('contactlist').style.cssText = cssStringContactListOn;
}

function contactListOff() {
cssStringContactListOff = "visibility:hidden;"
document.getElementById('contactlist').style.cssText = cssStringContactListOff;
}