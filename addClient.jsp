<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- Include meta tag to ensure proper rendering and touch zooming -->
<meta name="viewport" content="width=device-width, initial-scale=1">


<title>Add Client</title>
</head>
<body>

	<!-- Add Client -->
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
			<form method="post" action="ClientController " name="formClient"
				style="width: 20%; margin: 0 auto; width: 100%; text-align: left">
				<div class="ui-field-contain">
					<div>
						<label for="cname">Name:</label> <input type="text"
							name="name" id="name">
					</div>
					<div>
						<label for="address">Address:</label> <input type="text"
							name="address" id="address">
					</div>
				</div>
		<div class="ui-field-contain">
					<label for="select-native-1">Currency:</label> 
					<br>
			<select name="currency" id="select-native-1">
			<option value="cad">CAD</option>
			<option value="usd">USD</option>
			<option value="gdp">GDP</option>
			<option value="eur">EUR</option>
		</select>
		</div>
		 <button type="submit" value="Submit">Add</button>
	</form>
	
</body>
</html>