
<nav class="bg-red-900">
    <div class="container mx-auto flex justify-between items-center">
       <a  href="<%= request.getContextPath() %>/index.jsp" class="hidden sm:block text-white text-2xl font-bold">Home</a>
        <button class="sm:hidden text-white text-2xl px-3" id="btn-side"><i class="fa-solid fa-plus"></i></button>

        <ul class="hidden sm:flex space-x-4">
            <li class="px-4 text-lg sm:text-xl"><a href="<%= request.getContextPath() %>/about.jsp" class="text-white">Academics</a></li>
            <li class="px-4 text-lg sm:text-xl"><a href="<%= request.getContextPath() %>/research.jsp" class="text-white">Research</a></li>
            <li class="px-4 text-lg sm:text-xl"><a href="<%= request.getContextPath() %>/projectSection" class="text-white">Projects</a></li>
            <li class="px-4 text-lg sm:text-xl"><a id="rc1" class="bg-white text-black px-2 py-2 rounded-lg hover:bg-blue-600">Recruiters Corner</a></li>
        </ul>
    </div>
</nav>


<div class="sm:hidden bg-red-900 text-white">
    <ul class="text-lg space-y-4 px-4" id="sidebar">
        <hr/>
        <li><a href="<%= request.getContextPath() %>/index.jsp" class="text-white">Home</a></li>
        <li><a href="<%= request.getContextPath() %>/about.jsp" class="text-white">Academics</a></li>
        <li><a href="<%= request.getContextPath() %>/research.jsp" class="text-white">Research</a></li>
        <li><a href="<%= request.getContextPath() %>/projectSection" class="text-white">Projects</a></li>
        <li><a id="rc2" class="bg-white text-black px-2 py-2 rounded-lg hover:bg-blue-600">Recruiters Corner</a></li>
    </ul>
</div>


<div id="overlay" class="fixed inset-0 z-10 flex items-center justify-center hidden">
    <div class="modal-overlay absolute inset-0 bg-black opacity-50"></div>
    <div class="modal-container bg-white  rounded-lg shadow-lg z-50">
        <%@ include file="recruiterForm.jsp" %>
        <button id="closeOverlay" class="modal-close absolute top-2 right-2">
            <br/><br/><br/>
            <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" viewBox="0 0 141 133" fill="none">
                <ellipse cx="70.5" cy="66.5" rx="70.5" ry="66.5" fill="white"/>
                </svg>
        </button>
    </div>
</div>


<style>

@media (max-width: 640px) {
    .sm\\:hidden {
        display: block !important;
    }
    .sm\\:block {
        display: none !important;
    }
    .sm\\:flex {
        display: none !important;
    }

    #sidebar li:hover{
        background-color: #ffffff; 
    }

    #sidebar li a:hover{
        color: black; 
    }
}


</style>


<script>
    const hamburgerButton = document.getElementById('btn-side');
    const sidebar = document.getElementById('sidebar');
    let sidebarOpen = true;

    hamburgerButton.addEventListener('click', () => {
        if (sidebarOpen) {
            sidebar.style.display = 'none';
            sidebarOpen = false;
            hamburgerButton.innerHTML = '<i class="fa-solid fa-plus"></i>';
        } else {
            sidebar.style.display = 'block';
            sidebarOpen = true;
            hamburgerButton.innerHTML = '<i class="fa-solid fa-minus"></i>';
        }
    });

     function clickLink() {
       document.getElementById('autoClickLink').click();
     }
     setInterval(clickLink, 5000);


    function openOverlay() {
        document.getElementById("overlay").classList.remove("hidden");
    }

    function closeOverlay() {
        document.getElementById("overlay").classList.add("hidden");
    }

    document.getElementById('rc1').addEventListener("click", openOverlay);
    document.getElementById('rc2').addEventListener("click", openOverlay);
    document.getElementById("closeOverlay").addEventListener("click", closeOverlay);
</script>
