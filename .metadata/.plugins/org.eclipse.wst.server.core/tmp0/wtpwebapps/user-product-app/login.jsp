<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style type="text/css">
* {
	font-family: Arial, Helvetica, sans-serif;
}

body {
	 		background:url(amazing.jpg);
            height: 100vh;
            background-position: center;
            background-size: cover;
}

form {
			width: 380px;
            height: auto;
            margin-left: auto;
            margin-right: auto;
            margin-top: 15%;
            border-radius: 10px;
            box-shadow: 0 10px 20px silver;
            background-color: rgba(0, 0, 0, 0.3);
            overflow: hidden;
}
h2 {
	text-align: center;
	text-transform: uppercase;
	color: #fff;
	padding-bottom: 20px;
	border-bottom: 1px solid silver;
}

.container {
	padding: 16px;
}

input[type=tel], input[type=password] {
	width: 100%;
	margin: 8px 0;
	padding: 12px 20px;
	box-sizing: border-box;
	background-color: #f1f1f1;
	border: 1px solid #ccc;
}

input[type=tel]:focus, input[type=password]:focus {
	outline: none;
	background-color: #d3d3d3;
}
#login-btn {
	font-size: 15px;
	font-weight: bold;
	width: 100%;
	margin: 8px 0;
	padding: 12px 20px;
	text-transform: uppercase;
	background-image: linear-gradient(to right, #eb3349, #f45c43);
	border: none;
	cursor: pointer;
	transition: 0.3s;
	color: #fff;
}

#login-btn:hover {
	background-image: linear-gradient(to right, #f45c43, #eb3349);
}

.member {
	padding: 16px;
	text-align: center;
}

#signup-link {
	color: #f45c43;
	text-decoration: none;
	cursor: pointer;
}

#signup-link:hover {
	color: #fff;
}
</style>
</head>
<body>
	<%
		String message = (String) request.getAttribute("msg");

		if (message != null) {
	%>
	<h2>
		<%=message%></h2>
	<%
		}
	%>


	<form action="login" method="post">

		<h2>Login Form</h2>
		<div class="container">
			<input type="tel" name="ph" placeholder="Enter your phone number"><br>
			<input type="password" name="ps" placeholder="Enter your password"><br>
			<input id="login-btn" type="submit" value="Login">
		</div>
		<div class="member">
			<a href="register.jsp" id="signup-link">Click here to register</a>
		</div>

	</form>
	
</body>
</html>