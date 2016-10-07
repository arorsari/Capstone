<%@ page  language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*" %>
<%@ page import="model.Resource" %>
<%@ page import="model.FileData" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Help</title>
</head>
<body>
<div data-role="page">
		<table>
			<tr>
				<td style=""><h3>Financial Reporting Tool</h3></td>
				<td style=""><a href="logout.jsp"
					class="ui-btn ui-corner-all ui-shadow ">Logout</a></td>
			</tr>
		</table>
		<div data-role="header">
			<div data-role="navbar">
				<ul>
					<li><a href="1home.jsp"
						class="ui-btn ui-corner-all ui-shadow ">Home</a></li>
					<li><a href="1import.jsp"
						class="ui-btn ui-corner-all ui-shadow ">Timesheets</a></li>
					<li><a href="1project.jsp"
						class="ui-btn ui-corner-all ui-shadow ">Projects</a></li>
					<li><a href="1report.jsp"
						class="ui-btn ui-corner-all ui-shadow ">Reports</a></li>
					<li><a href="1resource.jsp"
						class="ui-btn ui-corner-all ui-shadow">Manage</a></li>
				</ul>
			</div>
		</div>
		
		<div data-role="main" class="ui-content">
			<h1>Welcome Home, <%=session.getAttribute("name")%>!</h1>
		<a href="documentation.jsp" class="ui-btn ui-corner-all ui-shadow ">Documentation</a>
			
		</div>

		<div data-role="footer">
			<div data-role="navbar">
				<ul>
					<li><a href="help.jsp" class="ui-btn ui-corner-all ui-shadow ">Help</a></li>
				</ul>
			</div>
		</div>
	</div>
</body></html>