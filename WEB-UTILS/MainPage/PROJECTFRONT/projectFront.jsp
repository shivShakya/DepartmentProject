<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <title>Random Projet</title>
</head>
<body>
    <div class=" h-screen bg-yellow-700">
        <%@ page contentType="text/html; charset=UTF-8" language="java" %>
        <%@ page import="java.sql.ResultSet" %>
        <div class="h-screen flex flex-col items-center justify-center bg-red-900">
            <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-4">
                <%
                    ResultSet rs = (ResultSet) request.getAttribute("resultSet");
                    while (rs.next()) {
                      String image =   rs.getString(8);
                     String img = image.substring(49);
                %>
                <div class="bg-white border border-gray-300 rounded-lg shadow-md p-4">
                    <img src="<%= img %>" class="w-full" alt="Event Image" width="200" height="200">
                    <h2 class="text-lg font-semibold mt-4"><%= rs.getString(5) %></h2>
                    <hr>
                </div>
                <%
                    }
                %>
            </div>
        </div>
    </div>
</body>
</html>