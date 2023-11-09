<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Selected Role</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
</head>
<body>
    <%@ include file="../../../WEB-UTILS/Navigation/navbar.jsp" %>
    <div class="min-h-screen flex items-center justify-center flex-row bg-red-900">
        <form action="../../../../JavaProject/UserForm" method="post" class="max-w-md w-full bg-white rounded-lg shadow-md p-6 space-y-6 ">
            <div class="flex justify-center flex-col items-center">
                <p class="text-gray-700">Role: <%= session.getAttribute("selectedRole") %></p>
                <a href="./photo.jsp" class="bg-blue-500 text-white px-24 py-2 rounded mt-4">Upload Picture</a>
            </div>


            <div>
                <label for="id" class="block text-sm font-medium text-gray-600">Id</label>
                <input type="text" id="id" name="id"
                    class="w-full px-3 py-2 border rounded-lg focus:outline-none focus:border-blue-500"
                    placeholder="Enter your Id" required />
            </div>
            <!-- First Name, Middle Name, and Last Name -->
            <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 gap-4">
                <div>
                    <label for="f-name" class="block text-sm font-medium text-gray-600">First Name</label>
                    <input type="text" id="f-name" name="f-name"
                        class="w-full px-3 py-2 border rounded-lg focus:outline-none focus:border-blue-500"
                        placeholder="First Name" required />
                </div>

                <div>
                    <label for="m-name" class="block text-sm font-medium text-gray-600">Middle Name</label>
                    <input type="text" id="m-name" name="m-name"
                        class="w-full px-3 py-2 border rounded-lg focus:outline-none focus:border-blue-500"
                        placeholder="Middle Name"/>
                </div>

                <div>
                    <label for="l-name" class="block text-sm font-medium text-gray-600">Last Name</label>
                    <input type="text" id="l-name" name="l-name"
                        class="w-full px-3 py-2 border rounded-lg focus:outline-none focus:border-blue-500"
                        placeholder="Last Name" required />
                </div>
            </div>

            <!-- Email, Mobile Number -->
            <div class="grid grid-cols-1 sm:grid-cols-2 gap-4">
                <div>
                    <label for="email" class="block text-sm font-medium text-gray-600">Email</label>
                    <input type="email" id="email" name="email" 
                        class="w-full px-3 py-2 border rounded-lg focus:outline-none focus:border-blue-500"
                        placeholder="Enter your email" required />
                </div>

                <div>
                    <label for="mobile" class="block text-sm font-medium text-gray-600">Mobile Number</label>
                    <input type="text" id="mobile" name="mobile"
                        class="w-full px-3 py-2 border rounded-lg focus:outline-none focus:border-blue-500"
                        placeholder="Enter mobile number" />
                </div>

            </div>

            <!-- Current Position, Company, and LinkedIn Profile -->
            <div class="grid grid-cols-1 sm:grid-cols-2 gap-4">
                <div id="companyDiv">
                    <label for="company" class="block text-sm font-medium text-gray-600">Company</label>
                    <input type="text" id="company" name="company"
                        class="w-full px-3 py-2 border rounded-lg focus:outline-none focus:border-blue-500"
                        placeholder="Company name"  />
                </div>

                <div id="positionDiv">
                    <label for="currentPosition" class="block text-sm font-medium text-gray-600">Position</label>
                    <input type="text" id="currentPosition" name="currentPosition"
                        class="w-full px-3 py-2 border rounded-lg focus:outline-none focus:border-blue-500"
                        placeholder="Current position" />
                </div>

                <div>
                       <label for="address">Address</label>
                       <textarea placeholder="Place your Address here" name="addr" required></textarea>
                </div>
    

            </div>

            <div>
                <label for="linkedin" class="block text-sm font-medium text-gray-600">LinkedIn Profile</label>
                <input type="text" id="linkedin" name="linkedin"
                    class="w-full px-3 py-2 border rounded-lg focus:outline-none focus:border-blue-500"
                    placeholder="Enter your LinkedIn profile" required />
            </div>


              <!-- Course Name -->
             <div id="courseDiv">
                <label for="course" class="block text-sm font-medium text-gray-600">Course Name</label>
                <select name="course" id="course"
                    class="w-full px-3 py-2 border rounded-lg focus:outline-none focus:border-blue-500" >
                    <option value="">Select Course</option>
                    <option value="M.Sc(Mathematics)">M.Sc Mathematics</option>
                    <option value="M.SC(IMCA)">M.Sc Industrial Mathematics With Computer Application</option>
                    <option value="Ph.D">Ph.D</option>
                </select>
             </div>



            <div>
                <label for="passingYear" class="block text-sm font-medium text-gray-600">Passing Year</label>
                <select name="passingYear" id="passingYear"
                    class="w-full px-3 py-2 border rounded-lg focus:outline-none focus:border-blue-500">
                    <% for(int i = 2000 ; i < 2023 ; i++) { %>
                    <option value="<%= i %>"><%= i %></option>
                    <% } %>
                </select>
            </div>

            <!-- Semester -->
            <div id="semesterDiv">
                <label for="semester" class="block text-sm font-medium text-gray-600">Semester</label>
                <select name="semester" id="semester"
                    class="w-full px-3 py-2 border rounded-lg focus:outline-none focus:border-blue-500">
                    <option value="">Select Semester</option>
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="5">5</option>
                    <option value="6">6</option>
                </select>
            </div>


            <div id="sectorDiv">
                <label for="sector" class="block">Sector</label>
                <select name="sector" id="sector" class="w-full py-2 px-3 border rounded mt-1">
                    <option value="">Select Sector</option>
                    <option value="IT">IT</option>
                    <option value="Geometry">Geometry</option>
                    <option value="Teaching">Teaching</option>
                    <option value="Data Science">Data Science</option>
                    <option value="Others">Others</option>
                </select>
            </div>

         <div class="block text-sm font-medium text-gray-600">
            <div >
                <label for="password" class="block">Password</label>
                <input type="password" id="password"  class="w-full px-3 py-2 border rounded-lg focus:outline-none focus:border-blue-500" name="password" placeholder="Password" required/>
            </div>
 
            <div >
                 <label for="confirmPassword" class="block">Confirm Password</label>
                <input type="password" id="confirmPassword" class="w-full px-3 py-2 border rounded-lg focus:outline-none focus:border-blue-500" name="confirmPassword" placeholder="Confirm Password" required/>
            </div>
         </div>

            <button type="submit" class="bg-blue-500 text-white px-4 py-2 rounded mt-4">Submit</button>
        </form>
    </div>
    <a href="../users.jsp"> <button class="bg-blue-500 text-white px-4 py-2 rounded mt-4"><i class="fa fa-arrow-left"></i></button></a>

    <script>
        const urlParams = new URLSearchParams(window.location.search);
        const role = urlParams.get('users');

        function hideElement(elementId) {
                 document.getElementById(elementId).style.display = "none";
        }

        function showElement(elementId) {
                     document.getElementById(elementId).style.display = "block";
        }
             
            switch (role) {
                   case 'Alumni':
                         hideElement('semesterDiv');
                         break;
                   case 'Student':
                       hideElement('companyDiv');
                       hideElement('positionDiv');
                       hideElement('sectorDiv');
                       break;
                    case 'Teacher':
                          hideElement('semesterDiv');
                          hideElement('courseDiv');
                          hideElement('companyDiv');
                          hideElement('sectorDiv');
                          hideElement('positionDiv');
                          
                        
            }
     </script>

</body>
</html>



