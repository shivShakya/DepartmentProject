<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <title>User Details</title>
</head>
<body>

    <%@ include file="Profile.jsp" %>
    <% 
       ResultSet rs1 = (ResultSet) request.getAttribute("resultSet1");
       ResultSet rs2 = (ResultSet) request.getAttribute("resultSet2");
    %>

    <div>
        <button class="m-2 p-2 bg-red-900 text-white" onclick="almBtnClicked()" id="alm-btn">Alumni</button>
        <button  class="m-2 p-2 bg-red-900 text-white" onclick="stdBtnClicked()" id="std-btn">Student</button>
    </div>

    <div id="rs" class="hidden">
        <% while(rs1.next()){ %>
            <div class="bg-white border border-gray-300 flex rounded-lg shadow-md p-4">     
                <h2 class="text-lg font-semibold mt-4"><%= rs1.getString("FirstName") %>  <%= rs1.getString("MiddleName") %>  <%= rs1.getString("LastName") %></h2>
               <div style="margin-left: 70%;">
                     <h2 class="text-lg font-semibold mt-4">Email : <%= rs1.getString("Email") %> </h2>
                     <h2 class="text-lg font-semibold mt-4">Phone : <%= rs1.getString("Phone") %> </h2>
               </div>
            </div>
        <% } %>
    </div>

    <div id="rs2" class="hidden">
       <% while(rs2.next()){ %>
        <div class="bg-white flex border border-gray-300 rounded-lg shadow-md p-4">     
            <h2 class="text-lg font-semibold mt-4"><%= rs2.getString("FirstName") %>  <%= rs2.getString("MiddleName") %>  <%= rs2.getString("LastName") %></h2>
               <div style="margin-left: 70%;">
                     <h2 class="text-lg font-semibold mt-4">Email : <%= rs2.getString("Email") %> </h2>
                     <h2 class="text-lg font-semibold mt-4">Phone : <%= rs2.getString("Phone") %> </h2>
               </div>
        </div>
      <% } %>
    </div>
 
     <script>
        const rs = document.getElementById('rs');
        const rs2 = document.getElementById('rs2');

        function almBtnClicked() {
            rs2.classList.add('hidden');
            rs.classList.remove('hidden');
        }

        function stdBtnClicked() {
            rs.classList.add('hidden');
            rs2.classList.remove('hidden');
        }
     </script>
</body>
</html>
