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
	height:120px;
	left:0%;
	right:0%;
	margin:auto;
	top:600px;
	
	background-color:#EEEEEE;
	border:1px solid black;
	border-radius:3px;
	
	z-index:10;
	visibility:visible;
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
<body onload="passParam();">
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

<div id="enterNameForm" onclick="goInvisible();">
	<form id="ChooseAName" action="newImage.jsp">
		<input type="hidden" id="image2" name="image2" value="" />
		<label for="newImageName" id="name_label">Choose an image name:</label>
		<input type="text" id="newImageName" name="newImageName"/>.jpg
		<input type="submit" id="submit" name="submit" value="Save" />
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
if (request.getParameter("newImageName") != null)
	{
	String newImageName = request.getParameter("newImageName");
	String newImagePath = "/home/learnfla/tomcat/webapps/learningflare.com/ROOT/images/" + newImageName + ".jpg";
	
	//Change the defaul new image location to the user-specified name:
	File oldfile = new File("/home/learnfla/tomcat/webapps/learningflare.com/ROOT/images/defaultImageName.jpg");
	File newfile = new File(newImagePath);
 
	if(oldfile.renameTo(newfile))
	{
		System.out.println("Save succesful");
	}
	else
	{
		System.out.println("Save failed");
	}
	try
		{
		//copy onto newly-named file from jpg file from API web address
		String sourceImagePath = request.getParameter("image2");
		
		//File sourceImage = new File(sourceImagePath);
		File copiedImage = new File(newImagePath);


		
		
		//if(!sourceImage.exists())
		//	throw new IOException("No source file: " + sourceImagePath);
		if (!copiedImage.exists()) 
			throw new IOException("Destination not created: " + newImagePath);
		if (!copiedImage.canWrite())
			throw new IOException("Destination read-only: " + newImagePath);

		//FileInputStream inStream = new FileInputStream(sourceImage);
		FileOutputStream outStream = new FileOutputStream(copiedImage);
		
		URL url = new URL(sourceImagePath);
		BufferedImage img = null;
		img = ImageIO.read(url);
		ImageIO.write(img, "jpeg", outStream);
		
			
		/**byte[] buf = new byte[32768];
*
*		int len;
*		while ((len = inStream.read(buf)) > 0)
*			{
*			outStream.write(buf, 0, len);
			}*/
		//inStream.close();
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