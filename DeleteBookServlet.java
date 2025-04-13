package com.library;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/DeleteBookServlet")
public class DeleteBookServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String bookId = request.getParameter("id");
        String bookTitle = request.getParameter("title");

        try {
            // Get database connection
            Connection conn = DBConnection.getConnection();
            String sql = "DELETE FROM books WHERE id = ? AND title = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, bookId);
            ps.setString(2, bookTitle);

            int rows = ps.executeUpdate();

            if (rows > 0) {
                // Successfully deleted
                request.setAttribute("alertMessage", "Book deleted successfully!");
                request.getRequestDispatcher("home.jsp").forward(request, response);
            } else {
                // No book found to delete
                request.setAttribute("alertMessage", "No book found with the given ID and Title.");
                request.getRequestDispatcher("delete_book.jsp").forward(request, response);
            }

            ps.close();
            conn.close();

        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("alertMessage", "Error: " + e.getMessage());
            request.getRequestDispatcher("delete_book.jsp").forward(request, response);
        }
    }
}