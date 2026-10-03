<%@ page language="java" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <title>Authentication App - Welcome</title>
    <style>
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        body {
            /* Smooth pink gradient background */
            background: linear-gradient(135deg, #ff9a9e 0%, #fecfef 99%, #fecfef 100%);
            display: flex;
            flex-direction: column; /* Stack H1 and container vertically */
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        /* Styled the moved H1 heading */
        h1 {
            color: #ffffff;
            font-size: 24px;
            margin-bottom: 24px;
            text-shadow: 0 2px 4px rgba(0, 0, 0, 0.15);
            font-weight: 600;
            text-align: center;
        }

        .welcome-container {
            background-color: rgba(255, 255, 255, 0.85);
            backdrop-filter: blur(10px);
            padding: 50px 40px;
            border-radius: 16px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
            text-align: center;
            max-width: 450px;
            width: 90%;
            border: 1px solid rgba(255, 255, 255, 0.4);
        }

        h2 {
            color: #333333;
            font-size: 28px;
            margin-bottom: 30px;
            font-weight: 700;
            letter-spacing: -0.5px;
        }

        .login-btn {
            display: inline-block;
            text-decoration: none;
            background-color: #ff4081;
            color: white;
            padding: 14px 40px;
            border-radius: 30px;
            font-size: 16px;
            font-weight: bold;
            box-shadow: 0 5px 15px rgba(255, 64, 129, 0.3);
            transition: all 0.3s ease;
        }

        .login-btn:hover {
            background-color: #f50057;
            box-shadow: 0 8px 20px rgba(255, 64, 129, 0.4);
            transform: translateY(-2px);
        }

        .login-btn:active {
            transform: translateY(0);
        }
    </style>
</head>
<body>

    <!-- Fixed H1 location: Moved out of <head> and placed here in the <body> -->
    <h1>Login to access the Dashboard</h1>

    <div class="welcome-container">
        <h2>Welcome to the Auth App!</h2>
        <a href="Login.jsp" class="login-btn">Login</a>
    </div>

</body>
</html>


