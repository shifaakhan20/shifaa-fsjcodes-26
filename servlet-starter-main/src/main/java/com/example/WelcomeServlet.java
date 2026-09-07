package com.example;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import java.io.*;

@WebServlet("/welcome")
public class WelcomeServlet extends GenericServlet {
    
    @Override
    public void service(ServletRequest request, ServletResponse response)
            throws ServletException, IOException {
        
        
        response.setContentType("text/html");
        
        
        String userName = request.getParameter("username");
        
        PrintWriter out = response.getWriter();
        
        out.println("<html><body>");
        if (userName != null && !userName.trim().isEmpty()) {
            out.println("<h1>Welcome, " + userName + "!</h1>");
        } else {
            out.println("<h1>Welcome, Guest!</h1>");
        }
        out.println("</body></html>");
    }
}

