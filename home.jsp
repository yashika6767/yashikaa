<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>HomePage</title>
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
        .dashboard {
        	width:  400px;
            background-color: white;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0px 4px 8px rgba(0,0,0,0.2);
            text-align: center;
        }
        h1{
            margin-bottom: 30px;
        }
        .btn {
            display: block;
            width: 95%;
            margin: 10px 0;
            padding: 12px;
            font-size: 22px;
            background-color: green;
            color: white;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            text-decoration: none;
        }
        .btn:hover {
            background-color: #45a049;
        }
        .logout-btn {
        	width:50%;
        	margin-top:30px;
        	margin-left:105px;
            background-color: red;
        }
        .logout-btn:hover {
            background-color: #d32f2f;
        }
    </style>

    <script type="text/javascript">
        function showAlert(message) {
            alert(message);
        }
    </script>

</head>
<body>

<%
    String username = (String) session.getAttribute("username");

    // Check if there is any alert message set in the request
    String alertMessage = (String) request.getAttribute("alertMessage");
    if (alertMessage != null) {
%>
    <script type="text/javascript">
        // Display the alert message if it's set in the request
        showAlert("<%= alertMessage %>");
    </script>
<%
    }
%>

<div class="dashboard">
    <h1>Welcome User 👋</h1>

    <a class="btn" href="add_book.jsp">Insert Book</a>
    <a class="btn" href="update_book.jsp">Update Book</a>
    <a class="btn" href="delete_book.jsp">Delete Book</a>
    <a class="btn" href="view_books.jsp">View All Books</a>

    <!-- Logout Button -->
    <form action="logout.jsp" method="post">
        <button type="submit" class="btn logout-btn">Logout</button>
    </form>
</div>
</body>
</html>
