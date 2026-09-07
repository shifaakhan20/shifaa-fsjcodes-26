package com.example;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/add")
public class AdditionServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Set response content type
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        out.println("<html><body>");
        try {
            // Read parameters from request string
            String n1 = request.getParameter("num1");
            String n2 = request.getParameter("num2");

            // Convert String parameters to numbers
            double num1 = Double.parseDouble(n1);
            double num2 = Double.parseDouble(n2);
            double sum = num1 + num2;

            // Display the result
            out.println("<h2>Addition Result</h2>");
            out.println("<p>" + num1 + " + " + num2 + " = <strong>" + sum + "</strong></p>");
        } catch (NumberFormatException e) {
            out.println("<h2>Error: Please enter valid numeric values.</h2>");
        }
        
        out.println("</body></html>");
    }
}
