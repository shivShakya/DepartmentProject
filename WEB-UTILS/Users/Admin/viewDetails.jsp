<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <title>View User Details</title>
</head>
<body>

    <%@ include file="profile.jsp" %>
    <h1>User -></h1>

    <% 
    String name = (String) session.getAttribute("name");
    String role = (String) session.getAttribute("role");
    %>

    <% if (role.equals("Admin")) { %>
    <center>
        <table border='1'>
            <thead>
                <th>Id</th>
                <th>Name</th>
                <th>Address</th>
                <th>Email</th>
                <th>Phone</th>
                <th>Role</th>
            </thead>
            <tbody>

                <% 
                           ResultSet rs = (ResultSet) request.getAttribute("resultSet");

                           while(rs.next())
                           {
                               out.println("<tr>");
                               out.println("<td>" + rs.getInt(1) + "</td>");
                               out.println("<td>" + rs.getString(2) + " " +rs.getString(3) + " " +rs.getString(4) + "</td>");
                               out.println("<td>" + rs.getString(5) + "</td>");
                               out.println("<td>" + rs.getString(7) + "</td>");
                               out.println("<td>" + rs.getString(8) + "</td>");
                               out.println("<td>" + rs.getString(17) + "</td>"); %>
                               <%
                               out.println("</tr>");
                           }
                %>
            </tbody>
        </table>
    </center>
    <% } else { %>
        <h1> Not authorized </h1>
    <% } %>
 
</body>
</html>
