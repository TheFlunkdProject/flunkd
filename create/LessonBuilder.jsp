<!doctype html>
<html>
<head>
<script language="javascript" type="text/javascript">
function addtext() {
	var newtext = '<span title=""></span>';
	document.lessontext.outputtext.value += newtext;
}
</script>
<style>
#textarea {
	position:absolute;
	height:80%;
	top:10%;
	left:150px;
	right:10px;
}

#buttons {
	position:absolute;
	left:10px;
	top:100px;
	width:130px;
	height:80%;
}

#footer {
	position:absolute;
	width:80%;
	left:0%;
	right:0%;
	margin:auto;
	height:30px;
	bottom:10px;
}
	
</style>

</head>
<body>



<form name="lessontext">
	<div id="buttons">
	<table border="0" cellspacing="0" cellpadding="5">
		<tr>
			<td>
			<input title="Insert your label inside the title='' text, and insert the stuff to be labled between the > and < signs." type="button" value="Hidden Info Box" onClick="addtext();">
			</td>
			<td>
			</td>
		</tr>
	</table>
	</div>
<textarea id="textarea" name="outputtext"></textarea>
</form>


<div id="footer">
	<form name="footeractions" action="test.jsp">
		<table border="0" cellspacing="0" cellpadding="5">
			<tr>
				<td>
				
				<input type="submit" name="submit" id="preview" value="Preview">
				</td>
			</tr>
		</table>
	</form>
</div>

</body>
</html>