<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Project Submission</title>
</head>
<body>
    <%@ include file="Profile.jsp" %>
   <div class="flex flex-col justify-center items-center">
         <h1>Project Details</h1>
   </div>

   <div class="flex flex-col justify-center items-center border border-gray-300 p-6 rounded-lg">
    <form class="max-w-md mx-auto p-4" action="../../../../../JavaProject/ProjectUpload" method="post">
        <div class="flex flex-col space-y-4">
            <a href="../../../../../JavaProject/WEB-UTILS/Users/Registration/photo.jsp" class="text-blue-600 hover:underline">Upload Photo</a>
            <input type="text" name="title" placeholder="Title" class="p-2 border border-gray-300 rounded" />
            <input type="text" name="github" placeholder="GitHub" class="p-2 border border-gray-300 rounded" />
            <div class="relative border border-gray-300 rounded mt-4">
                <input type="file" name="file" >
            </div>
            <input type="text" name="sector" placeholder="Sector" class="p-2 border border-gray-300 rounded" />
            <input type="text" name="demo" placeholder="Demo link" class="p-2 border border-gray-300 rounded" />
            <input type="hidden" name="userId" value="<%= userId %>" />
            <textarea name="desc" rows="6" placeholder="Description" class="p-2 border border-gray-300 rounded"></textarea>
            <button class="bg-red-900 text-white p-3 rounded-lg hover:bg-red-700 focus:outline-none">Submit</button>
        </div>
    </form>
    
  </div>

  <div class="text-center"><a href="../../../../../JavaProject/GetProject">Get your projects</a></div>
  

</body>
</html>