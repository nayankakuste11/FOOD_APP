<%@page import="com.ty.jsp_application_eb8_prc.dto.Items"%>
<%@page import="com.ty.jsp_application_eb8_prc.dto.FoodOrder"%>
<%@page import="com.ty.jsp_application_eb8_prc.dto.Menu"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Food Application - Menu and Orders</title>
<style>
body {
    font-family: 'Helvetica Neue', Arial, sans-serif;
    background: url('background-food.jpg') no-repeat center center fixed; 
    background-size: cover;
    margin: 0;
    padding: 0;
    display: flex;
    flex-direction: column;
    align-items: center;
    height: 100vh;
    color: #333;
}

.container {
    background-color: rgba(255, 255, 255, 0.9);
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
    margin-top: 30px;
    width: 90%;
    max-width: 1000px;
}

h1, h4 {
    text-align: center;
    color: #333;
}

table {
    width: 100%;
    border-collapse: collapse;
    margin: 20px 0;
}

th, td {
    border: 1px solid #ddd;
    padding: 12px;
    text-align: center;
}

th {
    background-color: #f2f2f2;
}

tr:nth-child(even) {
    background-color: #f9f9f9;
}

tr:hover {
    background-color: #f1f1f1;
}

button {
    background-color: #007bff;
    color: white;
    border: none;
    padding: 10px 20px;
    font-size: 16px;
    cursor: pointer;
    transition: background-color 0.3s ease;
    border-radius: 5px;
    margin: 20px 0;
    display: block;
    margin-left: auto;
    margin-right: auto;
}

button:hover {
    background-color: #0056b3;
}
</style>
</head>
<body>
    <div class="container">
        <h1>Menu</h1>
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
            </tr>
            <%
            if (menus != null) {
                for (Menu menu : menus) {
            %>
            <tr>
                <td><%=menu.getId()%></td>
                <td><%=menu.getName()%></td>
                <td><%=menu.getDescription()%></td>
                <td><%=menu.getPrice()%></td>
                <td><%=menu.getOffer()%></td>
            </tr>
            <%
                }
            } else {
            %>
            <tr>
                <td colspan="5">No menu items available</td>
            </tr>
            <%
            }
            %>
        </table>

        <h4>Previous Orders</h4>
        <%
        FoodOrder foodOrder = (FoodOrder) request.getAttribute("foodorder");
        %>
        <%
        if (foodOrder != null && foodOrder.getItems() != null && !foodOrder.getItems().isEmpty()) {
        %>
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
            </tr>
            <%
                }
            %>
        </table>
        <%
        } else {
        %>
        <p>No previous orders available</p>
        <%
        }
        %>
        <a href="home.jsp"><button>Staff Login</button></a>
    </div>
</body>
</html>
