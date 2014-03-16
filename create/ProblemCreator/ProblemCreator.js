function updateCourse() {
selectCourseElement = document.getElementById('courseName');
selectedCourse = selectCourseElement.options[selectCourseElement.selectedIndex].value;
document.getElementById('hCourse').value = selectedCourse;
document.forms['fCreateProblem'].submit();
}

function updateTopic() {
selectTopicElement = document.getElementById('topicName');
selectedTopic = selectTopicElement.options[selectTopicElement.selectedIndex].value;
document.getElementById('hTopic').value = selectedTopic;
document.getElementById('question').focus();
}

var generatedAnswer = {};

function previewProblem() {
question = document.getElementById('question').value;

var var1From = parseFloat(document.getElementById('var1From').value);
var var1To = parseFloat(document.getElementById('var1To').value);
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


var var2From = parseFloat(document.getElementById('var2From').value);
var var2To = parseFloat(document.getElementById('var2To').value);
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


example = document.getElementById('example').value;
example = example.replace(var1ReplaceString, var1NumberToString);
example = example.replace(var2ReplaceString, var2NumberToString);
document.getElementById('hExample').value = example;
question = question.replace(var1ReplaceString, var1NumberToString);
question = question.replace(var2ReplaceString, var2NumberToString);
//The question is now ready to be asked to the student.
document.getElementById('generatedQuestion').innerHTML = question;
MathJax.Hub.Queue(["Typeset",MathJax.Hub]);
document.getElementById('problemPreview').style.visibility="visible";


answer = document.getElementById('answer').value
answ = Parser.evaluate( answer, { var1: var1Number, var2: var2Number});
generatedAnswer.ansh = parseFloat(answ);
}

function answerProblem() {
userAnswer = document.getElementById('userAnswer').value;
feedback = "Enter an answer.";
feedbackCorrect = "Correct";
feedbackIncorrect = "Incorrect";
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

function closePreview() {
document.getElementById('problemPreview').style.visibility="hidden";
document.getElementById('feedback').innerHTML="";
document.getElementById('userAnswer').value="";
}

function submitProblem() {
cnn = document.getElementById('courseName').options[document.getElementById('courseName').selectedIndex].value;
document.getElementById('hCourse').value = cnn;
tnn = document.getElementById('topicName').options[document.getElementById('topicName').selectedIndex].value;
document.getElementById('hTopic').value = tnn;
qnn = document.getElementById('question').value;
document.getElementById('hQuestion').value = qnn;
v1f = document.getElementById('var1From').value;
document.getElementById('hVar1From').value = v1f;
v1t = document.getElementById('var1To').value;
document.getElementById('hVar1To').value = v1t;
v2f = document.getElementById('var2From').value;
document.getElementById('hVar2From').value = v2f;
v2t = document.getElementById('var2To').value;
document.getElementById('hVar2To').value = v2t;
ann = document.getElementById('answer').value;
document.getElementById('hAnswer').value = ann;
dif = document.getElementById('difficulty').value;
document.getElementById('hDifficulty').value = dif;
exa = document.getElementById('example').value;


document.getElementById('problemSubmitted').value = "problemSubmitted";
if (cnn != "" && tnn != "" && qnn != "" && (v1f != "" || v2f != "") && (v1t != "" || v2t != "") && ann != "" && dif != "")
	document.forms['fCreateProblem'].submit();
}