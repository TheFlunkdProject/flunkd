//Much the same js as in ProblemCreator.js in /create/ProblemCreator/ folder
//function name is different, and input fields are coming from "hQuestion", etc instead

var generatedAnswer = {}; //<-for some reason this isn't working here.

function generateProblem() {
question = document.getElementById('hQuestion').value;

var var1From = parseFloat(document.getElementById('hVar1From').value);
var var1To = parseFloat(document.getElementById('hVar1To').value);
var var1FromDecimalPlace = var1From.toString().indexOf(".");
var var1ToDecimalPlace = var1From.toString().indexOf(".");
var var1Precision = 0;
var var1Magnitude = 0;
var var1Number = 0;
var random1 = parseFloat(Math.random());

var1ReplaceString = "var1";
if (var1FromDecimalPlace != -1 || var1ToDecimalPlace != -1)
	{
	var1Precision = Math.max(var1From.toString().length - var1FromDecimalPlace - 1, var1To.toString().length - var1ToDecimalPlace - 1);
	var1Magnitude = Math.pow(10, var1Precision);
	var1Number = Math.floor(var1Magnitude*(random1*(var1To - var1From) + var1From))/var1Magnitude;
	}
else 
	{
	var1Number = Math.round(random1*(var1To - var1From) + var1From);
	}
var1NumberToString = var1Number.toString();


var var2From = parseFloat(document.getElementById('hVar2From').value);
var var2To = parseFloat(document.getElementById('hVar2To').value);
var var2FromDecimalPlace = var2From.toString().indexOf(".");
var var2ToDecimalPlace = var2From.toString().indexOf(".");
var var2Precision = 0;
var var2Magnitude = 0;
var random2 = parseFloat(Math.random());

var2ReplaceString = "var2";
if (var2FromDecimalPlace != -1 || var2ToDecimalPlace != -1)
	{
	var2Precision = Math.max(var2From.toString().length - var2FromDecimalPlace - 1, var2To.toString().length - var2ToDecimalPlace - 1);
	var2Magnitude = Math.pow(10, var2Precision);
	var2Number = Math.floor(var2Magnitude*(random2*(var2To - var2From) + var2From))/var2Magnitude;
	}
else 
	{
	var2Number = Math.round(random2*(var2To - var2From) + var2From);
	}
var2NumberToString = var2Number.toString();


/*example = document.getElementById('hExample').value;
var reex1 = new RegExp(var1ReplaceString, 'g');
example = example.replace(reex1, var1NumberToString);
var reex2 = new RegExp(var2ReplaceString, 'g');
example = example.replace(reex2, var2NumberToString);
document.getElementById('hExample').value = example; *///Now that we have numbers to plug in, replace
var reqe1 = new RegExp(var1ReplaceString, 'g');
question = question.replace(reqe1, var1NumberToString);
var reqe2 = new RegExp(var2ReplaceString, 'g');
question = question.replace(reqe2, var2NumberToString);
//The question is now ready to be asked to the student.
document.getElementById('generatedQuestion').innerHTML = question;

//Display the choices:

var hChoice1Value = document.getElementById('hChoice1').value;
choice1Text = document.getElementById('choice1Text');
if (choice1Text != null) {
	choice1Text.innerHTML = hChoice1Value;
}

var hChoice2Value = document.getElementById('hChoice2').value;
choice2Text = document.getElementById('choice2Text');
if (choice2Text != null) {
	choice2Text.innerHTML = hChoice2Value;
}

var hChoice3Value = document.getElementById('hChoice3').value;
choice3Text = document.getElementById('choice3Text');
if (choice3Text != null) {
	choice3Text.innerHTML = hChoice3Value;
}

var hChoice4Value = document.getElementById('hChoice4').value;
choice4Text = document.getElementById('choice4Text');
if (choice4Text != null) {
	choice4Text.innerHTML = hChoice4Value;
}

var hChoice5Value = document.getElementById('hChoice5').value;
choice5Text = document.getElementById('choice5Text');
if (choice5Text != null) {
	choice5Text.innerHTML = hChoice5Value;
}

var hChoice6Value = document.getElementById('hChoice6').value;
choice6Text = document.getElementById('choice6Text');
if (choice6Text != null) {
	choice6Text.innerHTML = hChoice6Value;
}

var hChoice7Value = document.getElementById('hChoice7').value;
choice7Text = document.getElementById('choice7Text');
if (choice7Text != null) {
	choice7Text.innerHTML = hChoice7Value;
}

var hChoice8Value = document.getElementById('hChoice8').value;
choice8Text = document.getElementById('choice8Text');
if (choice8Text != null) {
	choice8Text.innerHTML = hChoice8Value;
}


MathJax.Hub.Queue(["Typeset",MathJax.Hub]);
//document.getElementById('problemPreview').style.visibility="visible"; Not applicable



var answer;
//In ProblemCreator.js we don't need to check this:
if (document.getElementById('hAnswer').value != "") {
answer = document.getElementById('hAnswer').value;
answ = Parser.evaluate( answer, { var1: var1Number, var2: var2Number});
generatedAnswer.ansh = parseFloat(answ);
}

}

//Execute the previous function (not in ProblemCreator.js. We want it to load from the beginning):
generateProblem();





//This was, though. It answers the problem.
function answerProblem() {

var userAnswer;
//In ProblemCreator.js we don't need to check this:
if (document.getElementById('userAnswer') != null) {
userAnswer = document.getElementById('userAnswer').value;
}
feedback = "things";
feedbackCorrect = "Correct";
feedbackIncorrect = "Incorrect";
//For free response:
if (document.getElementById('hAnswerType').value == "freeResponse") {

	answernumber = generatedAnswer.ansh;//Generated above in this file
	if (Math.abs(parseFloat(userAnswer) - answernumber)/answernumber < 0.001) {
		feedback = feedbackCorrect;
		}
	else {
		feedback = feedbackIncorrect;
		}
} 

//For multiple choice:

if (document.getElementById('hAnswerType').value == "multipleChoice") {
	var correctChoice = document.getElementById('hCorrectChoice').value;
	var selectedChoice;//This is to find out which answer has been chosen:
	for (i=1;i<9;i++) {
		var thisChoiceID = "choice" + i.toString() + "P";
		var thisChoiceOriginalID = "choice" + i.toString() + "Correct";
		var thisChoiceElement = document.getElementById(thisChoiceID);
		if (thisChoiceElement != null) {
			if (thisChoiceElement.checked) {
				selectedChoice = thisChoiceOriginalID;
				}
			}
		}
	if (selectedChoice == correctChoice) {
		feedback = feedbackCorrect;
		}
	else {
		feedback = feedbackIncorrect;
		}
	}

document.getElementById('feedback').innerHTML = feedback;
}







//Not in ProblemCreator.js:

var exampleTrigger = document.getElementById('exampleTrigger');

if (document.getElementById('hExample').value != "") {
exampleTrigger.disabled = false;
}

function triggerExampleHover() {
cssStringTriggerExampleHover = "cursor:auto;";
exampleTrigger.style.cssText = cssStringTriggerExampleHover;
}

function triggerExample() {
if (document.getElementById('example').style.display == "none") {
	showExample();
	}
	else {
	hideExample();
	}
}

function showExample() {
cssStringShowExample = "display:block;transition:display .3s;";
document.getElementById('example').style.cssText = cssStringShowExample;
exampleTrigger.value = "Hide Example";
}

function hideExample() {
cssStringHideExample = "display:none;transition:display .3s;";
document.getElementById('example').style.cssText = cssStringHideExample;
exampleTrigger.value = "Show Example";
}

//This will write the example in:
document.getElementById('example').innerHTML = document.getElementById('hExample').value;

//Display the difficulty of the chosen problem:
function displayDifficulty() {
document.getElementById('difficultyDisplay').innerHTML=document.getElementById('difficultyLevel').value;
}

displayDifficulty();