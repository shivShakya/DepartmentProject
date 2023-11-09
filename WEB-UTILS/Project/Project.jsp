<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
    <title>Project Section</title>
</head>
<body>
   <div class="flex">
         <a href="../../../JavaProject/index.jsp" class="mx-6"><i class="fa fa-arrow-left"></i></a>
         <h1 class="text-2xl font-semibold">Project Section</h1>
   </div>
    <div class="h-screen flex flex-col items-center justify-center bg-red-900">
        <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-4">
            <%
                ResultSet rs = (ResultSet) request.getAttribute("resultSet");
                while (rs.next()) {
            %>
            <div class="bg-white border border-gray-300 rounded-lg shadow-md p-4">
                <img src="<%= rs.getString(8) %>" class="w-full" alt="Alumni Image">
                <h2 class="text-lg font-semibold mt-4"><%= rs.getString(2) %></h2>
                <p><strong>Github :</strong> <%= rs.getString(3) %></p>
                <p><strong>Sector :</strong> <%= rs.getString(4) %></p>
                <p><strong>Demo Link:</strong> <%= rs.getString(7) %></p>
                <p><strong>Description :</strong> <%= rs.getString(5) %></p>

                <hr>
            </div>
            <%
                }
            %>
        </div>
    </div>
</body>
</html>
