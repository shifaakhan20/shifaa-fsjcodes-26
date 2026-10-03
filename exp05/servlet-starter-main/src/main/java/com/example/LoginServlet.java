package com.example;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        try{
            //load the JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");
            //get the connection to the database
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/userauth", "root", "ShifaaSQL20@");
            //create a statement
            Statement stmt = conn.createStatement();
            //run query
            //get the result set
            ResultSet rs = stmt.executeQuery("SELECT * FROM `users` WHERE `email` = '"+email+"' AND `password` = '"+password+"'"    );
            if(rs.next()){
                HttpSession session = request.getSession();
                session.setAttribute("username", rs.getString("name"));
                session.setAttribute("useremail", rs.getString("email"));
                response.sendRedirect("Dashboard.jsp");
            }else{
                
                response.sendRedirect("Login.jsp?error=Invalid email or password");
            }
        }catch(Exception e){
            
            System.out.println("Error: "+e.getMessage());
        }
    }
}
