<%@page import="com.ty.jsp_application_eb8_prc.dto.Items"%>
<%@page import="com.ty.jsp_application_eb8_prc.dto.FoodOrder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Food Order Confirmation</title>
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

    .total {
        text-align: right;
        margin-top: 20px;
    }

    button {
        background-color: #4CAF50;
        color: white;
        padding: 10px 20px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        float: right;
    }

    button:hover {
        background-color: #45a049;
    }
</style>
</head>
<body>
    <div class="container">
        <%
        String message = (String) request.getAttribute("message");
        FoodOrder foodOrder = (FoodOrder) request.getAttribute("foodorder");
        long payable_amount = 0;
        %>
        <h1><%=message%></h1>
        <table>
            <tr>
                <td>Name :</td>
                <td><%=foodOrder.getName()%></td>
            </tr>
            <tr>
                <td>Address :</td>
                <td><%=foodOrder.getAddress()%></td>
            </tr>
            <tr>
                <td>Email :</td>
                <td><%=foodOrder.getEmail()%></td>
            </tr>
            <tr>
                <td>Phone :</td>
                <td><%=foodOrder.getPhone()%></td>
            </tr>
        </table>
        <table>
            <tr>
                <th>Name</th>
                <th>Description</th>
                <th>Price</th>
                <th>Offer</th>
                <th>Quantity</th>
                <th>Total Amount</th>
            </tr>
            <%
            for (Items items : foodOrder.getItems()) {
            %>
            <tr>
                <td><%=items.getName()%></td>
                <td><%=items.getDescription()%></td>
                <td><%=items.getPrice()%></td>
                <td><%=items.getOffer()%></td>
                <td><%=items.getQuantity()%></td>
                <td><%=items.getPrice() * items.getQuantity()%></td>
                <%
                payable_amount += items.getPrice() * items.getQuantity();
                %>
            </tr>
            <%
            }
            %>
        </table>
        <div class="total">
            <h3>Amount to be paid : <%=payable_amount%></h3>
            <form action="endof">
                <button type="submit">OK</button>
            </form>
        </div>
    </div>
</body>
</html>
