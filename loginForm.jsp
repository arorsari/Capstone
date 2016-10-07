<%@ page import="java.sql.*"%>

<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- Include jQuery Mobile stylesheets -->
<link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css">
<!-- Include the jQuery library -->
<script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<!-- Include the jQuery Mobile library -->
<script src="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<!-- CSS -->
<link rel="stylesheet" href="css/style.css">
<!-- google fonts -->
<link href="https://fonts.googleapis.com/css?family=Lobster" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Comfortaa" rel="stylesheet">
<link rel='stylesheet prefetch' href='http://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900'>
<link rel='stylesheet prefetch' href='http://fonts.googleapis.com/css?family=Montserrat:400,700'>
<link rel='stylesheet prefetch' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>


<title>Login</title>

</head>

<body>

	<%
		Connection con = null;

		PreparedStatement ps = null;

		ResultSet rs = null;

		String driverName = "com.mysql.jdbc.Driver";

		String url = "jdbc:mysql://localhost:3306/capstone";

		String user = "root";

		String password = "root";

		String sql = "select usertype from users";

		try {

			Class.forName(driverName);

			con = DriverManager.getConnection(url, user, password);

			ps = con.prepareStatement(sql);

			rs = ps.executeQuery();
	%>

	<script
		src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
	<script src="js/index.js"></script>

	<br>
	<br>
	<br>
	<div class="form">
		<center>
			<h2 id="formtitle">Financial Reporting Tool Login</h2>
		</center>
		<br> <br>
		<div class="thumbnail">
			<img src="css/themes/images/t1logo.png" />
		</div>
		<form method="post" action="loginValidate.jsp" class="login-form">
			<input type="text" name="name" placeholder="username" /> <input
				type="password" name="password" placeholder="password" />

			<td>Select User Type</td> <select name="usertype">

				<option value="select">select</option>

				<%
					while (rs.next())

						{

							String usertype = rs.getString("usertype");
				%>

				<option value=<%=usertype%>><%=usertype%></option>

				<%
					}

					}

					catch (SQLException sqe)

					{

						out.println("home" + sqe);

					}
				%>
			</select> <br> <br>
			<button type="submit">Log In</button>
		</form>
	</div>
</body>
</html>