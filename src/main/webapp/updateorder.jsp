<%@page import="com.ty.jsp_application_eb8_prc.dto.Items"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Order</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f9f9f9;
        margin: 0;
        padding: 20px;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }
    table {
        background-color: #fff;
        border-collapse: collapse;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        padding: 20px;
        border-radius: 8px;
    }
    td {
        padding: 10px;
    }
    input[type="text"],
    input[type="number"] {
        width: 100%;
        padding: 8px;
        margin: 4px 0;
        box-sizing: border-box;
        border: 1px solid #ccc;
        border-radius: 4px;
    }
    input[type="submit"] {
        background-color: #4CAF50;
        color: white;
        padding: 10px 20px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        margin-top: 10px;
    }
    input[type="submit"]:hover {
        background-color: #45a049;
    }
</style>
</head>
<body>
    <%
    Items items = (Items) request.getAttribute("items");
    %>
    <form action="editorder" method="post">
        <table>
            <tr>
                <td>Id :</td>
                <td><input type="number" name="id" value="<%=items.getId()%>" readonly="readonly"></td>
            </tr>
            <tr>
                <td>Name :</td>
                <td><input type="text" name="name" value="<%=items.getName()%>" readonly="readonly"></td>
            </tr>
            <tr>
                <td>Description :</td>
                <td><input type="text" name="description" value="<%=items.getDescription()%>" readonly="readonly"></td>
            </tr>
            <tr>
                <td>Price :</td>
                <td><input type="number" name="price" value="<%=items.getPrice()%>" readonly="readonly"></td>
            </tr>
            <tr>
                <td>Offer :</td>
                <td><input type="text" name="offer" value="<%=items.getOffer()%>" readonly="readonly"></td>
            </tr>
            <tr>
                <td>Quantity :</td>
                <td><input type="number" name="quantity" value="<%=items.getQuantity()%>"></td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center;"><input type="submit" value="Update"></td>
            </tr>
        </table>
    </form>
</body>
</html>
