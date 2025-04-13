package com.library;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/AddBookServlet")
public class AddBookServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {

        String title = request.getParameter("title");
        String authorName = request.getParameter("author");
        int quantity = Integer.parseInt(request.getParameter("quantity"));

        try {
            // Get database connection
            Connection conn = DBConnection.getConnection();
            String sql = "INSERT INTO books (title, author, quantity) VALUES (?, ?, ?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, title);
            ps.setString(2, authorName);
            ps.setInt(3, quantity);

            int rows = ps.executeUpdate();

            if (rows > 0) {
                // Book successfully added, set success message
                request.setAttribute("alertMessage", "Book added successfully!");                
            } else {
                // Failure to add book
                request.setAttribute("alertMessage", "Failed to add book! Please try again.");
            }

            ps.close();
            conn.close();

            // Forward to home.jsp to show alert message
            RequestDispatcher dispatcher = request.getRequestDispatcher("home.jsp");
            dispatcher.forward(request, response); // Forward to home.jsp

        } catch (Exception e) {
            e.printStackTrace();
            // In case of error, show the error message
            request.setAttribute("alertMessage", "Error: " + e.getMessage());
            RequestDispatcher dispatcher = request.getRequestDispatcher("home.jsp");
            dispatcher.forward(request, response); // Forward to home.jsp
        }
    }
}