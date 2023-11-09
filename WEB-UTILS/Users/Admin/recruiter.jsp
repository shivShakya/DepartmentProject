<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Recruiter Details</title>
</head>
<body>
    <%@ include file="profile.jsp" %>
      <h1>Recruiter Details</h1>

      <% 
      String name = (String) session.getAttribute("name");
      String role = (String) session.getAttribute("role");
      %>

      <% if (role.equals("Admin")) { %>
        <center>
            <table border='1'>
                <thead>
                    <th>Name</th>
                    <th>Company</th>
                    <th>Email</th>
                    <th>Message</th>
                    <th>Date</th>
                </thead>
                <tbody>
    
                    <% 
                               ResultSet rs = (ResultSet) request.getAttribute("resultSet");
                               while(rs.next())
                               {   %>
                                 <tr> 
                    
                                        <td>
                                              <p> <%= rs.getString(2) %> </p> 
                                         </td>
                                        <td> 
                                            <p><%= rs.getString(3) %></p>
                                        </td>
                                        <td> 
                                             <p> <%= rs.getString(4) %> </p> 
                                        </td>

                                        <td> 
                                            <p> <%= rs.getString(5) %></p>
                                       </td>

                                       <td> 
                                        <p> <%= rs.getString(6) %></p>
                                   </td>
                                 </tr>

                        <% } %>
                </tbody>
            </table>
        </center>
    <% } else { %>
        <h1> Not authorized </h1>
    <% } %>

    
</body>
</html>