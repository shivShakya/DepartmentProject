<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Get Project</title>
</head>
<body>
    <%@ include file="Project.jsp" %>
    <div class="container mx-auto">
         <div class="overflow-x-auto">
             <table class="min-w-full bg-white shadow-md rounded my-6">
                 <thead>
                     <tr>
                         <th class="py-2 px-3 bg-gray-200">Project</th>
                         <th class="py-2 px-3 bg-gray-200">Title</th>
                         <th class="py-2 px-3 bg-gray-200">Edit</th>
                     </tr>
                 </thead>
                 <tbody>
                     <%
                         ResultSet rs = (ResultSet) request.getAttribute("resultSet");
                         while (rs.next()) {
                             int ids = rs.getInt(1);
                             String title = rs.getString(2);
                             String imgs = rs.getString(8);
                     %>
                     <tr>
    
                             <td class="py-2 px-3">
                                   
                                 <img src="  <%= imgs.substring(49) %>" alt="Image Description" class="w-24 h-24 object-cover">
                              </td>
                             <td class="py-2 px-3">
                                 <p  class="story-tag font-semibold text-blue-900 ">  <%= title %> </p>
                              </td>
                             <td class="py-2 px-1 flex flex-col justify-center items-center">
                                <form action="../../../../../JavaProject/deleteProject"  method="post">
                                    <input type="hidden" name="ids" value="<%= ids %>" >
                                    <button class="px-4 delete py-2 m-1 bg-blue-500 text-white rounded-full">Delete</button>
                                </form>
                             </td>
                       
                     </tr>
                     <%
                         }
                     %>
                 </tbody>
             </table>
         </div>
     </div>

</body>
</html>