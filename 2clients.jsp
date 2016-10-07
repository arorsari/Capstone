<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*"%>
<%@ page import="model.*"%>
<%@ page import="databaseOp.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- Include meta tag to ensure proper rendering and touch zooming -->
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Client</title>
</head>
<body>

	<!-- Client -->
	<div data-role="page" id="client">
<% 
				DatabaseOperations dao=new DatabaseOperations();
				List<Client> clients = new Client();
				clients=dao.getAllClients();
				int size1=clients.size();
				
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
				
				<div>
				<ul>
				<a href="2resources.jsp"  >Resources</a> |
				<a href="2clients.jsp" >Clients</a> |
				<a href="2tasks.jsp">Tasks</a> |
				<a href="2categories.jsp">Expense Categories</a> |
				</ul>	
				</div>			
	<div>
				
		<div data-role="main" class="ui-content">
			<a href="addClient.jsp" data-role="button" data-icon="plus"
				data-iconpos="left" style="width: 100px;">Add Client</a>
			<div>
			<%
	    	for(int i=0; i<size1 ;i++)
	    	{
		    	%>
				<div data-role="collapsible" data-inset="false">
					<h4>
						<%= ((Client)clients.get(i)).getClientName()  %>
					</h4>
					<ul data-role="listview" data-inset="true">
						<li>

							<h6>
								<b>Address:</b>&nbsp;
								<%= ((Client)clients.get(i)).getAddress() %>
								&nbsp; 
								<b>Currency:</b>
								&nbsp;
								<%= ((Client)clients.get(i)).getCurrency() %>
								
								&nbsp; <input type="button" name="Edit" value="Edit"
									style="width: 100px;"> <input type="button"
									name="Delete" value="Delete" style="width:50px;">
							</h6>
						</li>
					</ul>
				</div>
				<%
	      	}
      	%>
			</div>
		</div>
		
	</div>

</body>
</html>