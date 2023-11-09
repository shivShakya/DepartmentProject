<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Alumni Details</title>
</head>
<body>
    <%@ include file="Profile.jsp" %>
    <h1 class="text-2xl font-semibold">Alumni Details</h1>
    <div class="h-screen flex flex-col items-center justify-center">
        <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-4">
            <%
                ResultSet rs = (ResultSet) request.getAttribute("resultSet");
                while (rs.next()) {
            %>
            <div class="bg-white border border-gray-300 rounded-lg shadow-md p-4">
                <img src="<%= rs.getString(16) %>" class="w-full" alt="Alumni Image">
                <h2 class="text-lg font-semibold mt-4"><%= rs.getString(2) + " " + rs.getString(3) + " " + rs.getString(4) %></h2>
                <p><strong>Email:</strong> <%= rs.getString(7) %></p>
                <p><strong>Phone:</strong> <%= rs.getString(8) %></p>
                <p><strong>Passing Year:</strong> <%= rs.getString(9) %></p>
                <p><strong>Position:</strong> <%= rs.getString(10) %></p>
                <p><strong>Course:</strong> <%= rs.getString(11) %></p>
                <p><strong>Company:</strong> <%= rs.getString(12) %></p>
                <p><strong>LinkedIn:</strong> <%= rs.getString(13) %></p>
                <p><strong>Sector:</strong> <%= rs.getString(14) %></p>
                <form action="../../../../../JavaProject/ReadStories">
                    <input type="hidden" name="userIdView" value="<%= rs.getString(1) %>" />
                    <input type="hidden" name="role" value="<%= role %>" />
                    <button class="bg-red-900 p-2 text-white">Read Stories</button>
                </form>
            </div>
            <%
                }
            %>
        </div>
    </div>
</body>
</html>
