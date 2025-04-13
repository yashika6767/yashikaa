<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login</title>
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
        .login-container {
            background-color: #ffffff;
            padding: 30px 40px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.2);
            text-align: center;
        }
        h2 {
            margin-bottom: 20px;
            font-size: 30px;
        }
        input {
            width: 90%;
            height:30px;
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
            border-radius: 15px;
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

<div class="login-container">
    <h2>Welcome Admin/User😉</h2>
    <form action="LoginServlet" method="post">
        <input type="text" name="username" placeholder="Enter Username" required>
        <input type="password" name="password" placeholder="Enter Password" required>
        <button class="btn" type="submit">Login</button>
        <a href="signup.jsp">Create an Account</a>
    </form>
</div>

</body>
</html>