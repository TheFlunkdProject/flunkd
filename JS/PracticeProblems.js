//Much the same js as in ProblemCreator.js in /create/ProblemCreator/ folder
//function name is different, and input fields are coming from "hQuestion", etc instead

var generatedAnswer = {};

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


example
question = question.replace(var1ReplaceString, var1NumberToString);
question = question.replace(var2ReplaceString, var2NumberToString);
//The question is now ready to be asked to the student.
document.getElementById('generatedQuestion').innerHTML = question;
MathJax.Hub.Queue(["Typeset",MathJax.Hub]);
//document.getElementById('problemPreview').style.visibility="visible"; Not applicable


answer = document.getElementById('hAnswer').value
answ = Parser.evaluate( answer, { var1: var1Number, var2: var2Number});
generatedAnswer.ansh = parseFloat(answ);
}

//Execute the previous function:
generateProblem();

function answerProblem() {
userAnswer = document.getElementById('userAnswer').value;
feedback = "Enter an answer.";
feedbackCorrect = "Correct";
feedbackIncorrect = "Incorrect Answer";
answernumber = generatedAnswer.ansh;
if (Math.abs(parseFloat(userAnswer) - answernumber) < 0.1)
	{
	feedback = feedbackCorrect;
	}
else
	{
	feedback = feedbackIncorrect;
	}
document.getElementById('feedback').innerHTML = feedback;
}

//Not in ProblemCreator.js:
function showExample() {
cssStringShowExample = "display:block;transition:display .3s;";
document.getElementById('example').style.cssText = cssStringShowExample;
}

function hideExample() {
cssStringHideExample = "display:none;transition:display .3s;";
document.getElementById('example').style.cssText = cssStringHideExample;
}

//This will write the example in:
document.getElementById('example').innerHTML = document.getElementById('hExample').value;

//Display the difficulty of the chosen problem:
function displayDifficulty() {
document.getElementById('difficultyDisplay').innerHTML=document.getElementById('difficultyLevel').value;
}
displayDifficulty();