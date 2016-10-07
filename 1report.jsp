<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*"%>
<%@ page import="model.*"%>
<%@ page import="databaseOp.*"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- Include meta tag to ensure proper rendering and touch zooming -->
<meta name="viewport" content="width=device-width, initial-scale=1">



<title>Report</title>

</head>
<body>


<!-- Report -->
	<!-- Report -->
	<div data-role="page" id="report">
<% 
				DatabaseOperations dao=new DatabaseOperations();
				List<Project> projects = new Project();
				projects=dao.getAllProjects();
				System.out.println(projects);		
				int size1=projects.size();
				
				List<Resource> res = new Resource();
				res =dao.getAllResource();
				System.out.println(res);		
				int size2=res.size();
						
%>
			<div class="thumbnail">
			<img src="css/themes/images/t1logo.png" />
		</div>
			
				
				<div class="ui-corner-all custom-corners" style="background:pink">
					<div class="ui-bar ui-bar-a" style="background:lightgreen">
					<h1 class="mainheading"
				style="font-size: 25px; font-family: 'Comfortaa', cursive;">Financial
				Reporting Tool</h1><br><br>
						<a href="1home.jsp" >Home</a> |
						<a href="1import.jsp" >Import Timesheets</a> |
						<a href="1project.jsp" >Projects</a> |
						<a href="1report.jsp" >Reports</a> |
						<a href="1manage.jsp" >Manage</a> |
						<a href="1help.jsp" >Help</a> |
						<a href="logout.jsp" >LogOut</a>
					
				</div>
				</div>				

			<div data-role="main" class="ui-content">
				Reports
				<form method="post" action="/reportController">
					<div class="ui-field-contain">
						<div>
							
				<td>Project Name</td> 
				<select name="projectname">
				<option value="select">Select a Project</option>
				
				<%
	    	for(int i=0; i<size1 ;i++)
	    	{
	    		
		    	%>

				<option value=<%=((Project)projects.get(i)).getProjectName()%>><%=((Project)projects.get(i)).getProjectName()%></option>
		<% 
		}
				%>
					</select>
						</div>
						<div>
								<p>Date From: <input type="date" id="datepicker1"></p>         
						    
						</div>
						
						<div>
							<p>Date To: <input type="date" id="datepicker2"></p>         
								
						</div>
						<div>
							
								<td>Resource Name</td> 
								<select name="fname">

				<option value="select">Select a Resource</option>
				
				<%
	    	for(int i=0; i<size2 ;i++)
	    	{
	    		
		    	%>

				<option value=<%=((Resource)res.get(i)).getFname()%>><%=((Resource)res.get(i)).getFname()%></option>
		<% 
		}
				%>
					
			</select>
			</div>

		</div>
		<a href="viewReport.jsp" data-role="button" data-icon="plus"
				data-iconpos="left" style="width: 100px;">View Reports</a>
				</form>
			</div>

</body>
</html>