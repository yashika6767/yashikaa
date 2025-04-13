<%@ page contentType="text/html; charset=ISO-8859-1" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login or Signup</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            margin: 0;
            background-color: #f4f4f4;
        }
        .container {
            text-align: center;
            padding: 40px;
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }
        h2 {
            margin-bottom: 20px;
            color: black;
        }
        h3 {
            margin-bottom: 30px;
            color: black;
        }
        .button {
            padding: 12px 30px;
            margin: 10px;
            font-size: 20px;
            cursor: pointer;
            background-color: green;
            color: white;
            border: none;
            border-radius: 5px;
            text-decoration: none;
        }
        .button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Welcome to Library Management System.</h2>
        <h3>Would you like to Login or Signup ?</h3>

        <!-- Buttons for login and signup -->
        <a href="login.jsp"><button class="button">Login</button></a>
        <a href="signup.jsp"><button class="button">Signup</button></a>
    </div>
</body>
</html>