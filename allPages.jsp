<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*"%>
<%@ page import="model.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- Include meta tag to ensure proper rendering and touch zooming -->
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>home</title>
</head>
<body>

    <!-- login -->	                                                           	
	<div data-role="page" id="login">
		<h3>Financial Reporting Tool</h3> <p><a href="logout.jsp">Logout</a>
		<div data-role="header">
			<div data-role="navbar">
				<ul>
					<li><a href="#login" class="ui-btn ui-corner-all ui-shadow ">Home</a></li>
					<li><a href="#import" class="ui-btn ui-corner-all ui-shadow ">Timesheets</a></li>
					<li><a href="#project" class="ui-btn ui-corner-all ui-shadow ">Projects</a></li>
					<li><a href="#report" class="ui-btn ui-corner-all ui-shadow ">Reports</a></li>
					<li><a href="resource.jsp" class="ui-btn ui-corner-all ui-shadow">Manage</a></li>
				</ul>
			</div>
		</div>

		<div data-role="main" class="ui-content">
			<h1>Welcome Home, <%=session.getAttribute("name")%>!</h1>
			
		</div>

		<div data-role="footer">
			<div data-role="navbar">
				<ul>
					<li><a href="#help" class="ui-btn ui-corner-all ui-shadow ">Help</a></li>
				</ul>
			</div>
		</div>
	</div>
	
	<!-- Import -->
	<div data-role="page" id="import">
		<h3>Financial Reporting tool</h3>
		<div data-role="header">
			<div data-role="navbar">
				<ul>
					<li><a href="#login" class="ui-btn ui-corner-all ui-shadow ">Home</a></li>
					<li><a href="#import" class="ui-btn ui-corner-all ui-shadow ">Timesheets</a></li>
					<li><a href="#project" class="ui-btn ui-corner-all ui-shadow ">Projects</a></li>
					<li><a href="#report" class="ui-btn ui-corner-all ui-shadow ">Reports</a></li>
					<li><a href="#people" class="ui-btn ui-corner-all ui-shadow">Manage</a></li>
				</ul>
			</div>
		</div>

		<div data-role="main" class="ui-content">
			Import Data </br> <br> Search Timesheet Data:
			<form class="ui-filterable">
				<input id="myFilter" data-type="search" value="Search...">
			</form>

			Select a file to upload: <br />
			<form action="Upload" method="post"
				enctype="multipart/form-data">
				
				<input type="file" name="filepath" size="50" accept=".csv" value="filepath" "/> <br /> 
				<input type="submit" value="Upload File" onClick="document.location.reload(true)"/>
			</form>
			<div>
			<% 
				ArrayList <FileData> resourceList1=(ArrayList <FileData>)request.getAttribute("filedata");
			System.out.println("Value of filedata object "+resourceList1);
				
			%>
			
			
			
			</div>
			
		</div>

		<div data-role="footer">
			<div data-role="navbar">
				<ul>
					<li><a href="#help" class="ui-btn ui-corner-all ui-shadow ">Help</a></li>
				</ul>
			</div>
		</div>
	</div>
	
	<!-- People Page-->
	<div data-role="page" id="people">
		<h1
			style="text-align: center; font-family: Verdana, Geneva, sans-serif;">Financial
			Reporting Tool</h1>
		<div data-role="header">
			<div data-role="navbar" data-theme="b">
				<ul>
					<li><a href="#login" class="ui-btn ui-corner-all ui-shadow ">Home</a></li>
					<li><a href="#import" class="ui-btn ui-corner-all ui-shadow ">Timesheets</a></li>
					<li><a href="#project" class="ui-btn ui-corner-all ui-shadow ">Projects</a></li>
					<li><a href="#report" class="ui-btn ui-corner-all ui-shadow ">Reports</a></li>
					<li><a href="#people" class="ui-btn ui-corner-all ui-shadow">Manage</a></li>
				</ul>
			</div>
			<br>
			<div data-role="navbar" style="color: orange;">
				<ul>
					<li><a href="#ListResource"
						class="ui-btn ui-corner-all ui-shadow ">People</a></li>
					<li><a href="#people" class="ui-btn ui-corner-all ui-shadow ">Clients</a></li>
					<li><a href="#ListResource"
						class="ui-btn ui-corner-all ui-shadow ">Tasks</a></li>
					<li><a href="#ListResource"
						class="ui-btn ui-corner-all ui-shadow ">Expense Categories</a></li>
				</ul>
			</div>
		</div>

		<div data-role="main" class="ui-content">
			<a href="#addPerson" data-role="button" data-icon="plus"
				data-iconpos="left" style="width: 100px;">Add Person</a>
							<% 
							ArrayList <Resource> resourceList=(ArrayList <Resource>)request.getAttribute("resources");
							int size=resourceList.size();
							%>
			<h2>Employees - <%=size %></h2>
			
			
    	<%
	    	for(int i=0; i<resourceList.size();i++)
	    	{
		    	%>
		    	<div data-role="collapsible" data-inset="false">
		    	<h4>
		    	<%= ((Resource)resourceList.get(i)).getFname()  %>
		        		&nbsp; 
		        		<%= ((Resource)resourceList.get(i)).getLname()  %></a>
		    	</h4>
		    	<ul data-role="listview"  data-inset="true">
		        	<li>
		        		
		        		<p>
		        			<b>Email:</b>&nbsp; <%= ((Resource)resourceList.get(i)).getEmail() %>
		        			&nbsp; 
		        			<b>Department:</b>&nbsp; <%= ((Resource)resourceList.get(i)).getDepartment() %>
		        			&nbsp; 
		        			<b>Bill Rate:</b>&nbsp; <%= ((Resource)resourceList.get(i)).getBillRate() %>
		        			&nbsp; 
		        			<b>Cost Rate:</b>&nbsp; <%= ((Resource)resourceList.get(i)).getCostRate() %>
		        			&nbsp; 
		        			<b>Permissions:</b>&nbsp; <%= ((Resource)resourceList.get(i)).getPermissions() %>
		        			&nbsp; 
		        			<input type="button" name="Edit" value="Edit" style="width: 100px;">
		        			<input type="button" name="Delete" value="Delete" style="width: 100px;">
		        		</p>
		        	</li>
		            </ul>
		            </div>
		      	<%
	      	}
      	%>
		</ul>
		</div>
	</div>
	
	<!-- Add Person -->
	<div data-role="page" id="addPerson">
		<h1
			style="text-align: center; font-family: Verdana, Geneva, sans-serif;">Financial
			Reporting Tool</h1>
		<div data-role="header">
			<div data-role="navbar">
				<ul>
					<li><a href="#login" class="ui-btn ui-corner-all ui-shadow ">Home</a></li>
					<li><a href="#import" class="ui-btn ui-corner-all ui-shadow ">Timesheets</a></li>
					<li><a href="#project" class="ui-btn ui-corner-all ui-shadow ">Projects</a></li>
					<li><a href="#report" class="ui-btn ui-corner-all ui-shadow ">Reports</a></li>
					<li><a href="#people" class="ui-btn ui-corner-all ui-shadow">Manage</a></li>
				</ul>
			</div>
			<br>
			<div data-role="navbar" class="nav2">
				<ul>
					<li><a href="#ListResource"
						class="ui-btn ui-corner-all ui-shadow ">People</a></li>
					<li><a href="#people" class="ui-btn ui-corner-all ui-shadow ">Clients</a></li>
					<li><a href="#ListResource"
						class="ui-btn ui-corner-all ui-shadow ">Tasks</a></li>
					<li><a href="#ListResource"
						class="ui-btn ui-corner-all ui-shadow ">Expense Categories</a></li>
				</ul>
			</div>
		</div>
		<div data-role="main" class="ui-content">
			<form method="post" action="UserController " style="width: 50%; margin: 0 auto; width: 75%; text-align: left">
				<div class="ui-field-contain">
					<div>
						<label for="fname">First name:</label> <input type="text"
							name="fname" id="fname">
					</div>
					<div>
						<label for="lname">Last name:</label> <input type="text"
							name="lname" id="lname">
					</div>
					<div>
						<label for="date">Email:</label> <input type="email" name="email"
							id="email">
					</div>
				</div>
				<div class="ui-field-contain">
					<label for="select-native-1">Department:</label> <select
						name="department" id="select-native-1">
						<option value="Professional Services" >Professional Services</option>
						<option value="Product Development" >Product Development</option>
						<option value="Product Management" >Product Management</option>
						<option value="Consulting" >Consulting</option>
					</select>
				</div>
				<div>
					<label for="rate">Billable Rate:</label> <input type="number"
						name="brate" id="brate">
				</div>
				<div>
					<label for="rate">Cost Rate:</label> <input type="number"
						name="crate" id="crate">
				</div>
				<div class="ui-field-contain">
					<label for="select-native-1">Permissions:</label> <select
						name="permissions" id="select-native-1">
						<option value="Regular User">Regular User</option>
						<option value="Project Manager">Project Manager</option>
						<option value="Administrator">Administrator</option>
					</select>
					<br>
				</div>
				<button type="submit" value="Submit" onClick="document.location.reload(true)">Add</button>
			</form>
		</div>
		<div data-role="footer">
			<div data-role="navbar">
				<ul>
					<li><a href="#help" class="ui-btn ui-corner-all ui-shadow ">Help</a></li>
				</ul>
			</div>
		</div>
	</div>
	
	<!-- Project -->
	<div data-role="page" id="project">
		<h3>Financial Reporting tool</h3>
		<div data-role="header">
			<div data-role="navbar">
				<ul>
					<li><a href="#login" class="ui-btn ui-corner-all ui-shadow ">Home</a></li>
					<li><a href="#import" class="ui-btn ui-corner-all ui-shadow ">Timesheets</a></li>
					<li><a href="#project" class="ui-btn ui-corner-all ui-shadow ">Projects</a></li>
					<li><a href="#report" class="ui-btn ui-corner-all ui-shadow ">Reports</a></li>
					<li><a href="#people" class="ui-btn ui-corner-all ui-shadow">Manage</a></li>
				</ul>
			</div>
		</div>

		<div data-role="main" class="ui-content">
			Manage Projects
			<div data-role="navbar">
				<ul>
					<li><a href="#ListProject"
						class="ui-btn ui-corner-all ui-shadow ">List All Projects</a></li>
					<li><a href="addProject"
						class="ui-btn ui-corner-all ui-shadow ">Add Projects</a></li>
					<li><a href="#ListProject"
						class="ui-btn ui-corner-all ui-shadow ">Put whatever</a></li>
				</ul>
			</div>

		</div>

		<div data-role="footer">
			<div data-role="navbar">
				<ul>
					<li><a href="#help" class="ui-btn ui-corner-all ui-shadow ">Help</a></li>
				</ul>
			</div>
		</div>
	</div>

	<!-- Add Project -->
	<div data-role="page" id="addProject">
		<h1
			style="text-align: center; font-family: Verdana, Geneva, sans-serif;">Financial
			Reporting Tool</h1>
		<div data-role="header">
			<div data-role="navbar">
				<ul>
					<li><a href="#login" class="ui-btn ui-corner-all ui-shadow ">Home</a></li>
					<li><a href="#import" class="ui-btn ui-corner-all ui-shadow ">Timesheets</a></li>
					<li><a href="#project" class="ui-btn ui-corner-all ui-shadow ">Projects</a></li>
					<li><a href="#report" class="ui-btn ui-corner-all ui-shadow ">Reports</a></li>
					<li><a href="#people" class="ui-btn ui-corner-all ui-shadow">Manage</a></li>
				</ul>
			</div>
			<br>
			<div data-role="navbar" class="nav2">
				<ul>
					<li><a href="#ListResource"
						class="ui-btn ui-corner-all ui-shadow ">People</a></li>
					<li><a href="#people" class="ui-btn ui-corner-all ui-shadow ">Clients</a></li>
					<li><a href="#ListResource"
						class="ui-btn ui-corner-all ui-shadow ">Tasks</a></li>
					<li><a href="#ListResource"
						class="ui-btn ui-corner-all ui-shadow ">Expense Categories</a></li>
				</ul>
			</div>
		</div>
		<div data-role="main" class="ui-content">
			<form method="post" action="UserController " style="width: 50%; margin: 0 auto; width: 75%; text-align: left">
				<div class="ui-field-contain">
					<div>
						<label for="fname">First name:</label> <input type="text"
							name="fname" id="fname">
					</div>
					<div>
						<label for="lname">Last name:</label> <input type="text"
							name="lname" id="lname">
					</div>
					<div>
						<label for="date">Email:</label> <input type="email" name="email"
							id="email">
					</div>
				</div>
				<div class="ui-field-contain">
					<label for="select-native-1">Department:</label> <select
						name="department" id="select-native-1">
						<option value="Professional Services" >Professional Services</option>
						<option value="Product Development" >Product Development</option>
						<option value="Product Management" >Product Management</option>
						<option value="Consulting" >Consulting</option>
					</select>
				</div>
				<div>
					<label for="rate">Billable Rate:</label> <input type="number"
						name="brate" id="brate">
				</div>
				<div>
					<label for="rate">Cost Rate:</label> <input type="number"
						name="crate" id="crate">
				</div>
				<div class="ui-field-contain">
					<label for="select-native-1">Permissions:</label> <select
						name="permissions" id="select-native-1">
						<option value="Regular User">Regular User</option>
						<option value="Project Manager">Project Manager</option>
						<option value="Administrator">Administrator</option>
					</select>
					<br>
				</div>
				<button type="submit" value="Submit" onClick="document.location.reload(true)">Add</button>
			</form>
		</div>
		<div data-role="footer">
			<div data-role="navbar">
				<ul>
					<li><a href="#help" class="ui-btn ui-corner-all ui-shadow ">Help</a></li>
				</ul>
			</div>
		</div>
	</div>

	<!-- Add/Edit Project -->
	<div data-role="page" id="addProject">
		<h3>Financial Reporting tool</h3>
		<div data-role="header">
			<div data-role="navbar">
				<ul>
					<li><a href="#login" class="ui-btn ui-corner-all ui-shadow ">Home</a></li>
					<li><a href="#import" class="ui-btn ui-corner-all ui-shadow ">Timesheets</a></li>
					<li><a href="#project" class="ui-btn ui-corner-all ui-shadow ">Projects</a></li>
					<li><a href="#report" class="ui-btn ui-corner-all ui-shadow ">Reports</a></li>
					<li><a href="#people" class="ui-btn ui-corner-all ui-shadow">Manage</a></li>
				</ul>
			</div>
		</div>

		<div data-role="main" class="ui-content">
			Add Projects
			<form method="post">
				<div class="ui-field-contain">
					<div>
						<label for="resourceid">Project id:</label> <input type="text"
							name="resourceid" id="resourceid">
					</div>
					<div>
						<label for="fname">Project name:</label> <input type="text"
							name="fname" id="fname">
					</div>
					<div>
						<label for="lname">Start date:</label> <input type="date"
							name="lname" id="lname">
					</div>
					<div>
						<label for="date">End date:</label> <input type="date" name="date"
							id="date">
					</div>
					<div>
						<label for="email">Project Manager:</label> <input type="email"
							name="email" id="email">
					</div>
					<a href="#project" class="ui-btn ui-corner-all ui-shadow ">Add</a>
				</div>

			</form>
		</div>

		<div data-role="footer">
			<div data-role="navbar">
				<ul>
					<li><a href="#help" class="ui-btn ui-corner-all ui-shadow ">Help</a></li>
				</ul>
			</div>
		</div>
	</div>

	<!--Reports-->
	<div data-role="page" id="report">
		<h3>Financial Reporting tool</h3>
		<div data-role="header">
			<div data-role="navbar">
				<ul>
					<li><a href="#login" class="ui-btn ui-corner-all ui-shadow ">Home</a></li>
					<li><a href="#import" class="ui-btn ui-corner-all ui-shadow ">Timesheets</a></li>
					<li><a href="#project" class="ui-btn ui-corner-all ui-shadow ">Projects</a></li>
					<li><a href="#report" class="ui-btn ui-corner-all ui-shadow ">Reports</a></li>
					<li><a href="people" class="ui-btn ui-corner-all ui-shadow">Manage</a></li>
				</ul>
			</div>
		</div>

		<div data-role="main" class="ui-content">
			Reports
			<form method="post">
				<div class="ui-field-contain">
					<div>
						<label for="userid">Project Name:</label> <input type="text"
							name="user id" id="userid">
					</div>
					<div>
						<label for="dateFrom">Date From:</label> <input type="date"
							name="dateFrom" id="dateFrom">
					</div>
					<div>
						<label for="dateTo">Date To:</label> <input type="date"
							name="dateTo" id="dateTo">
					</div>
					<div>
						<label for="userid">Resource Name:</label> <input type="text"
							name="user id" id="userid">
					</div>
				</div>
				<a href="#viewReports" class="ui-btn ui-corner-all ui-shadow ">View
					Report</a>
			</form>
		</div>

		<div data-role="footer">
			<div data-role="navbar">
				<ul>
					<li><a href="#help" class="ui-btn ui-corner-all ui-shadow ">Help</a></li>
				</ul>
			</div>
		</div>
	</div>

	<!-- View Reports -->
	<div data-role="page" id="viewReports">
		<h3>Financial Reporting tool</h3>
		<div data-role="header">
			<div data-role="navbar">
				<ul>
					<li><a href="#login" class="ui-btn ui-corner-all ui-shadow ">Home</a></li>
					<li><a href="#import" class="ui-btn ui-corner-all ui-shadow ">Timesheets</a></li>
					<li><a href="#project" class="ui-btn ui-corner-all ui-shadow ">Projects</a></li>
					<li><a href="#report" class="ui-btn ui-corner-all ui-shadow ">Reports</a></li>
					<li><a href="#people" class="ui-btn ui-corner-all ui-shadow">Manage</a></li>
				</ul>
			</div>
		</div>

		<div data-role="main" class="ui-content">
			<div id="chart_div"></div>

		</div>

		<div data-role="footer">
			<div data-role="navbar">
				<ul>
					<li><a href="#help" class="ui-btn ui-corner-all ui-shadow ">Help</a></li>
				</ul>
			</div>
		</div>
	</div>
</body>

	<!-- Script to draw google graph -->
	<script type="text/javascript">
	google.charts.load('current', {
		packages : [ 'corechart', 'bar' ]
	});
	google.charts.setOnLoadCallback(drawMultSeries);

	function drawMultSeries() {

		var data = google.visualization.arrayToDataTable([
				[ 'Project', 'Project estimated', 'Resource expense' ],
				[ 'ABC Project', 8175000, 800800 ],
				[ 'XYZ Upgrade', 3792000, 369400 ],
				[ 'AAA Application', 2695000, 289600 ] ]);

		var options = {
			title : 'Project estimation vs Resource expense',
			hAxis : {
				title : 'expense',
				minValue : 0
			},
			vAxis : {
				title : 'Project'
			}
		};

		var chart = new google.visualization.BarChart(document
				.getElementById('chart_div'));
		chart.draw(data, options);
	}
</script>
</html>