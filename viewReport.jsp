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

<!-- For google chart only -->
 <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
  
    
 

<title>View Report</title>
</head>
<body>

	<!-- View Report -->
	<div data-role="page" id="login">
<% 
				DatabaseOperations dao=new DatabaseOperations();
				List<Project> projects = new Project();
				projects=dao.getAllProjects();
							
				int size1=projects.size();
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
			<div id="table_div"></div>

		</div>

		
	</div>
</body>


<script type="text/javascript">
	google.charts.load('current', {'packages':['table']});
	google.charts.setOnLoadCallback(drawTable);
	function drawTable() {
        var data = new google.visualization.DataTable();
        data.addColumn('string', 'Project#');
        data.addColumn('string', 'POrder#');
        data.addColumn('string', 'Project');
        data.addColumn('string', 'StartDate');
        data.addColumn('string', 'Start Budget');
        data.addColumn('string', 'Available Funding');
        data.addColumn('string', 'Consultant Name');
        data.addColumn('string', 'Daily Rate');
        data.addColumn('string', 'Billable Time(Days)');
        data.addColumn('string', 'Amount Charged By Consultant');
        data.addColumn('string', 'Remaining Funding on March 1st');
        data.addRows([
                      ['RCI-1265', '1234567890', 'Service Deployment for LTE','10/02/15','$24,030','$20,783','Tommy Lee','$555','21','$11,655.00-$1,651','$9,128']
                      
                    ]);
        
        var options = {'title':'How Much Pizza I Ate Last Night',
                'width':1600,
                'height':300};
      
        var table = new google.visualization.Table(document.getElementById('table_div'));

        table.draw(data,options,{showRowNumber: true});
      

	}
</script>

</html>