<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="cyan">
	
	<form action="reg" method="post">
		Name:<input type="text" name="nm"><br>
		age:<input type="number" name="age"><br>
		gender:<input type="radio" name="gender" value="Male">Male
		<input type="radio" name="gender" value="Female">Female<br>
		Phone:<input type="tel" name="ph"><br>
		Email:<input type="email" name="em"><br>
		Password:<input type="password" name="ps"><br>
		<input type="submit" name="Register"><br>
	</form>

</body>
</html>