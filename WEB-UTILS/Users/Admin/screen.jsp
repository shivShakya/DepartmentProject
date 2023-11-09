<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Screen</title>
</head>
<body>
    <%@ include file="profile.jsp" %>
      <h1>Update Screen</h1>

      <div class="flex flex-col justify-center items-center border border-gray-300 p-6 rounded-lg">
        <form action="../../../../JavaProject/ScreenServlets" method="POST">
            <div class="flex-col flex justify-center items-center space-y-4">
               <button><a href="../Registration/photo.jsp">Upload</a></button>

                <textarea rows="10" cols="30" placeholder="Description" name="desc" class="border border-gray-300 p-2 w-64"></textarea>
    
                <button class="bg-red-900 text-white p-3 rounded-lg">Submit</button>
            </div>
        </form>
    </div>
</body>
</html>