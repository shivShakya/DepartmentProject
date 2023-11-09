<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Share With Department</title>
</head>
<body>
    <%@ include file="Profile.jsp" %>
      <div class="flex flex-col items-center ">
            <div class="flex flex-col justify-center items-center">
                <h1><%= name %></h1>
                 <h2 class="text-xl w-full">The Department of Mathematics proudly acknowledges your outstanding contributions to our Department. Your journey has been truly inspiring, and we want to ensure that your connection with our department remains strong. We invite you to share your experiences and insights with us.</h2>
           </div>

        <div class="flex flex-col justify-center items-center border border-gray-300 p-6 w-full rounded-lg">



            <form action="../../../../../JavaProject/ShareStory" method="post">
                <div class="flex-col flex justify-center items-center w-full space-y-4">
                    <a class="bg-blue-500 p-2 text-white" href="../../../../../JavaProject/WEB-UTILS/Users/Registration/photo.jsp">Upload Picture (optional)</a>
                    <input type="hidden" name="userId" value="<%= userId %>">
                    <textarea rows="10"  cols="130"  name="story" placeholder="Share Story" class="font-semibold text-blue-900 border-2 border-font-20 border-gray-700 p-2 appearance-none" style="width: 70%;"></textarea>
                    <button class="bg-red-900 w-1/4 text-white p-3 rounded-lg">Submit</button>
                </div>
            </form>


        </div>
         <a href="../../../../../JavaProject/GetShared">Manage Stories</a>
      </div>
</body>
</html>