<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <style>
           .show{
                display: block;
           }

           .hide{
                display: none;
           }
    </style>
    <title>Users Detalis</title>
</head>
<body>
    <%@ include file="profile.jsp" %>
      <h1>Users Details</h1>

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
                    <th>Id</th>
                    <th>Name</th>
                    <th>Address</th>
                    <th class="hide">Semester</th>
                    <th>Email</th>
                    <th>Phone</th>
                    <th class="hide">PassingYear</th>
                    <th class="hide">Position</th>
                    <th class="hide">Course</th>
                    <th class="hide">Company</th>
                    <th class="hide">LinkdIn</th>
                    <th class="hide">Sector</th>
                    <th class="hide" >Image</th>
                    <th>Role</th>
                    <th>Edit</th>
                </thead>
                <tbody>
    
                    <% 
                               ResultSet rs = (ResultSet) request.getAttribute("resultSet");
                               while(rs.next())
                               {   %>
                                 <tr> 
                                   
                                        <td>
                                              <p class="show"> <%= rs.getInt(1) %> </p> 
                                             <input type="number" class="hide" name="u-id"  value="<%= rs.getInt(1) %>" />
                                         </td>
                                        <td> 
                                            <p class="show"><%= rs.getString(2) + " " +rs.getString(3) + " " +rs.getString(4) %></p>
                                              <p class="hide">
                                                    <input type="text" name="u-f-name"  value="<%= rs.getString(2) %> " /> 
                                                    <input type="text" name="u-m-name"  value="<%= rs.getString(3) %> " /> 
                                                    <input type="text" name="u-l-name"  value="<%= rs.getString(4) %> " /> 
                                              </p>
                                        </td>
                                        <td> 
                                             <p class="show"> <%= rs.getString(5) %> </p> 
                                             <input type="text" class="hide" name="u-ad"  value="<%= rs.getString(5) %> "/> 
                                        </td>

                                        <td class="hide"> 
                                            <input type="text" name="u-sem"  value="<%= rs.getString(6) %> "/> 
                                       </td>

                                        <td>
                                             <p class="show"><%= rs.getString(7) %> </p>
                                            <input type="text" class="hide" name="u-em" value="<%= rs.getString(7) %> " /> 
                                        </td>

                                        <td> 
                                            <p class="show"><%= rs.getString(8) %> </p>
                                            <input type="text" class="hide" name="u-phn" value="<%= rs.getString(8) %> " /> 
                                        </td>

                                        <td class="hide"> 
                                            <input type="text" name="u-yr"  value="<%= rs.getString(9) %> "/> 
                                       </td>
                                        <td class="hide"> 
                                            <input type="text" name="u-pos"  value="<%= rs.getString(10) %> "/> 
                                        </td>

                                        <td class="hide"> 
                                            <input type="text" name="u-crs"  value="<%= rs.getString(11) %> "/> 
                                       </td>

                                       <td class="hide"> 
                                            <input type="text" name="u-comp"  value="<%= rs.getString(12) %> "/> 
                                       </td>

                                       <td class="hide"> 
                                        <input type="text" name="u-link"  value="<%= rs.getString(13) %> "/> 
                                       </td>

                                       <td class="hide"> 
                                        <input type="text" name="u-sect"  value="<%= rs.getString(14) %> "/> 
                                      </td>

                                      <td class="hide"> 
                                           <input type="text" name="u-crs"  value="<%= rs.getString(16) %> "/> 
                                       </td>

                                        <td> 
                                             <p class="show"><%= rs.getString(17) %> </p>
                                            <input type="text" class="hide" name="u-role"  value="<%= rs.getString(17) %> " /> 
                                        </td>

                                        <td>
                                            <div class="rc2" class="show">   
                                                <form action="ViewsServlet" class="show" method="GET">
                                                    <button class="show">  <i class="fa fa-eye" ></i></button>
                                                    <input type="hidden" name="userIdView" value="<%= rs.getInt(1) %>" />
                                                </form>   
                                            </div>

                                             <form action="DeleteUser" class="show" method="POST">
                                                <button><i class="fa fa-trash"></i></button>
                                                <input type="hidden" name="userIdDelete" value="<%= rs.getInt(1) %>" />
                                             </form>

                                             <form action="UpdateUser" method="POST">
                                                <button><i class="fa fa-edit"></i></button>
                                                 <input type="hidden" name="userIdEdit" value="<%= rs.getInt(1) %>" />
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