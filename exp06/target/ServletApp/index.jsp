<%@ page language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Experiment 6</title>

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
            min-height: 100vh;
        }

        .form-container {
            background-color: white;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 400px;
        }

        h2 {
            text-align: center;
            margin-bottom: 25px;
            color: #333;
        }

        .form-group {
            margin-bottom: 20px;
        }

        label {
            display: block;
            margin-bottom: 8px;
            color: #666;
            font-weight: 600;
        }

        input {
            width: 100%;
            padding: 12px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 16px;
        }

        input:focus {
            border-color: #4070f4;
            outline: none;
        }

        button {
            width: 100%;
            padding: 12px;
            background-color: #4070f4;
            color: white;
            border: none;
            border-radius: 4px;
            font-size: 16px;
            cursor: pointer;
        }

        button:hover {
            background-color: #2e59d9;
        }
    </style>
</head>

<body>

    <div class="form-container">

        <h2>Experiment 6</h2>

        <form action="Welcome.jsp" method="get">

            <div class="form-group">
                <label for="username">Your Name</label>
                <input type="text" name="username" id="username" required>
            </div>

            <div class="form-group">
                <label for="useremail">Your Email</label>
                <input type="email" name="useremail" id="useremail" required>
            </div>

            <button type="submit">Submit</button>

        </form>

    </div>

</body>
</html>