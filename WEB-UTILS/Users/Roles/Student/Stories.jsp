<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Stories</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
</head>
<body class="bg-gray-100 font-sans">
    <%@ include file="Profile.jsp" %>
    <div class="container mx-auto p-4">
        <h2 class="text-3xl font-bold mb-4">Stories</h2>
        <div class="space-y-4">
            <%
                ResultSet rs = (ResultSet) request.getAttribute("resultSet");
                while (rs.next()) {
            %>
            <div class="flex items-center space-x-2">
                <div class="w-10 h-10">
                    <%
                        String imageUrl = rs.getString(2);

                        if(imageUrl != null){
                    %>
                    <img src="<%= imageUrl.substring(49) %>" alt="User" class="w-full h-full rounded-full">
                    <% } %>
                </div>
                <div class="bg-white p-4 rounded-lg shadow-md">
                    <h2 class="text-lg font-semibold"><%= rs.getString(3) %>    </h2>
                </div>
            </div>
            <%
                }
            %>
        </div>
    </div>
</body>
</html>
