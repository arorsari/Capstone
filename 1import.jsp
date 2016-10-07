<%@ page import="java.util.*"%>
<%@ page import="model.*"%>
<%@ page import="databaseOp.*"%>
<!DOCTYPE html>
<html>
<head>
  <!-- Include meta tag to ensure proper rendering and touch zooming -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<title>File Upload</title>
</head>
<body>

	<div data-role="page">
	<% 
				DatabaseOperations dao=new DatabaseOperations();
				List<FileData> filedata = new FileData();
				filedata=dao.getAllFileData();
							
				int size1=filedata.size();
				%>
	<div data-role="header" data-id="header" data-position="fixed">
			<h1 class="mainheading"
				style="font-size: 30px; font-family: 'Comfortaa', cursive;">Financial
				Reporting Tool</h1>
			<script>
				/* When the user clicks on the button, 
				toggle between hiding and showing the dropdown content */
				function myFunction() {
					document.getElementById("myDropdown").classList
							.toggle("show");
				}

				// Close the dropdown menu if the user clicks outside of it
				window.onclick = function(event) {
					if (!event.target.matches('.dropbtn')) {

						var dropdowns = document
								.getElementsByClassName("dropdown-content");
						var i;
						for (i = 0; i < dropdowns.length; i++) {
							var openDropdown = dropdowns[i];
							if (openDropdown.classList.contains('show')) {
								openDropdown.classList.remove('show');
							}
						}
					}
				}
			</script>
			<div class="topmenu" style="position: relative; z-index: -1;">
				<div data-role="navbar">
					<ul>
						<li><a href="1home.jsp" data-icon="home" data-iconpos="top"
							class="other-color" style="color: white;">Home</a></li>
						<li><a href="1import.jsp" data-icon="info" data-iconpos="top"
							class="other-color" style="color: white;">Import Timesheets</a></li>
						<li><a href="1project.jsp" data-icon="bullets"
							data-iconpos="top" class="other-color" style="color: white;">Projects</a></li>
						<li><a href="1report.jsp" data-icon="action"
							data-iconpos="top" class="other-color" style="color: white;">Reports</a></li>
						<li><a href="1manage.jsp" data-icon="user"
							data-iconpos="top" class="other-color" style="color: white;">Manage</a></li>
					</ul>
				</div>
				<div class="dropdown">
					<button onclick="myFunction()" class="dropbtn">Options</button>
					<div id="myDropdown" class="dropdown-content">
						<a href="1help.jsp">Help</a> <a href="logout.jsp">Logout</a>
					</div>
				</div>
			</div>
			<!-- /navbar -->
		</div>


<div data-role="main" class="ui-content">
		<form method="post" action="UploadServlet" enctype="multipart/form-data" data-ajax="false">
			<h4>Select file to upload</h4>
			<input type="file" name="uploadFile" />
			<br/><br/> 
			<input type="submit" value="Upload" />
		</form>
		
	
				<h2>
					FileData Entries - <%=size1 %></h2>
				<%
	    	for(int i=0; i < size1;i++)
	    	{
		    	%>
				<div data-role="collapsible" data-inset="false">
					<h4>
					
						<%= ((FileData)filedata.get(i)).getFname() %>
						&nbsp;-&nbsp;
						<%= ((FileData)filedata.get(i)).getLname() %>
					
					</h4>
					<ul data-role="listview" data-inset="true">
						<li>

							<h2>
								<b>Date:</b>
								&nbsp;
								<%= ((FileData)filedata.get(i)).getDate() %>
								&nbsp; 
								<b>Project:</b>
								&nbsp;
								<%= ((FileData)filedata.get(i)).getProject()%>
								&nbsp;
								 <b>Hours:</b>
								 &nbsp;
								<%= ((FileData)filedata.get(i)).getHoure() %>
								&nbsp; 
								<input type="button" name="Edit" value="Edit" style="width: 100px;"> 
								<input type="button" name="Delete" value="Delete" style="width: 100px;">
							</h2>
						</li>
					</ul>
				</div>
				<%
	      	}
      	%>
</div>
		
	</div>
</body>
</html>



