<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        .modal {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.7);
        }
    
        .modal-content {
            background-color: #fff;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            padding: 20px;
            border-radius: 5px;
        }
    
        .close {
            position: absolute;
            top: 10px;
            right: 10px;
            cursor: pointer;
        }
    </style>
    
    <title>Alumni</title>
</head>
<body>
<%@ include file="Profile.jsp" %>
<div class="h-screen flex flex-col items-center justify-center">
    <div class="bg-white rounded-lg shadow-lg w-96 mx-auto">
        <div>
            <img src="<%= img %>" alt="profile-img" width=200 height=200 />
        </div>

        <div class="p-6">
            <div>
                <h3 class="text-xl font-semibold">Welcome <%= name %></h3>
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
                <button class="p-2 px-4 bg-red-900 text-white" onclick="openModal2()">Delete</button>
                <button class="p-2 px-4 bg-red-900 text-white" onclick="openModal1()">Update</button>
            </div>
        </div>

        <div id="updateModal" class="modal fixed w-full h-full top-0 left-0 flex items-center justify-center hidden">
            <div class="modal-content bg-white w-96 rounded-lg shadow-lg p-4">
                <span class="close absolute top-2 right-2 text-gray-600 cursor-pointer" onclick="closeModal1()">&times;</span>
                <form class="modal-form">
                    <div class="form-group">
                        <label for="id" class="block text-sm font-medium text-gray-700">ID:</label>
                        <input type="text" id="id" name="id" class="form-input">
                    </div>
        
                    <div class="form-group">
                        <label for="FirstName" class="block text-sm font-medium text-gray-700">First Name:</label>
                        <input type="text" id="FirstName" name="FirstName" class="form-input">
                    </div>
        
                    <div class="form-group">
                        <label for="MiddleName" class="block text-sm font-medium text-gray-700">Middle Name:</label>
                        <input type="text" id="MiddleName" name="MiddleName" class="form-input">
                    </div>
        
                    <div class="form-group">
                        <label for="LastName" class="block text-sm font-medium text-gray-700">Last Name:</label>
                        <input type="text" id="LastName" name="LastName" class="form-input">
                    </div>
        
                    <div class="form-group">
                        <label for="Address" class="block text-sm font-medium text-gray-700">Address:</label>
                        <input type="text" id="Address" name="Address" class="form-input">
                    </div>
        
                    <div class="form-group">
                        <label for="Email" class="block text-sm font-medium text-gray-700">Email:</label>
                        <input type="text" id="Email" name="Email" class="form-input">
                    </div>
        
                    <div class="form-group">
                        <label for="Phone" class="block text-sm font-medium text-gray-700">Phone:</label>
                        <input type="text" id="Phone" name="Phone" class="form-input">
                    </div>
        
                    <div class="form-group">
                        <label for="PassingYear" class="block text-sm font-medium text-gray-700">Passing Year:</label>
                        <input type="text" id="PassingYear" name="PassingYear" class="form-input">
                    </div>
        
                    <div class="form-group">
                        <label for="Position" class="block text-sm font-medium text-gray-700">Position:</label>
                        <input type="text" id="Position" name="Position" class="form-input">
                    </div>
        
                    <div class="form-group">
                        <label for="Course" class="block text-sm font-medium text-gray-700">Course:</label>
                        <input type="text" id="Course" name="Course" class="form-input">
                    </div>
        
                    <div class="form-group">
                        <label for="Company" class="block text-sm font-medium text-gray-700">Company:</label>
                        <input type="text" id="Company" name="Company" class="form-input">
                    </div>
        
                    <div class="form-group">
                        <label for="LinkedIn" class="block text-sm font-medium text-gray-700">LinkedIn:</label>
                        <input type="text" id="LinkedIn" name="LinkedIn" class="form-input">
                    </div>
        
                    <div class="form-group">
                        <label for="Sector" class="block text-sm font-medium text-gray-700">Sector:</label>
                        <input type="text" id="Sector" name="Sector" class="form-input">
                    </div>
        
                    <div class="form-group">
                        <label for="Password" class="block text-sm font-medium text-gray-700">Password:</label>
                        <input type="password" id="Password" name="Password" class="form-input">
                    </div>
        
                    <div class="form-group">
                        <input type="submit" value="Submit" class="btn-primary mt-4">
                    </div>
                </form>
            </div>
        </div>


        <div id="deleteModel" class="modal fixed w-full h-full top-0 left-0 flex items-center justify-center hidden">
            <div class="modal-content bg-white w-96 rounded-lg shadow-lg p-4">
                <span class="close absolute top-2 right-2 text-gray-600 cursor-pointer" onclick="closeModal2()">&times;</span>
                Are you sure ?  This will delete your account .
                <form action="../../../../../JavaProject/DeleteUser" method="POST">
                      <input type="hidden" name="userIdDelete" value="<%= userId %>" />
                       <button class="p-2 px-4 bg-red-900 text-white">Submit</button>
                </form>
            </div>
        </div>
        
        

    </div>
</div>
<script>
    const updateModal = document.getElementById('updateModal');
    const deleteModel = document.getElementById('deleteModel');

    // Function to open the modal
    function openModal1() {
        updateModal.style.display = 'block';
    }
    function openModal2() {
        deleteModel.style.display = 'block';
    }

    // Function to close the modal
    function closeModal1() {
        updateModal.style.display = 'none';
    }
    function closeModal2() {
        deleteModel.style.display = 'none';
    }
</script>

</body>
</html>