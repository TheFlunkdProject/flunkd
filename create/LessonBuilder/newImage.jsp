<!doctype html>
<html>
<head>


<script>
//Executes on first load:
function passParam() {
var originalURL = window.location.href;
var x = originalURL.indexOf("http://foto");
var righto = originalURL.substr(x);
document.getElementById('image2').value = righto;
document.getElementById('testspanner2').innerHTML = righto
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
	height:150px;
	left:0%;
	right:0%;
	margin:auto;
	top:600px;
	
	background-color:#EEEEEE;
	border:1px solid black;
	border-radius:3px;
	text-align:center;
	
	z-index:10;
	visibility:visible;
}

#oldImageLabel {
	position:absolute;
	width:200px;
	height:50px;
	left:50px;
	top:500px;
	text-align:center;
}

#replaceableImage {
	position:absolute;
	width:200px;
	height:200px;
	left:50px;
	top:550px;
	
	border:1px solid black;
	border-radius:3px;
}

#doYouReallyWantToReplace {
	position:absolute;
	width:30%;
	height:120px;
	left:0%;
	right:0%;
	margin:auto;
	top:600px;
	
	background-color:#EEEEEE;
	border:1px solid black;
	border-radius:3px;
	text-align:center;
	
	z-index:11;
	visibility:visible;
}

#oldImageExists {
	position:absolute;
	width:100%;
	height:60px;
	top:10px;
}

#yesReplace {
	position:absolute;
	width:50%;
	right:0;
	left:0;
	margin:auto;
	top:70px;
}

#inform {
	position:absolute;
	width:25%;
	top:600px;
	height:120px;
	left:0%;
	right:0%;
	margin:auto;
	
	font-size:32px;
	z-index:0;
}

</style>
</head>
<body onload="passParam()">
<%@ page import="java.io.*,java.lang.*" %>
<%@page import="javax.imageio.ImageIO"%>
<%@page import="java.net.URL"%>
<%@page import="java.awt.*, java.awt.image.*,com.sun.image.codec.jpeg.*" %>





<%
if (request.getParameter("image") != null)
	{
	%>
	<img id="newImage" src="<%= request.getParameter("image") %>">
	<%
	}
%>


<%
if (request.getParameter("image2") != null)
	{
	%>
	<img id="newImage" src="<%= request.getParameter("image2") %>">
	<%
	}
%>

<%
if (request.getParameter("image3") != null)
	{
	%>
	<img id="newImage" src="<%= request.getParameter("image3") %>">
	<%
	}
%>

<div id="enterNameForm" onclick="goInvisible();">
	<form id="ChooseAName" action="newImage.jsp">
		<input type="hidden" id="image2" name="image2" value="" />
		<label for="newImageName" id="name_label">Choose an image name:</label><br>
		<input type="text" id="newImageName" name="newImageName"/>.jpg<br>
		
		<input type="submit" id="save" name="save" value="Save" /><br><br>
		<label for="saveOver" name="saveOver_label">If the image exists, and you already 
		know you want to save over, click this button:</label><br>
		
		<input type="submit" id="saveOver" name="saveOver" value="Save Over Existing File" />
	</form>
</div>

<script>
var something = "<%=request.getParameter("newImageName")%>";
if (something != "null")
{
document.getElementById('enterNameForm').style.visibility = 'hidden';
}
else {
document.getElementById('enterNameForm').style.visibility = 'visible';
}
</script>


<%
if (request.getParameter("saveOver") == "Save")
{
%>
<%=request.getParameter("save")%>
<%
}
if (request.getParameter("newImageName") != null && request.getParameter("yesReplace") == null)
	{
	String saveOver = request.getParameter("saveOver");
	String newImageName = request.getParameter("newImageName");
	String newImagePath = "/home/learnfla/tomcat/webapps/learningflare.com/ROOT/imageLibrary/" + newImageName + ".jpg";
	
	//if a defaultFileName image was created to send to the API, clean it off:
	File oldfile = new File("/home/learnfla/tomcat/webapps/learningflare.com/ROOT/images/defaultImageName.jpg");
	if (oldfile.exists()) oldfile.delete();
	
	File newfile = new File(newImagePath);
	
	//If the new file exists and they didn't click "save over", ask if they 
	//really want to replace it:
	if (newfile.exists() && saveOver == null) 
		{
		%>
		<div id="oldImageLabel"><%=newImageName%>.jpg:</div>
		<img src="/imageLibrary/<%=newImageName%>.jpg" id="replaceableImage">
		<div id="doYouReallyWantToReplace">
			<form id="reallyReplace" action="newImage.jsp">
				<input type="hidden" name="image2" value="" />
				<input type="hidden" id="image3" name="image3" value="<%=request.getParameter("image2")%>" />
				<input type="hidden" name="newImageName" value="<%=request.getParameter("newImageName")%>" />
				<div id="oldImageExists">
				<%=newImageName%>.jpg already exists. Do you want to replace it?
				</div><br>
				<input type="submit" id="yesReplace" name="yesReplace" 
					value="Yes, replace it." />
			</form>
		</div>
		<%
		}
	else
		{
		try
			{
			//copy onto newly-named file from jpg file from API web address
			String sourceImagePath = request.getParameter("image2");
			File copiedImage = new File(newImagePath);
			
			//The image may not be replacing anything, but if it is, clear it out:
			if (copiedImage.exists()) copiedImage.delete();

			if (!copiedImage.exists()) copiedImage.createNewFile();
			
			if (!copiedImage.canWrite())
				throw new IOException("Destination read-only: " + newImagePath);
	
			FileOutputStream outStream = new FileOutputStream(copiedImage);
			
			URL url = new URL(sourceImagePath);
			BufferedImage img = null;
			img = ImageIO.read(url);
			ImageIO.write(img, "jpeg", outStream);
			
			outStream.close();		
			}
			catch (IOException ex) 
			{
			%>
				<strong style="color:red;background-color:gold;">
				<%=ex.getMessage()%>
				</strong>
			<%
			}			
		}
	}
%>

<!-- The 3rd page reload, after they replace -->

<%
if (request.getParameter("yesReplace") != null)
	{
	String newImageName = request.getParameter("newImageName");
	String newImagePath = "/home/learnfla/tomcat/webapps/learningflare.com/ROOT/imageLibrary/" + newImageName + ".jpg";
	
	//if a defaultFileName image was created to send to the API, clean it off:
	File oldfile = new File("/home/learnfla/tomcat/webapps/learningflare.com/ROOT/images/defaultImageName.jpg");
	if (oldfile.exists()) oldfile.delete();
 
	try
		{
		//copy onto newly-named file from jpg file from API web address
		String sourceImagePath = request.getParameter("image3");
		
		File copiedImage = new File(newImagePath);
		
		//The image may not be replacing anything, but if it is, clear it out:
			if (copiedImage.exists()) copiedImage.delete();
			if (!copiedImage.exists()) copiedImage.createNewFile();

		if (!copiedImage.canWrite())
			throw new IOException("Destination read-only: " + newImagePath);

		FileOutputStream outStream = new FileOutputStream(copiedImage);
		
		URL url = new URL(sourceImagePath);
		BufferedImage img = null;
		img = ImageIO.read(url);
		ImageIO.write(img, "jpeg", outStream);
		
		outStream.close();		
		}
		catch (IOException ex) 
		{
		%>
			<strong style="color:red;background-color:gold;">
			<%=ex.getMessage()%>
			</strong>
		<%
		}			
	}
%>

<div id="inform">
Your image is now available to use in your lesson.
</div>

</body>
</html>