<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f9f9f9;
        margin: 0;
        padding: 20px;
        display: flex;
        flex-direction: column;
        align-items: center;
    }
    h3 {
        color: #333;
        text-align: center;
        background-color: #e7f3fe;
        border: 1px solid #b3d4fc;
        padding: 10px;
        border-radius: 4px;
        width: 50%;
    }
    table {
        margin-top: 20px;
    }
    td {
        padding: 10px;
    }
    button {
        padding: 10px 20px;
        border: none;
        background-color: #4CAF50;
        color: white;
        cursor: pointer;
        text-decoration: none;
        border-radius: 4px;
    }
    button:hover {
        background-color: #45a049;
    }
    a {
        text-decoration: none;
    }
</style>
</head>
<body>
    <%
    String message = (String)request.getAttribute("message");
    if (message != null) {
    %>
    <h3><%=message%></h3>
    <%
    }
    %>
    <table>
        <tr>
            <td><a href="home.jsp"><button>HOME</button></a></td>
            <td><a href="home.jsp"><button>LOGIN</button></a></td>
        </tr>
    </table>
</body>
</html>
