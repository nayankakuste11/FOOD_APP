<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Food Application - Signup</title>
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
    background-color: rgba(255, 255, 255, 0.9);
    padding: 40px 30px;
    border-radius: 10px;
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
    text-align: center;
    max-width: 500px;
    width: 100%;
}

h1 {
    margin-bottom: 30px;
    font-size: 24px;
    color: #333;
}

table {
    width: 100%;
    margin: 0 auto;
    border-collapse: collapse;
}

td {
    padding: 10px;
}

input[type="text"], input[type="email"], input[type="password"], input[type="tel"], input[type="submit"], select {
    width: 100%;
    padding: 12px;
    margin: 10px 0;
    border: 1px solid #ccc;
    border-radius: 5px;
    box-sizing: border-box;
    font-size: 16px;
}

input[type="submit"] {
    background-color: #28a745;
    color: white;
    border: none;
    padding: 12px 20px;
    font-size: 18px;
    cursor: pointer;
    transition: background-color 0.3s ease;
    border-radius: 5px;
}

input[type="submit"]:hover {
    background-color: #218838;
}
</style>
</head>
<body>
    <div class="container">
    <% String message = (String)request.getAttribute("messageinvalidemail"); %>
    <% if(message != null) { %>
    <h1><%= message %></h1>
    <% } %>
    
    <% String message1 = (String)request.getAttribute("message"); %>
    <% if(message1 != null) { %>
    <h1><%= message1 %></h1>
    <% } %>
        <h1>Signup</h1>
        <form action="signup" method="post">
            <table>
                <tr>
                    <td>Name :</td>
                    <td><input type="text" name="name" placeholder="Enter your name" required></td>
                </tr>
                <tr>
                    <td>Email :</td>
                    <td><input type="email" name="email" placeholder="Enter your email" required></td>
                </tr>
                <tr>
                    <td>Password :</td>
                    <td><input type="password" name="password" placeholder="Enter your password" required></td>
                </tr>
                <tr>
                    <td>Phone :</td>
                    <td><input type="tel" name="phone" placeholder="Enter your phone" required></td>
                </tr>
                <tr>
                    <td>Address :</td>
                    <td><input type="text" name="address" placeholder="Enter your address" required></td>
                </tr>
                <tr>
                    <td>Role :</td>
                    <td><select name="role" required>
                            <option value="" disabled selected>Select</option>
                            <option value="manager">Manager</option>
                            <option value="staff">Staff</option>
                            <option value="customer">Customer</option>
                    </select></td>
                </tr>
                <tr>
                    <td colspan="2"><input type="submit" value="Save"></td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
