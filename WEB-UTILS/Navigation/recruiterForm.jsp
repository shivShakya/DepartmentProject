<div class="max-w-xs mx-auto">
    <form 
    class="bg-red-900 shadow-md rounded px-8 pt-6 pb-8 mb-4"
    action="RecruitForm"
    method="POST"
    >

        <div class="mb-4">
            <label class="block text-white text-sm font-bold mb-2" for="name">Your Name</label>
            <input class="bg-gray-800 text-white appearance-none border-2 border-gray-800 rounded w-full py-2 px-3 text-gray-200 leading-tight focus:outline-none focus:bg-gray-900 focus:border-blue-500" id="name" name="name" type="text" placeholder="Your Name">
        </div>

        <div class="mb-4">
            <label class="block text-white text-sm font-bold mb-2" for="companyName">Company Name</label>
            <input class="bg-gray-800 text-white appearance-none border-2 border-gray-800 rounded w-full py-2 px-3 text-gray-200 leading-tight focus:outline-none focus:bg-gray-900 focus:border-blue-500" id="companyName" name="company" type="text" placeholder="Company Name">
        </div>

        <div class="mb-6">
            <label class="block text-white text-sm font-bold mb-2" for="email">Email</label>
            <input class="bg-gray-800 text-white appearance-none border-2 border-gray-800 rounded w-full py-2 px-3 text-gray-200 leading-tight focus:outline-none focus:bg-gray-900 focus:border-blue-500" id="email" type="email" name="email" placeholder="Email">
        </div>

        <div class="mb-6">
            <label class="block text-white text-sm font-bold mb-2" for="message">Your Message</label>
            <textarea class="bg-gray-800 text-white appearance-none border-2 border-gray-800 rounded w-full py-2 px-3 text-gray-200 leading-tight focus:outline-none focus:bg-gray-900 focus:border-blue-500" id="message" placeholder="Your Message" name="message" rows="5"></textarea>
        </div>
        

        <div class="flex items-center justify-between">
            <input class="bg-red-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded focus:outline-none focus:shadow-outline" type="submit" value="Submit">
        </div>
    </form>
</div>
