<%@ page import="java.sql.*, java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View All Books</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f1f1f1;
            margin: 0;
            padding: 20px;
        }
        h1 {
            text-align: center;
            margin-bottom: 30px;
        }
        table {
            margin: auto;
            border-collapse: collapse;
            width: 80%;
            background-color: white;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        th, td {
            padding: 12px 18px;
            text-align: center;
            border-bottom: 1px solid #ddd;
        }
        th {
            background-color: #007BFF;
            color: white;
        }
        tr:hover {
            background-color: #f2f2f2;
        }
        a.back-btn {
            display: block;
            width: 150px;
            text-align: center;
            margin: 20px auto;
            padding: 10px;
            background-color: green;
            color: white;
            text-decoration: none;
            border-radius: 6px;
        }
        a.back-btn:hover {
            background-color: darkgreen;
        }
    </style>
</head>
<body>

<h1>All Books 📚</h1>

<%
    Connection conn = null;
    Statement stmt = null;
    ResultSet rs = null;

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/librarydb", "root", "yashika05");
        stmt = conn.createStatement();
        String sql = "SELECT * FROM books";
        rs = stmt.executeQuery(sql);
%>

<table>
    <tr>
        <th>Book ID</th>
        <th>Title Of Book</th>
        <th>Author Name</th>
        <th>Quantity</th>
    </tr>

<%
    while (rs.next()) {
%>
    <tr>
        <td><%= rs.getInt("id") %></td>
        <td><%= rs.getString("title") %></td>
        <td><%= rs.getString("author") %></td>
        <td><%= rs.getInt("quantity") %></td>
    </tr>
<%
    }
%>

</table>

<%
    } catch (Exception e) {
        out.println("<p style='color:red; text-align:center;'>Error: " + e.getMessage() + "</p>");
    } finally {
        try { if (rs != null) rs.close(); } catch (Exception e) {}
        try { if (stmt != null) stmt.close(); } catch (Exception e) {}
        try { if (conn != null) conn.close(); } catch (Exception e) {}
    }
%>
<a href="home.jsp" class="back-btn">⬅ Back to Home</a>
</body>
</html>