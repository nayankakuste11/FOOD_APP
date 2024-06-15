<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Food Application - Add Menu</title>
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

input[type="text"], input[type="number"], input[type="submit"] {
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
        <h1>Add Menu Item</h1>
        <form action="savemenu" method="post">
            <table>
                <tr>
                    <td>Name :</td>
                    <td><input type="text" name="name" placeholder="Enter the name" required></td>
                </tr>
                <tr>
                    <td>Description :</td>
                    <td><input type="text" name="description" placeholder="Enter the description" required></td>
                </tr>
                <tr>
                    <td>Price :</td>
                    <td><input type="number" name="price" placeholder="Enter the price" required></td>
                </tr>
                <tr>
                    <td>Offer :</td>
                    <td><input type="text" name="offer" placeholder="Enter the offer" required></td>
                </tr>
                <tr>
                    <td colspan="2"><input type="submit" value="Save"></td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
