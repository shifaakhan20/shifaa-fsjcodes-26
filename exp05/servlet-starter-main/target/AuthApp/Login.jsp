<%@ page language="java" %>
<%
    if(session.getAttribute("useremail") != null){
        response.sendRedirect("Dashboard.jsp");
    }
%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <style>
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        body {
            background-color: #f4f7f6;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .login-container {
            background-color: #ffffff;
            padding: 40px;
            border-radius: 8px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 400px;
        }

        h2 {
            margin-bottom: 24px;
            color: #333333;
            text-align: center;
            font-size: 28px;
        }

        .error-message {
            background-color: #ffebee;
            color: #c62828;
            padding: 12px;
            border-radius: 4px;
            margin-bottom: 20px;
            font-size: 14px;
            border-left: 4px solid #ef5350;
        }

        .input-group {
            margin-bottom: 20px;
        }

        label {
            display: block;
            margin-bottom: 8px;
            color: #666666;
            font-size: 14px;
            font-weight: 600;
        }

        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 12px;
            border: 1px solid #cccccc;
            border-radius: 4px;
            font-size: 16px;
            transition: border-color 0.3s ease;
        }

        input[type="text"]:focus,
        input[type="password"]:focus {
            border-color: #ff4081;
            outline: none;
        }

        button[type="submit"] {
            width: 100%;
            padding: 12px;
            background-color: #ff4081;
            color: white;
            border: none;
            border-radius: 4px;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
            transition: background-color 0.3s ease;
            margin-bottom: 16px;
        }

        button[type="submit"]:hover {
            background-color: #f50057;
        }

        .back-link {
            display: block;
            text-align: center;
            color: #757575;
            text-decoration: none;
            font-size: 14px;
            transition: color 0.3s ease;
        }

        .back-link:hover {
            color: #ff4081;
        }
    </style>
</head>
<body>

    <div class="login-container">
        <h2>Login Page</h2>
        
        <form action="login" method="post">
            <%
                if(request.getParameter("error") != null){
            %>
            <div class="error-message">
                <p><%= request.getParameter("error") %></p>
            </div>
            <%
                }
            %>
            
            <div class="input-group">
                <label for="email">Email ID</label>
                <input type="text" name="email" id="email" placeholder="Enter your email" required>
            </div>
            
            <div class="input-group">
                <label for="password">Password</label>
                <input type="password" name="password" id="password" placeholder="Enter your password" required>
            </div>
            
            <button type="submit">Login</button>
            <a href="index.jsp" class="back-link">Back</a>
        </form>
    </div>

</body>
</html>


