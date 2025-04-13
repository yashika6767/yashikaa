package com.library;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet("/LogoutServlet")
public class LogoutServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Get the session and invalidate it
        HttpSession session = request.getSession(false); // Get existing session, do not create a new one
        if (session != null) {
            session.invalidate(); // Invalidate the session
        }

        // Redirect the user to the index (login) page after logout
        response.sendRedirect("index.jsp"); // or "login.jsp" based on your project
    }
}