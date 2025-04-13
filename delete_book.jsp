<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Delete Book</title>
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
        .delete-book-form {
            background-color: white;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0px 4px 8px rgba(0,0,0,0.2);
            text-align: center;
        }
        h1 {
            margin-bottom: 30px;
        }
        .input-field {
            width: 80%;
            padding: 12px;
            margin: 10px 0;
            font-size: 18px;
            border-radius: 6px;
        }
        .btn {
            display: block;
            width: auto%;
            padding: 12px;
            background-color: red;
            color: white;
            font-size: 22px;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            margin-top:20px;
            margin-left:33%;
        }
        .btn:hover {
            background-color: #e53935;
        }
        a.back-btn {
            display: block;
            width: 150px;
            text-align: center;
            margin-top:10px;
            margin-left:28%;
            padding: 10px;
            color: black;
            text-decoration: none;
            border-radius: 6px;
        }
    </style>
</head>
<body>

<div class="delete-book-form">
    <h1>Delete Book</h1>
    <form action="DeleteBookServlet" method="post">
        <input type="text" name="id" class="input-field" placeholder="Enter Book ID" required />
        <input type="text" name="title" class="input-field" placeholder="Enter Book Title" required />
        <button type="submit" class="btn">Delete Book</button>
         <a href="home.jsp" class="back-btn">⬅ Back to Home</a>
    </form>
</div>

</body>
</html>