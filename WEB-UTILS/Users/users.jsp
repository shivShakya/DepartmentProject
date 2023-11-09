<!DOCTYPE html>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.16/dist/tailwind.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
</head>
<body>
    <%@ include file="../../WEB-UTILS/Navigation/navbar.jsp" %>
  <div class="h-screen flex items-center justify-center bg-red-900">
    <form action="../../../JavaProject/RoleServlet" class="max-w-xs mx-auto mt-8 p-4 bg-white rounded shadow">
        <h2 class="text-2xl font-semibold mb-4">Choose your Role</h2>
        <div class="space-y-4">
            <div class="flex items-center">
                <input type="radio" id="alumni" name="users" value="Alumni" class="mr-2" required>
                <label for="alumni">Alumni</label>
            </div>

            <div class="flex items-center">
                <input type="radio" id="teacher" name="users" value="Teacher" class="mr-2" required>
                <label for="teacher">Teacher</label>
            </div>

            <div class="flex items-center">
                <input type="radio" id="student" name="users" value="Student" class="mr-2" required>
                <label for="student">Student</label>
            </div>

            <div class="flex items-center">
                <input type="radio" id="admin" name="users" value="Admin" class="mr-2" required>
                <label for="admin">Admin</label>
            </div>
        </div>

        <input type="submit" value="Submit" class="bg-blue-500 text-white font-semibold px-4 py-2 rounded mt-4"/></button>
    </form>
   </div>
   <a href="../../../JavaProject/"> <button class="bg-blue-500 text-white font-semibold px-4 py-2 rounded mt-4"><i class="fa fa-arrow-left"></i></button></a>
</body>
</html>
