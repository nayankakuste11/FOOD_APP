<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Food Application - Login</title>
<style>
body {
	font-family: 'Helvetica Neue', Arial, sans-serif;
	background: url('background-food.jpg') no-repeat center center fixed;
	background-size: cover;
	margin: 0;
	padding: 0;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
}

.container {
	background-color: rgba(255, 255, 255, 0.95);
	padding: 40px;
	border-radius: 10px;
	box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
	text-align: center;
	max-width: 400px;
	width: 100%;
}

h1 {
	margin-bottom: 30px;
	font-size: 28px;
	color: #333;
}

input[type="email"], input[type="password"] {
	width: 100%;
	padding: 14px;
	margin: 10px 0;
	border: 2px solid #ddd;
	border-radius: 5px;
	box-sizing: border-box;
	font-size: 18px;
	transition: border-color 0.3s ease;
}

input[type="email"]:focus, input[type="password"]:focus {
	border-color: #28a745;
}

input[type="submit"] {
	background-color: #28a745;
	color: white;
	border: none;
	padding: 14px 20px;
	font-size: 18px;
	cursor: pointer;
	transition: background-color 0.3s ease;
	border-radius: 5px;
	width: 100%;
}

input[type="submit"]:hover {
	background-color: #218838;
}

.signup-link {
	margin-top: 20px;
	display: block;
	color: #007bff;
	text-decoration: none;
	font-size: 16px;
}

.signup-link:hover {
	text-decoration: underline;
}
</style>
</head>
<body>

	<div class="container">
		<%
		String message = (String) request.getAttribute("message");
		if (message != null) {
		%>
		<h3><%=message%></h3>
		<%
		}
		%>
		<h1>Login</h1>
		<form action="login" method="post">
			<input type="email" name="email" placeholder="Enter your email"
				required> <input type="password" name="password"
				placeholder="Enter your password" required> <input
				type="submit" value="Login">
		</form>
		<a class="signup-link" href="signup.jsp">Don't have an account?
			Sign up here</a>
	</div>
</body>
</html>
