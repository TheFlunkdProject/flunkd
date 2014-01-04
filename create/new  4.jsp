				<select name="newOrOpen" id="newOrOpen" onchange="changychangy();">
					<option value="" selected="selected"></option>
					
					<%
					File newImagesDirectory = new File(request.getRealPath("imageLibrary"));
					File[] list = newImagesDirectory.listFiles();
					
					
					for (int i = 0; i < list.length; i+=1)
					{
					/** @type {String} */
					String theIthImageName = list[i].getPath();
					
					int firstLetter = indexOf(theIthImageName, "imageLibrary/") + 13;
					int lastLetter = theIthImageName.length() - 1;
					
					String value = theIthImageName.substring(firstLetter, lastLetter);
					%>
					<option value="<%=value%>"><%=value%></option>
					<%
					}
					%>
					
				</select><br><br>