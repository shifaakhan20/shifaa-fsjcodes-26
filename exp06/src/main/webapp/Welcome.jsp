<%@ page language="java" %>
<%@ page import="java.util.Date" %>

<!DOCTYPEDOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome</title>
</head>

<body>

    <h1>Welcome to RCOE</h1>

    <h2>Good Morning, <%= request.getParameter("username") %></h2>

    <p>
        Email ID:
        <b><% out.print(request.getParameter("useremail")); %></b>
    </p>

    <h3>
        Date & Time:
        <i><%= new Date() %></i>
    </h3>

</body>
</html>