<%@page import="com.ty.jsp_application_eb8_prc.dto.Menu"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Menu List</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f9f9f9;
        margin: 0;
        padding: 20px;
    }
    table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 20px;
    }
    th, td {
        padding: 10px;
        text-align: left;
        border-bottom: 1px solid #ddd;
    }
    th {
        background-color: #f2f2f2;
    }
    tr:hover {
        background-color: #f5f5f5;
    }
    button {
        padding: 5px 10px;
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
    List<Menu> menus = (List) request.getAttribute("menus");
    %>
    <table>
        <tr>
            <th>Id</th>
            <th>Name</th>
            <th>Description</th>
            <th>Price</th>
            <th>Offer</th>
            <th>Order</th>
        </tr>
        <%
        for (Menu menu : menus) {
        %>
        <tr>
            <td><%=menu.getId()%></td>
            <td><%=menu.getName()%></td>
            <td><%=menu.getDescription()%></td>
            <td><%=menu.getPrice()%></td>
            <td><%=menu.getOffer()%></td>
            <td><a href="order?id=<%=menu.getId()%>"><button>ADD</button></a></td>
        </tr>
        <%
        }
        %>
    </table>
</body>
</html>
