<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student</title>
</head>
<body>
<%@ include file="Profile.jsp" %>
<div class="h-screen flex flex-col items-center justify-center">
    <div class="bg-white rounded-lg shadow-lg w-96 mx-auto">
        <div>
            <img src="<%= img %>" alt="profile-img" class="w-full" />
        </div>

        <div class="p-6">
            <div>
                <h3 class="text-xl font-semibold">Welcome <%= userId %> <%= name %></h3>
            </div>
            <div >
                 <h2 class="text-lg mt-4"><strong>Email :</strong><%= email %></h2>
                 <h2 class="text-lg"><strong>Phone :</strong><%= phone %></h2>
            </div>
            <div>
                 <h2 class="text-lg"><strong>Year : </strong><%= passingYear %></h2>
                 <h2 class="text-lg"><strong>Semester : </strong><%= semester %></h2>
            </div>
            <div >
                 <a class="text-lg" href=" <%= linkdin %>"><strong>Linkdin :</strong><%= linkdin %></a>
                 <h2 class="text-lg"><strong>Address :</strong> <%= address %></h2>
            </div

            <div class="flex">
                <button class="p-2 px-4 bg-red-900 text-white">Delete</button>
                <button class="p-2 px-4 bg-red-900 text-white">Update</button>
            </div>
        </div>

    </div>
</div>

</body>
</html>