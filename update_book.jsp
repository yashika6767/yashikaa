<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Book</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f1f1f1;
            margin: 0;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .form-container {
            background-color: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0px 4px 8px rgba(0,0,0,0.2);
            text-align: center;
            width: 50%;
        }
        .form-container input {
            width: 80%;
            height:26px;
            padding: 10px;
            margin: 10px 0;
            font-size: 18px;
            border-radius: 10px;
        }
        .btn {
            padding: 12px;
            font-size: 18px;
            background-color: green;
            color: white;
            border: none;
            border-radius: 10px;
            cursor: pointer;
        }
        .btn:hover {
            background-color: #45a049;
        }
        a.back-btn {
            display: block;
            width: 150px;
            text-align: center;
            margin: 20px auto;
            padding: 10px;
            color: black;
            text-decoration: none;
            border-radius: 6px;
        }
    </style>
</head>
<body>

<%
    // Displaying alert messages if present
    String alertMessage = (String) request.getAttribute("alertMessage");
    if (alertMessage != null) {
%>
    <script type="text/javascript">
        alert("<%= alertMessage %>");
    </script>
<%
    }
%>

<div class="form-container">
    <h1>Update Book Details</h1>
    <form action="UpdateBookServlet" method="POST">
        <input type="text" name="bookId" placeholder="Enter Book ID to Update" required><br>
        <input type="text" name="title" placeholder="Enter New Title" required><br>
        <input type="text" name="author" placeholder="Enter New Author Name" required><br>
        <input type="number" name="quantity" placeholder="Enter New Quantity" required><br>
        <button type="submit" class="btn">Update Book</button>
        <a href="home.jsp" class="back-btn">⬅ Back to Home</a>
    </form>
</div>
</body>
</html>