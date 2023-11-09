<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
    <title>Alumni Profile</title>
</head>
<body>
    <% 
    Integer userId = (Integer) session.getAttribute("user_id");
    String firstName = (String) session.getAttribute("FirstName");
    String middleName = (String) session.getAttribute("MiddleName");
    String lastName = (String) session.getAttribute("LastName");
    String address = (String) session.getAttribute("Address");
    String email = (String) session.getAttribute("Email");
    String phone = (String) session.getAttribute("Phone");
    String semester = (String) session.getAttribute("Semester");
    String passingYear = (String) session.getAttribute("PassingYear");
    String linkdin = (String) session.getAttribute("Linkdin");
    String image = (String) session.getAttribute("Image");
    String role = (String) session.getAttribute("Role");

    String name = (firstName + " " + middleName + " " + lastName).trim();
    String img = image.substring(49);
%>

        <div class="top-0 left-0 right-0 bg-white shadow-md flex items-center justify-center p-4 z-10">
            <ul class="flex space-x-4">
                <li><a href="../../../../../JavaProject/WEB-UTILS/Users/Roles/Alumni/Share.jsp">Share with Department</a></li>
                <li><a href="../../../../../JavaProject/WEB-UTILS/Users/Roles/Alumni/Alumni.jsp">Profile</a></li>
                <li><a href="../../../../../JavaProject/Logout">LogOut</a></li>
            </ul>
            <div class="w-96"></div>
            <div class="flex items-center justify-center">
                <img src="<%= img %>" alt="profile-img" class="w-24 h-24 rounded-full"/>
                <h3 class="text-2xl font-semibold mb-1 mx-48"><%= name %></h3>
            </div>
        </div>
     
</body>
</html>