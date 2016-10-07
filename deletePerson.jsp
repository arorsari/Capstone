<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="model.*"%>
<%@ page import="util.*"%>
<%@ page import="databaseOp.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%
		
		DatabaseOperations dao = new DatabaseOperations();
	   
		String email = request.getParameter("email");
		dao.deleteResource(email);
	%>
	
	<%
		getServletContext().getRequestDispatcher("/2resources.jsp").include(request, response);

		
	%>

</body>
</html>