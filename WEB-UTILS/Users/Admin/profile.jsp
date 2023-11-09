<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
</head>
<body>
      <% 
         String myName = (String) session.getAttribute("name");
      %>

      <h3>Welcome : <%=  myName %></h3>
      
      <a href="/../JavaProject/UserServlet">Users</a>
      <a href="../../../../JavaProject/ProjAdmin">Project</a>
      <a href="/../JavaProject/WEB-UTILS/Users/Admin/screen.jsp">Screen</a>
      <a href="/../JavaProject/recruiterDetail">Recruiters</a>
      <a href="../../../../JavaProject/Logout">LogOut</a>

</body>
</html>