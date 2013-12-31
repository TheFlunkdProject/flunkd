<!doctype html>
<html>
<head>


<script>
function changychangy() {
var gabba = document.getElementById('newOrOpen');
	if (gabba.options[gabba.selectedIndex].value == "new")
	{
	document.getElementById('submit_label').innerHTML = "Create Image:";
	document.getElementById('submit').disabled = false;
	document.formalAttire.action = "createImage.jsp";
	}
	else if (gabba.options[gabba.selectedIndex].value == "open")
	{
	document.getElementById('submit_label').innerHTML = "Edit Image:";
	document.getElementById('submit').disabled = false;
	document.formalAttire.action = "editImage.jsp";
	}
	else
	{
	document.getElementById('submit_label').innerHTML = "";
	document.getElementById('submit').disabled = true;
	}
	
}
</script>
<script>
function formSubmit() {
	document.forms['imageForm'].submit();
}
</script>
<style>

#imageForm {
	position:absolute;
	left:20px;
	right:20px;
	top:20px;
	height:460px;
	background-color:#DDDDDD;
	z-index:0;
	padding:10px;
	
}

#killer {
	position:absolute;
	width:300px;
	height:300px;
	bottom:20px;
	right:100px;
	
	border:1px solid black;
	z-index:1;
}

#killa {
	position:absolute;
	width:100%;
	height:100%;
}


#submit {
	position:absolute;
	left:120px;
}

</style>
</head>
<body>




<div id="imageForm">
	<form name="formalAttire" action="">
		<label for="newOrOpen" id="newOrOpen_label">Create new image or open image?</label>
		<select name="newOrOpen" id="newOrOpen" onchange="changychangy();">
			<option value="" selected="selected"></option>
			<option value="new">New</option>
			<option value="open">Open</option>
		</select><br><br>
		
		<label for="name" id="name_label">Image name:</label>
		<input type="text" id="name" name="name"/>.png<br><br>
		<label for="submit" id="submit_label"></label>
		<input type="submit" id="submit" name="gosubmit" value="Go!!" disabled="true" 
		onclick="formSubmit();"/>
		
	</form>
</div>
<div id="killer">
	<img src="Test.jpg" id="killa">
</div>
 
</body>
</html>