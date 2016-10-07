<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*"%>
<%@ page import="model.Resource"%>
<%@ page import="model.FileData"%>
<%@ page import="databaseOp.*"%>
<%@ page import="model.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- Include meta tag to ensure proper rendering and touch zooming -->
<meta name="viewport" content="width=device-width, initial-scale=1">


<title>Add Project</title>
</head>
<body>

	<!-- Add Project -->
	<div data-role="page" id="addProject">
	<% 
				DatabaseOperations dao=new DatabaseOperations();
				List<Client> res = new Client();
				res=dao.getAllClients();	
							
				int size1=res.size();
				
				
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
						<li><a href="1manage.jsp" data-icon="user" data-iconpos="top"
							class="other-color" style="color: white;">Manage</a></li>
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
			<form method="post" action="ProjectController "
				style="width: 20%; margin: 0 auto; width: 100%; text-align: left">
				
					<div>
						<label for="client">Client:</label> 
						<select name="clientName">
				<option value="select">Client Name</option>
				<%
	    	for(int i=0; i<size1 ;i++)
	    	{
	    	%>
				<option value=<%=((Client)res.get(i)).getClientName()%>><%=((Client)res.get(i)).getClientName()%></option>
			<% 
		}
				%>
			
			</select>
					</div>
					<div>
						<label for="pname">Project Name:</label> <input type="text"
							name="projectName" id="projectName">
					</div>
					<div>
						<label for="pcode">Project Code:</label> <input type="text"
							name="projectCode" id="projectCode">
					</div>
					<div>
						<label for="dateStart">Date Start:</label><br> <input type="date"
							name="dateStart" id="dateStart">
					</div>
					<div>
						<label for="dateEnd">Date End:</label> <br><input type="date"
							name="dateEnd" id="dateEnd">
					</div>
					<div>
						<label for="notes">Notes:</label> <input type="text" name="notes"
							id="notes">
					</div>

					<div class="ui-field-contain">
						<label for="select-native-1">Invoice Method:</label> 
						<select
							name="invoiceMethod" id="select-native-1">
							<option value="Billable">Billable</option>
							<option value="Non Billable">Non Billable</option>
						</select>
					</div>
					<div class="ui-field-contain">
						<label for="select-native-1">Permissions:</label> <select
							name="permissions" id="select-native-1">
							<option value="All User">All User</option>
							<option value="Project Manager">Project Manager</option>
							<option value="Administrator">Administrator</option>
						</select> <br>
					</div>
					<div>
						<label for="budget">Budget:</label> <input type="text"
							name="budget" id="budget">
					</div>
					<div>
						<label for="task">Task:</label> <input type="text" name="tasks"
							id="tasks">
					</div>
					<div>
						<label for="team">Team:</label> <input type="text" name="team"
							id="team">
					</div>
					<input type="submit" value="Add" />
			</form>
		</div>
</div>
</body>
</html>