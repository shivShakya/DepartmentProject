<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Project Details</title>
</head>
<body>
    <%@ include file="profile.jsp" %>
      <h1>Project Details</h1>

      <% 
      String name = (String) session.getAttribute("name");
      String role = (String) session.getAttribute("role");
      %>

      <% if (role.equals("Admin")) { %>
        <div class="rc1">
            <button onClick="toggle1()" class="show">Update</button>
            <button onClick="toggle2()" class="hide">View</button>
        </div>
        <center>
            <table border='1'>
                <thead>
                    <th>Image</th>
                    <th>Title</th>
                    <th>Github</th>
                    <th>Demo</th>
                    <th>Sector</th>
                    <th>Student Id</th>
                    <th>Description</th>
                    <th class="show">Edit</th>
                </thead>
                <tbody>
    
                    <% 
                               ResultSet rs = (ResultSet) request.getAttribute("resultSet");
                               while(rs.next())
                               {   %>
                                 <tr> 
                                   
                                       <td>
                                         <img src="<%= rs.getString(8) %>" width="100" height="100" />
                                      </td>
                                        <td>
                                              <p> <%= rs.getString(2) %> </p> 
                                         </td>
                                        <td> 
                                            <p><%= rs.getString(3) %></p>
                                        </td>
                                        <td> 
                                             <p> <%= rs.getString(7) %> </p> 
                                        </td>

                                        <td> 
                                            <p> <%= rs.getString(4) %></p>
                                       </td>

                                        <td>
                                            <p ><%= rs.getString(10) %> </p>
                                       </td>

                                       <td>
                                            <p><%= rs.getString(5) %> </p>
                                       </td>
                                        <td>
                                              <form action="Approval" class="show" method="POST">
                                                <input type="hidden" name="approvalValue" value="<%= rs.getInt(9) %>" />
                                                <input type="hidden" name="userId" value="<%= rs.getInt(1) %>" />
                                                    <% if (rs.getInt(9) == 1) { %>
                                                        <button>Approved</button>
                                                    <% }else {%>
                                                        <button>Not Approved</button>
                                                    <% } %>
                                              </form>
                                         </td> 
                                 </tr>

                        <% } %>
                </tbody>
            </table>
        </center>
    <% } else { %>
        <h1> Not authorized </h1>
    <% } %>



    <script>
        let showElements = document.getElementsByClassName('show');
        let hideElements = document.getElementsByClassName('hide');

        function toggle1() {
            for (let i = 0; i < showElements.length; i++) {
                showElements[i].style.display = 'none';
            }
            
            for (let i = 0; i < hideElements.length; i++) {
                hideElements[i].style.display = 'block';
            }
        }

        function toggle2() {
            for (let i = 0; i < showElements.length; i++) {
                showElements[i].style.display = 'block';
            }
            
            for (let i = 0; i < hideElements.length; i++) {
                hideElements[i].style.display = 'none';
            }
        }
    </script>
    
</body>
</html>