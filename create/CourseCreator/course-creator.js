//document.getElementById('coursePageDetailsContainer').style.display = "block";

function createOrEdit() {
var createOrEditRadios = document.createOrEditForm.createOrEditRadio;
var selectedRadio;
for (var i=0; i < createOrEditRadios.length; i++) {
	if (createOrEditRadios[i].checked) {
		selectedRadio = i;
		}
	}
if (selectedRadio == 0) {
	document.getElementById('createCourseStuff').style.display = "block";
	document.getElementById('editCourseStuff').style.display = "none";
	}
	else {
	document.getElementById('createCourseStuff').style.display = "none";
	document.getElementById('editCourseStuff').style.display = "block";
	}
}

function newElementHover() {
}

//Course Image Stuff:
function changychangy() {
var gabba = document.getElementById('newOrOpen');
var newImageSource = "/imageLibrary/" + document.getElementById('newOrOpen').value;
	if (gabba.options[gabba.selectedIndex].value != "")
	{
	document.getElementById('imagePreview').src = newImageSource;
	
	}
	else 
	{
	document.getElementById('imagePreview').src = "newImages/newImage500.jpg";
	}
	
}

//newTopicButtonCh1
function newTopic(someNewTopicButton) {
var containingThis=document.getElementById(someNewTopicButton).parentNode;
mainContainer = containingThis.parentNode;

newtopic = document.createElement('input');
mainContainer.appendChild(newtopic);
mainContainer.insertBefore(newtopic, containingThis);
newtopic.type = "text";
var thisNumber = someNewTopicButton.indexOf('Ch') + 2;
var i = someNewTopicButton.substring(thisNumber);
var i=i*100 + 1;
while(document.forms["createForm"].innerHTML.indexOf("topic" + i.toString() + "Name") != -1) {
	i++;
	}
var nameAndID = "topic" + i.toString() + "Name";
newtopic.name = nameAndID;
newtopic.id = nameAndID;
newtopic.className = "darkInputTopic";

var br1 = document.createElement('br');
mainContainer.appendChild(br1);
mainContainer.insertBefore(br1, containingThis);

}





function newChapter(newChapterButton) {
var containingThis = document.getElementById(newChapterButton).parentNode;
mainContainer = containingThis.parentNode;

//Chapter Name
var chapterName = document.createTextNode('Chapter Name:');
mainContainer.appendChild(chapterName);
mainContainer.insertBefore(chapterName, containingThis);

var br1 = document.createElement('br');
mainContainer.appendChild(br1);
mainContainer.insertBefore(br1, containingThis);

//The new chapter name input:
newchapter = document.createElement('input');
mainContainer.appendChild(newchapter);
mainContainer.insertBefore(newchapter, containingThis);
newchapter.type = "text";
var i=1;
while(document.forms["createForm"].innerHTML.indexOf("chapter" + i.toString() + "Name") != -1) {
	i++;
	}
var nameAndID = "chapter" + i.toString() + "Name";
newchapter.name = nameAndID;
newchapter.id = nameAndID;
newchapter.className = "darkInputChapter";

var br2 = document.createElement('br');
mainContainer.appendChild(br2);
mainContainer.insertBefore(br2, containingThis);


//Topic Name Thing
var topicName = document.createTextNode('Topic Name:');
mainContainer.appendChild(topicName);
mainContainer.insertBefore(topicName, containingThis);

var br3 = document.createElement('br');
mainContainer.appendChild(br3);
mainContainer.insertBefore(br3, containingThis);

//A topic input to start with:
newtopic = document.createElement('input');
mainContainer.appendChild(newtopic);
mainContainer.insertBefore(newtopic, containingThis);
newtopic.type = "text";

var i=i*100 + 1;
while(document.forms["createForm"].innerHTML.indexOf("topic" + i.toString() + "Name") != -1) {
	i++;
	}
var nameAndID = "topic" + i.toString() + "Name";
newtopic.name = nameAndID;
newtopic.id = nameAndID;
newtopic.className = "darkInputTopic";

var br4 = document.createElement('br');
mainContainer.appendChild(br4);
mainContainer.insertBefore(br4, containingThis);


//The new create new topic div:
newbuttonDiv = document.createElement('div');
mainContainer.appendChild(newbuttonDiv);
mainContainer.insertBefore(newbuttonDiv, containingThis);
newbuttonDiv.className = "newTopicDiv";
var i=1;
while(document.forms["createForm"].innerHTML.indexOf("newTopicDiv" + i.toString()) != -1) {
	i++;
	}
var divnameAndID = "newTopicDiv" + i.toString();
newbuttonDiv.id = divnameAndID;

//The actual button:
newbutton = document.createElement('div');
newbuttonDiv.appendChild(newbutton);
newbutton.className = "newElementButton";
while(document.forms["createForm"].innerHTML.indexOf("newTopicButton" + "Ch" + i.toString()) != -1) {
	i++;
	}
var buttonID = "newTopicButton" + "Ch" + i.toString();
newbutton.id = buttonID;
newbutton.addEventListener("click", function () {newTopic(buttonID)});

//The button label:
var newtopiclabel = document.createElement('div');
newbuttonDiv.appendChild(newtopiclabel);
newtopiclabel.className = "newElementLabel";
newtopiclabel.innerHTML = "Create New Topic";

//<div class="newElementButton" id="ch1NewTopicButton"
//	onclick="newTopic('ch1NewTopicButton')"></div>
//<div class="newElementLabel"> Create New Topic</div>


var br5 = document.createElement('br');
mainContainer.appendChild(br5);
mainContainer.insertBefore(br5, containingThis);

}