<%@page import="org.jsp.userProductApp.dto.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

nav {
	width: 100%;
	height: 75px;
	line-height: 75px;
	padding: 0px 100px;
	position: fixed;
	background-color: rgba(0, 0, 0, 0.3);
}

nav .logo p {
	font-size: 30px;
	font-weight: bold;
	float: left;
	color: white;
	letter-spacing: 1.5px;
	cursor: pointer;
}

nav ul {
	float: right;
}

nav li {
	display: inline-block;
	list-style: none;
}

nav li a {
	font-size: 18px;
	padding: 0px 30px;
	color: white;
	text-decoration: none;
}

nav li a:hover {
	color: #ff8c69;
	transition: all 0.4s ease 0s;
}

.content-items{
	width: 100%;
	height: 100vh;
	padding:100px;
	background:url(wallpaper.jpg);
	background-size: cover;
	background-position: center;
	font-size: 30px;
}
.content-items h2{
	text-align: center;
	padding:5px;
	color:white;
}
.block{
	padding:5px;
	border: 3px solid white;
	width:30%;
}
</style>
</head>
<body>

	<%
		User user = (User) session.getAttribute("user");
		if (user != null) {
	%>

	<nav>
		<div class="logo">
			<p>Shopping Kart</p>
		</div>
		
		<ul>
			<li><a href="viewUser.jsp">View Profile</a></li>
			<li><a href="editUser.jsp">Edit Profile</a></li>
			<li><a href="delete">Delete Profile</a></li>
			<li><a href="logout">Logout</a></li>
		</ul>
	</nav>

	<div class="content-items">
		<h2>
			Welcome Mr.<%=user.getName()%></h2>
		<div class="block">	
		<h3>
			<a href="addProduct.jsp">Add Products</a>
		</h3>
		<h3>
			<a href="viewproducts">View Products</a>
		</h3>
		</div>
	</div>
	<%
		} else {
			response.sendRedirect("login.jsp");
		}
	%>

</body>
</html>