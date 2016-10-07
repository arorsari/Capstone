
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*"%>
<%@ page import="model.*"%>
<%@ page import="databaseOp.*"%>

<!DOCTYPE html>
<html>
<head>
  <!-- Include meta tag to ensure proper rendering and touch zooming -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<title>Import File</title>
</head>
<body>

	<div data-role="page">
	<% 
				DatabaseOperations dao=new DatabaseOperations();
				List<Resource> resources = new Resource();
				List<Client> clients = new Client();
				
				resources=dao.getAllResource();
				clients=dao.getAllClients();
							
				int size1=resources.size();
				int size2=clients.size();
				int size3=4;
				int size4=5;
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
			</div>
			<!-- /navbar -->
				<div>
				<ul>
				<a href="2resources.jsp"  >Resources</a> |
				<a href="2clients.jsp" >Clients</a> |
				<a href="2tasks.jsp">Tasks</a> |
				<a href="2categories.jsp">Expense Categories</a> |
				</ul>	
				</div>			
	<div>
		<!-- <form method="post" action="UploadServlet" enctype="multipart/form-data">  -->
	
		
	
		<div data-role="main" class="ui-content">
			
				<div>	
				<h2>Resources -<%=size1 %></h2>
				<h2>Clients -<%=size2 %></h2>
				<h2>Tasks -<%=size3 %></h2>
				<h2>Categories -<%=size4 %></h2>			
				</div>
		
	
		
	</div>
	</div>
</body>
</html>