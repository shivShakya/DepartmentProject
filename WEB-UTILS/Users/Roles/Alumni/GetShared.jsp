<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Get Shared</title>
</head>
<body>
    <%@ include file="Share.jsp" %>
    <div class="container mx-auto">
       <button id="update-btn" onclick="toggleBtn()" class="bg-blue-500 p-2 text-white">Update</button>
        <div class="overflow-x-auto">
            <table class="min-w-full bg-white shadow-md rounded my-6">
                <thead>
                    <tr>
                        <th class="py-2 px-3 bg-gray-200">Image</th>
                        <th class="py-2 px-3 bg-gray-200">Story</th>
                        <th class="py-2 px-3 bg-gray-200">Edit</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        ResultSet rs = (ResultSet) request.getAttribute("resultSet");
                        while (rs.next()) {
                            int id = rs.getInt(1);
                            String imageSrc = rs.getString(2);
                            String story = rs.getString(3);  
                    %>
                    <tr>
                         <form action="../../../../../JavaProject/handleStory" method="POST">
                            <td class="py-2 px-3">
                                <input type="hidden" name="storyId" value="<%= id %>" >
                                <% if(imageSrc != null){ %>
                                <img src="<%= imageSrc.substring(49) %>" alt="Image Description" class="w-24 h-24 object-cover">
                               <% }else{ %>
                                <img src="<%= imageSrc %>" alt="Image Description" class="w-24 h-24 object-cover">
                                <% } %>
                             </td>
                            <td class="py-2 px-3">
                                <p  class="story-tag font-semibold text-blue-900 ">  <%= story %> </p>
                                <textarea  rows="1"  cols="90"  name="story" placeholder="Change Story" class="hidden hide-elm font-semibold text-blue-900 border-2 border-font-20 border-gray-700 p-2 appearance-none" style="width: 70%;"></textarea>
                             </td>
                            <td class="py-2 px-1 flex flex-col justify-center items-center">
                                <button  class="hidden update px-4 py-2 m-1 bg-blue-500 text-white rounded-full">Update</button>
                                <button class="px-4 delete py-2 m-1 bg-blue-500 text-white rounded-full">Delete</button>
                            </td>
                        </form>
                    </tr>
                    <%
                        }
                    %>
                </tbody>
            </table>
        </div>
    </div>

    <script>
        const storyText = document.getElementsByClassName('hide-elm');
        const storyTag = document.getElementsByClassName('story-tag');
        const update = document.getElementsByClassName('update');
        const deletes = document.getElementsByClassName('delete');
    
        let state = true;
    
        function toggleBtn() {
            if (state) {
                for (const element of storyText) {
                    element.classList.add('hidden');
                }
                for (const element of storyTag) {
                    element.classList.remove('hidden');
                }
                for (const element of update) {
                    element.classList.add('hidden');
                }
                for (const element of deletes) {
                    element.classList.remove('hidden');
                }
            } else {
                for (const element of storyText) {
                    element.classList.remove('hidden');
                }
                for (const element of storyTag) {
                    element.classList.add('hidden');
                }
                for (const element of update) {
                    element.classList.remove('hidden');
                }
                for (const element of deletes) {
                    element.classList.add('hidden');
                }
            }
            state = !state;
        }
    </script>
    
</body>
</html>
