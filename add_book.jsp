<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Book</title>
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
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0px 4px 8px rgba(0,0,0,0.2);
            text-align: center;
        }
        input[type="text"], input[type="number"] {
            width: 90%;
            height: 30px;
            padding: 10px;
            margin: 10px 0;
            border-radius: 10px;
            border: 1px solid #ccc;
        }
        input[placeholder]{
        	font-size:18px;
        }
        .btn {
            width: auto%;
            padding: 12px;
            font-size: 18px;
            background-color: green;
            color: white;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            margin-top:20px;
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

<div class="form-container">
    <h1>Add New Book</h1>

    <form action="AddBookServlet" method="post">
        <input type="text" name="title" placeholder="Book Title" required />
        <input type="text" name="author" placeholder="Author Name" required />
        <input type="number" name="quantity" placeholder="Quantity" required />

        <button type="submit" class="btn">Add Book</button>
        <a href="home.jsp" class="back-btn">⬅ Back to Home</a>
    </form>
</div>

</body>
</html>