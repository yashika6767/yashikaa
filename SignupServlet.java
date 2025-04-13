package com.library;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/SignupServlet")
public class SignupServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        try {
            Connection conn = DBConnection.getConnection();
            
            // Prepare SQL query to insert user details into the database
            String sql = "INSERT INTO users (username, password) VALUES (?, ?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, password);

            // Execute the query and check if the insertion was successful
            int rows = ps.executeUpdate();

            if (rows > 0) {
                HttpSession session = request.getSession();
                session.setAttribute("username", username);
                
                response.sendRedirect("home.jsp");
            } else {
                // In case signup fails
                response.getWriter().println("<script>alert('Signup failed! Try again.'); window.location='signup.jsp';</script>");
            }

            ps.close();
            conn.close();

        } catch (Exception e) {
            e.printStackTrace();
            // Display error message
            response.getWriter().println("<script>alert('Error: " + e.getMessage() + "'); window.location='signup.jsp';</script>");
        }
    }
}