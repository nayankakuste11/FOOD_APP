<!DOCTYPE html>
<%@page import="com.ty.jsp_application_eb8_prc.dto.Menu"%>
<%@page import="java.util.List"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Menu List</title>
<style>
    table {
        width: 100%;
        border-collapse: collapse;
    }
    th, td {
        padding: 8px;
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
    }
</style>
</head>
<body>
    <%
    List<Menu> menus = (List)request.getAttribute("menus");
    %>
    <table>
        <tr>
            <td><a href="createmenu.jsp"><button>CREATE MENU</button></a></td>
            <td><a href="home.jsp"><button>LOGOUT</button></a></td>
        </tr>
    </table>
    <table>
        <tr>
            <th>Id</th>
            <th>Name</th>
            <th>Description</th>
            <th>Price</th>
            <th>Offer</th>
            <th>Update</th>
            <th>Delete</th>
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
            <td><a href="update?id=<%=menu.getId()%>"><button>UPDATE</button></a></td>
            <td><a href="delete?id=<%=menu.getId()%>"><button>DELETE</button></a></td>
        </tr>
        <%
        }
        %>
    </table>
</body>
</html>
