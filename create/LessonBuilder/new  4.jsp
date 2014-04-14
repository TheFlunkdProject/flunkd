<%
if (request.getParameter("newImageName") != null && request.getParameter("saveOver") != null)
	{
	String newImageName = request.getParameter("newImageName");
	String newImagePath = "/home/learnfla/tomcat/webapps/learningflare.com/ROOT/imageLibrary/" + newImageName + ".jpg";
	
	//Change the defaul new image location to the user-specified name:
	File oldfile = new File("/home/learnfla/tomcat/webapps/learningflare.com/ROOT/images/defaultImageName.jpg");
	File newfile = new File(newImagePath);
	if(!newfile.exists())
	{
		if(oldfile.renameTo(newfile))
		{
			System.out.println("Save succesful");
		}
		else
		{
			System.out.println("Save failed");
		}
	}
	try
		{
		//copy onto newly-named file from jpg file from API web address
		String sourceImagePath = request.getParameter("image2");
		
		File copiedImage = new File(newImagePath);

		if (!copiedImage.exists()) 
			throw new IOException("Destination not created: " + newImagePath);
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