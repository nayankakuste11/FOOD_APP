<%@page import="com.ty.jsp_application_eb8_prc.dto.User"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.ty.jsp_application_eb8_prc.dto.Items"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Food Order Management</title>
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

    th {
        background-color: #f2f2f2;
    }

    th:first-child, td:first-child {
        width: 20%;
    }

    td:first-child {
        font-weight: bold;
    }

    button {
        background-color: #4CAF50;
        color: white;
        padding: 8px 16px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        text-decoration: none;
    }

    button:hover {
        background-color: #45a049;
    }

    input[type="text"],
    input[type="email"],
    input[type="tel"] {
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
        List<Items> list = (List) request.getAttribute("list");
        User user=(User)request.getAttribute("user");
        %>
        <h1>Food Order Management</h1>
        <a href="foodorder"><button>+ ADD</button></a>
        <table>
            <tr>
                <th>Id</th>
                <th>Name</th>
                <th>Description</th>
                <th>Price</th>
                <th>Offer</th>
                <th>Quantity</th>
                <th>Payable Amount</th>
                <th>Update Order</th>
                <th>Delete Order</th>
            </tr>
            <%
            for (Items items : list) {
            %>
            <tr>
                <td><%=items.getId()%></td>
                <td><%=items.getName()%></td>
                <td><%=items.getDescription()%></td>
                <td><%=items.getPrice()%></td>
                <td><%=items.getOffer()%></td>
                <td><%=items.getQuantity()%></td>
                <td><%=items.getPrice() * items.getQuantity()%></td>
                <td><a href="updateorder?id=<%=items.getId()%>"><button>UPDATE</button></a></td>
                <td><a href="deleteorder?id=<%=items.getId()%>"><button>DELETE</button></a></td>
            </tr>
            <%
            }
            %>
        </table>
        <form action="print">
            <table>
                <tr>
                    <td>Name :</td>
                    <td><input type="text" name="name" value="<%=user.getName() %>" placeholder="Enter the customer name"></td>
                </tr>
                <tr>
                    <td>Email :</td>
                    <td><input type="email" name="email" value="<%=user.getEmail() %>" placeholder="Enter the customer email"></td>
                </tr>
                <tr>
                    <td>Address :</td>
                    <td><input type="text" name="address" value="<%=user.getAddress() %>" placeholder="Enter the customer address"></td>
                </tr>
                <tr>
                    <td>Phone :</td>
                    <td><input type="tel" name="phone" value="<%=user.getPhone() %>" placeholder="Enter the customer phone"></td>
                </tr>
                <tr>
                    <td colspan="2"><input type="submit" value="PRINT RECEIPT"></td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
