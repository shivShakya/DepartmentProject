<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html> 
<head>
    <meta charset="UTF-8">
    <title>Selected Role</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
</head>
<body>

   <% String selectedRole = (String) session.getAttribute("selectedRole"); %>
   <%@ include file="../../WEB-UTILS/Navigation/navbar.jsp" %>
    <div class="min-h-screen flex items-center justify-center bg-red-900">
        <form action="../../../JavaProject/LoginForm" method="post" class="max-w-md w-full bg-white rounded border border-gray-300 shadow-md p-6">
            <p class="text-gray-700">Role: <%= session.getAttribute("selectedRole") %></p>
           <div>

            <div>
                <label for="role" class="block"></label>
                <input type="text" id="role" name="role" value="<%= selectedRole %>" class="w-full py-2 px-3 border rounded mt-1 hidden"  required/>
            </div>

            <div>
                <label for="email" class="block">Email</label>
                <input type="email" id="email" name="email" class="w-full py-2 px-3 border rounded mt-1" required/>
            </div>

            <div>
                <label for="password" class="block">Password</label>
                <input type="password" id="password" name="password"class="w-full py-2 px-3 border rounded mt-1" required/>
            </div>
           </div>
            <button class="bg-blue-500 text-white px-4 py-2 rounded mt-4">Submit</button>
        </form>
    </div>
    <a href="../../../JavaProject/WEB-UTILS/Users/users.jsp"> <button class="bg-blue-500 text-white px-4 py-2 rounded mt-4"><i class="fa fa-arrow-left"></i></button></a>

    <% if (!"Admin".equals(selectedRole)) { %>
        <a href="../../../JavaProject/WEB-UTILS/Users/Registration/registration.jsp?users=<%= selectedRole %>">
            <button class="bg-blue-500 text-white px-4 py-2 rounded mt-4">Register here</button>
        </a>
    <% } %>


    
</body>
</html>
