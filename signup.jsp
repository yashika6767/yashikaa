<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Signup Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            height: 100vh;
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            background-color: #e0f7fa;
        }
        .signup-container {
            background-color: #ffffff;
            padding: 30px 40px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.2);
            text-align: center;
        }
        h2 {
            margin-bottom: 20px;
        }
        input{
            width: 90%;
            height: 32px;
            padding: 10px;
            margin: 10px 0;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 20px;
        }
        select{
        	width: 95%;
        	height: 37px;
            padding: 10px;
            margin: 10px 0;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 20px;
        }
        .btn {
            background-color: green;
            color: white;
            padding: 12px 25px;
            font-size: 20px;
            border: none;
            border-radius: 20px;
            margin-top: 15px;
            cursor: pointer;
        }
        .btn:hover {
            background-color: #45a049;
        }
        a {
            display: block;
            margin-top: 20px;
            color: #555;
            text-decoration: none;
        }
    </style>
</head>
<body>

<div class="signup-container">
    <h2>Create an Account</h2>
    <form action="SignupServlet" method="post">
        <input type="text" name="username" placeholder="Enter Username" required>
        <input type="password" name="password" placeholder="Enter Password" required>
        <button class="btn" type="submit">Signup</button>
        <a href="index.jsp">Back to Home</a>
    </form>
</div>

</body>
</html>