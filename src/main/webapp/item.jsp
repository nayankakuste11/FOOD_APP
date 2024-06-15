<%@page import="com.ty.jsp_application_eb8_prc.dto.Menu"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Menu Confirmation</title>
<style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-color: #f5f5f5;
    }

    .container {
        width: 80%;
        margin: 20px auto;
        background-color: #fff;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    h1 {
        color: #333;
        text-align: center;
    }

    form {
        margin-top: 20px;
    }

    table {
        width: 100%;
        border-collapse: collapse;
        margin-bottom: 20px;
    }

    th, td {
        padding: 10px;
        border-bottom: 1px solid #ddd;
        text-align: left;
    }

    input[type="text"],
    input[type="number"] {
        padding: 8px;
        width: 100%;
        border-radius: 4px;
        border: 1px solid #ccc;
    }

    input[type="submit"] {
        background-color: #4CAF50;
        color: white;
        padding: 10px 20px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }

    input[type="submit"]:hover {
        background-color: #45a049;
    }
</style>
</head>
<body>
    <div class="container">
        <%
        Menu menu = (Menu) request.getAttribute("menu");
        %>
        <h1>Menu Confirmation</h1>
        <form action="confirm" method="post">
            <table>
                <tr>
                    <td>Name :</td>
                    <td><input type="text" name="name" value=<%=menu.getName()%> readonly="readonly"></td>
                </tr>
                <tr>
                    <td>Description :</td>
                    <td><input type="text" name="description" value=<%=menu.getDescription()%> readonly="readonly"></td>
                </tr>
                <tr>
                    <td>Price :</td>
                    <td><input type="number" name="price" value=<%=menu.getPrice()%> readonly="readonly"></td>
                </tr>
                <tr>
                    <td>Offer :</td>
                    <td><input type="text" name="offer" value=<%=menu.getOffer()%> readonly="readonly"></td>
                </tr>
                <tr>
                    <td>Quantity :</td>
                    <td><input type="number" name="quantity" placeholder="Enter the quantity"></td>
                </tr>
                <tr>
                    <td colspan="2"><input type="submit" value="Confirm"></td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
