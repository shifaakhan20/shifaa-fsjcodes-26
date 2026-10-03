<%@ page language="java" %>
<%
    if(session.getAttribute("useremail") == null){
        response.sendRedirect("Login.jsp?error=Please login first");
    }
%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome to the Dashboard!</title>
    <style>
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        body {
            /* Smooth pink gradient background matching the home screen */
            background: linear-gradient(135deg, #ff9a9e 0%, #fecfef 99%, #fecfef 100%);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .dashboard-container {
            background-color: rgba(255, 255, 255, 0.88);
            backdrop-filter: blur(10px);
            padding: 40px;
            border-radius: 16px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
            text-align: center;
            max-width: 450px;
            width: 90%;
            border: 1px solid rgba(255, 255, 255, 0.4);
        }

        .avatar {
            width: 80px;
            height: 80px;
            background-color: #ff4081;
            color: white;
            border-radius: 50%;
            display: flex;
            justify-content: center;
            align-items: center;
            font-size: 32px;
            font-weight: bold;
            margin: 0 auto 20px auto;
            box-shadow: 0 4px 10px rgba(255, 64, 129, 0.2);
        }

        h2 {
            color: #222222;
            font-size: 28px;
            margin-bottom: 8px;
            font-weight: 700;
        }

        h4 {
            color: #ff4081;
            font-size: 18px;
            margin-bottom: 16px;
            font-weight: 600;
        }

        .user-info {
            background-color: rgba(255, 255, 255, 0.6);
            padding: 12px;
            border-radius: 8px;
            font-size: 15px;
            color: #555555;
            margin-bottom: 30px;
            border: 1px solid rgba(0, 0, 0, 0.05);
        }

        .logout-btn {
            display: inline-block;
            text-decoration: none;
            background-color: #424242;
            color: white;
            padding: 12px 35px;
            border-radius: 30px;
            font-size: 15px;
            font-weight: bold;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.15);
            transition: all 0.3s ease;
        }

        .logout-btn:hover {
            background-color: #212121;
            box-shadow: 0 6px 15px rgba(0, 0, 0, 0.25);
            transform: translateY(-2px);
        }

        .logout-btn:active {
            transform: translateY(0);
        }
    </style>
</head>
<body>

    <div class="dashboard-container">
        <!-- Visual user placeholder utilizing the first character of the username -->
        <div class="avatar">
            <%= (session.getAttribute("username") != null && !session.getAttribute("username").toString().isEmpty()) ? session.getAttribute("username").toString().substring(0, 1).toUpperCase() : "U" %>
        </div>
        
        <h2>Dashboard</h2>
        <h4>Welcome, <%= session.getAttribute("username") %></h4>
        
        <div class="user-info">
            <p><strong>Email ID:</strong> <%= session.getAttribute("useremail") %></p>
        </div>
        
        <a href="logout" class="logout-btn">Logout</a>
    </div>

</body>
</html>
