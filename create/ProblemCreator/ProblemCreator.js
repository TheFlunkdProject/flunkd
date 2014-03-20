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

function changeAnswerType() {
var answerTypeRadios = document.answerTypeForm.answerTypeRadio;
var selectedRadio;
for (var i=0; i < answerTypeRadios.length; i++) {
	if (answerTypeRadios[i].checked) {
		selectedRadio = i;
		}
	}
if (selectedRadio == 0) {
	document.getElementById('freeResponseStuff').style.display = "block";
	document.getElementById('multipleChoiceStuff').style.display = "none";
	}
	else {
	document.getElementById('freeResponseStuff').style.display = "none";
	document.getElementById('multipleChoiceStuff').style.display = "block";
	}
}

function addChoice() {
//For the creating
var multipleChoiceForm = document.multipleChoiceForm;
//For the preview
var multipleChoicePreviewAnswers = document.getElementById('multipleChoicePreviewAnswers');
for ( var i = 3; i < 9; i++) {
	thisChoice = "choice" + i;
	thisChoiceCorrect = "choice" + i + "Correct";
	if (multipleChoiceForm.innerHTML.indexOf(thisChoice) == -1) {
		
		//Create another choice:
		var extraChoice = document.createElement('input');
		extraChoice.setAttribute('id', thisChoice);
		extraChoice.type = "text";
		extraChoice.className = "darkInput";
		
		var extraChoiceCheckbox = document.createElement('input');
		extraChoiceCheckbox.setAttribute('type', 'radio');
		extraChoiceCheckbox.setAttribute('name', 'correctChoice');
		extraChoiceCheckbox.setAttribute('id', thisChoiceCorrect);
		//Same thing for the preview:
		var extraChoicePreview = document.createElement('input');
		extraChoicePreview.setAttribute('type', 'radio');
		extraChoicePreview.setAttribute('name', 'choicesPreview');
		var thisChoiceP = thisChoice + "P";
		extraChoicePreview.setAttribute('id', thisChoiceP);
		
		var thisChoiceSpanID = "choice" + i + "Text";
		var thisChoiceSpan = document.createElement('span');
		thisChoiceSpan.setAttribute('id', thisChoiceSpanID);
		
		
		
		//Labelling and appending:
		extraChoiceLabel = "Choice " + i + ": ";
		
		beforeText = document.createTextNode(extraChoiceLabel);
		multipleChoiceForm.appendChild(beforeText);
		multipleChoiceForm.appendChild(extraChoice);
		middleText = document.createTextNode(' ');
		multipleChoiceForm.appendChild(middleText);
		multipleChoiceForm.appendChild(extraChoiceCheckbox);
		afterText = document.createElement('br');
		multipleChoiceForm.appendChild(afterText);
		
		multipleChoicePreviewAnswers = document.getElementById('multipleChoicePreviewAnswers');
		multipleChoicePreviewAnswers.appendChild(extraChoicePreview);
		multipleChoicePreviewAnswers.appendChild(thisChoiceSpan);
		afterTextP = document.createElement('br');
		multipleChoicePreviewAnswers.appendChild(afterTextP);
		break;
		}
	}
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
/*var reex1 = new RegExp(var1ReplaceString, 'g');
example = example.replace(reex1, var1NumberToString);
var reex2 = new RegExp(var2ReplaceString, 'g');
example = example.replace(reex2, var2NumberToString);*/ //We don't want the example written with the numbers
document.getElementById('hExample').value = example;

var reqe1 = new RegExp(var1ReplaceString, 'g');
question = question.replace(reqe1, var1NumberToString);
var reqe2 = new RegExp(var2ReplaceString, 'g');
question = question.replace(reqe2, var2NumberToString);

//The question is now ready to be asked to the student.
document.getElementById('generatedQuestion').innerHTML = question;
//Different:

var answerTypeRadios = document.answerTypeForm.answerTypeRadio;
var selectedRadio;
//to decide which type of answer goes in the preview:
//(This isn't needed in PracticeProblems.js because ProblemCreator only prints the relevant elements.)
for (var i=0; i < answerTypeRadios.length; i++) {
	if (answerTypeRadios[i].checked) {
		selectedRadio = i;
		}
	}
if (selectedRadio == 0) {
	document.getElementById('userAnswer').style.display = "inline";
	document.getElementById('multipleChoicePreviewAnswers').style.display = "none";
	} else {
	document.getElementById('userAnswer').style.display = "none";
	document.getElementById('multipleChoicePreviewAnswers').style.display = "inline";
	}
	
//To display the text for the choices
var multipleChoicePreviewAnswers = document.getElementById('multipleChoicePreviewAnswers');
for (var i=0; i<9; i++) {
	var forChoicePreviewSpanID = "choice" + i + "Text";
	var forChoiceInputID = "choice" + i;
	if (multipleChoicePreviewAnswers.innerHTML.indexOf(forChoicePreviewSpanID) != -1) {
		document.getElementById(forChoicePreviewSpanID).innerHTML = document.getElementById(forChoiceInputID).value;
		}
	}

//End of different
MathJax.Hub.Queue(["Typeset",MathJax.Hub]);

document.getElementById('problemPreview').style.visibility="visible";


//Different:
//This difference doesn't matter. It is creating a global variable for what the correct answer is.
//But that is kept track of in hCorrectChoice in PracticeProblems.js.
var correctChoice;
for (i=1;i<9;i++) {
	var thisChoice = "choice" + i + "Correct";
	var thisChoiceElement = document.getElementById(thisChoice);
	if (thisChoiceElement != null) {
		if (thisChoiceElement.checked) {
			correctChoice = thisChoice;
			}
		}
	}

generatedAnswer.correctChoice = correctChoice;
//End of different

answer = document.getElementById('answer').value
answ = Parser.evaluate( answer, { var1: var1Number, var2: var2Number});
generatedAnswer.ansh = parseFloat(answ);
document.getElementById('generatedAnswer').innerHTML = answ.toString();
}



function answerProblem() {
userAnswer = document.getElementById('userAnswer').value;
feedback = "things";
feedbackCorrect = "Correct";
feedbackIncorrect = "Incorrect";

//For free response:
if (document.getElementById('freeResponse').checked) {
	answernumber = generatedAnswer.ansh;
	if (Math.abs(parseFloat(userAnswer) - answernumber)/answernumber < 0.001) {
		feedback = feedbackCorrect;
		}
	else {
		feedback = feedbackIncorrect;
		}
} 
//For multiple choice:
if (document.getElementById('multipleChoice').checked) {
	var correctChoice = generatedAnswer.correctChoice;
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
var ant = "";//Find out which is selected
if (document.getElementById('freeResponse').checked == true) {
	ant = "freeResponse";
}
else {
	ant = "multipleChoice";
}
document.getElementById('hAnswerType').value = ant;

ann = document.getElementById('answer').value;
document.getElementById('hAnswer').value = ann;

var c1t;
if (document.getElementById('choice1') != null) {
	c1t = document.getElementById('choice1').value;
	document.getElementById('hChoice1').value = c1t;
	}
if (document.getElementById('choice2') != null) {
	c2t = document.getElementById('choice2').value;
	document.getElementById('hChoice2').value = c2t;
	}
if (document.getElementById('choice3') != null) {
	c3t = document.getElementById('choice3').value;
	document.getElementById('hChoice3').value = c3t;
	}
if (document.getElementById('choice4') != null) {
	c4t = document.getElementById('choice4').value;
	document.getElementById('hChoice4').value = c4t;
	}
if (document.getElementById('choice5') != null) {
	c5t = document.getElementById('choice5').value;
	document.getElementById('hChoice5').value = c5t;
	}
if (document.getElementById('choice6') != null) {
	c6t = document.getElementById('choice6').value;
	document.getElementById('hChoice6').value = c6t;
	}
if (document.getElementById('choice7') != null) {
	c7t = document.getElementById('choice7').value;
	document.getElementById('hChoice7').value = c7t;
	}
if (document.getElementById('choice8') != null) {
	c8t = document.getElementById('choice8').value;
	document.getElementById('hChoice8').value = c8t;
	}

var correctChoice = "";//Find out which is selected
for (i=1;i<9;i++) {
	var thisChoice = "choice" + i + "Correct";
	var thisChoiceElement = document.getElementById(thisChoice);
	if (thisChoiceElement != null) {
		if (thisChoiceElement.checked) {
			correctChoice = thisChoice;
		}
	}
}
document.getElementById('hCorrectChoice').value = correctChoice;

dif = document.getElementById('difficulty').value;
document.getElementById('hDifficulty').value = dif;
exa = document.getElementById('example').value;

//Make sure enough info has been entered:
document.getElementById('problemSubmitted').value = "problemSubmitted";
if (cnn != "" && tnn != "" && qnn != "" && 
	(ann != "" || (c1t != "" && c2t != "" && correctChoice != "")) && 
	dif != "") {
	document.forms['fCreateProblem'].submit();
}
}