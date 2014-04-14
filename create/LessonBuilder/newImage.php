<!doctype html>
<html>
<head>


<script>

</script>
<script>
function passParam() {
var originalURL = window.location.href;
var x = originalURL.indexOf("http://foto");
var righto = originalURL.substr(x);
document.getElementById('image2').value = righto;
}
</script>
<style>
#newImage {
	position:absolute;
	left:0%;
	right:0%;
	margin:auto;
	top:50px;
	border:1px solid black;
	z-index:0;
}

#enterNameForm {
	position:absolute;
	width:30%;
	height:100px;
	left:0%;
	right:0%;
	margin:auto;
	top:600px;
	
	background-color:#EEEEEE;
	border:1px solid black;
	border-radius:3px;
	
	z-index:10;
}

#inform {
	position:absolute;
	width:25%;
	top:600px;
	height:100px;
	left:0%;
	right:0%;
	margin:auto;
	
	font-size:32px;
	z-index:0;
}

</style>
</head>
<body onload="passParam();">

<script>
<?php
if (!empty($_GET["newImageName"]))
	{
	?>
	document.getElementById('EnterNameForm').style.visibility="hidden";
	<?
	}
	else
	{
	?>
	document.getElementById('enterNameForm').style.visibility="visible";
	<?
	}
?>
</script>


<?php
if (!empty($_GET['image']))
	{
	?>
	<img id="newImage" src="<?php echo $_GET['image']?>">
	<?
	}
?>


<?php
if (!empty($_GET['image2']))
	{
	?>
	<img id="newImage" src="<?php echo $_GET['image']?>">
	<?
	}
?>



<div id="enterNameForm">
	<form id="ChooseAName" action="newImage.php">
		<input type="hidden" id="image2" name="image2" value="" />
		<label for="newImageName" id="name_label">Choose an image name:</label>
		<input type="text" id="newImageName" name="newImageName"/>.jpg
		<input type="submit" id="submit" name="submit" value="Save" />
	</form>
</div>

<?php 
if (!empty($_GET['newImageName']))
{
$imagine = $_GET['image2'];
$newImageName = $_GET['newImageName'];
$newImagePath = "/home/learnfla/tomcat/webapps/learningflare.com/ROOT/images/";
$newFullImageName = $newImagePath . $newImageName . ".jpg";
copy($imagine,$newFullImageName);
}
?>

<div id="inform">
Your image is now available to use in your lesson.
</div>
 
</body>
</html>