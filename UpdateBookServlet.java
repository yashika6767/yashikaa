package com.library;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/UpdateBookServlet")
public class UpdateBookServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {

        // Get book details from the form
        int bookId = Integer.parseInt(request.getParameter("bookId"));
        String title = request.getParameter("title");
        String author = request.getParameter("author");
        int quantity = Integer.parseInt(request.getParameter("quantity"));

        try {
            // Get connection from DB
            Connection conn = DBConnection.getConnection();
            String sql = "UPDATE books SET title = ?, author = ?, quantity = ? WHERE id = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, title);
            ps.setString(2, author);
            ps.setInt(3, quantity);
            ps.setInt(4, bookId);

            int rows = ps.executeUpdate();

            if (rows > 0) {
                // Book successfully updated
                request.setAttribute("alertMessage", "Book updated successfully!");
                RequestDispatcher dispatcher = request.getRequestDispatcher("home.jsp");
                dispatcher.forward(request, response);
            } else {
                // Failure case
                request.setAttribute("alertMessage", "Book not found! Please check the Book ID.");
                RequestDispatcher dispatcher = request.getRequestDispatcher("update_book.jsp");
                dispatcher.forward(request, response);
            }

            ps.close();
            conn.close();

        } catch (Exception e) {
            e.printStackTrace();
            // In case of error, forward with error message
            request.setAttribute("alertMessage", "Error: " + e.getMessage());
            RequestDispatcher dispatcher = request.getRequestDispatcher("update_book.jsp");
            dispatcher.forward(request, response);
        }
    }
}