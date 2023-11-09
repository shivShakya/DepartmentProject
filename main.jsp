<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

    <style>
            @media screen and (min-width : 769px ) {
  .events{
    margin-top: 30%;
    margin-bottom: 30%;
}

.box1 {
  z-index: 2;
  background-color: #D9D9D9;;
  width: 100%;
  height: 500px;
  margin-left: -10%;
  flex-shrink: 0;
  position: absolute;
}
.box2 {
  z-index: 1;
  background-color:white;
  width:100%;
  height: 936px;
  position: relative;
  border: black;
  flex-shrink:0;
  display:flex;
  align-items: center;
  padding: 10px;
}
.box3 {
  z-index:2;
  position: absolute;
  top: -72px;
  left: 1px;
  width:50%;
  height: 767px; 
}
.box4 {
  z-index:2;
  position: absolute;
  margin-top: -80px;
  margin-left: 55%;
  width: 50%;
  height: 767px;

}
.event-button{
  width: 20%;
  height: 56px;
  margin-top: -50rem;
  background-color:white;
  color:black;
  margin-left: -7%;
  font-family: Inria Sans;
  font-size: 30px;
  font-style: normal;
  font-weight: 700;
  line-height: normal;
  padding: 10px 20px;
  border-color: black;
  border-radius: 10px;
  cursor: pointer;
  position: absolute;
  z-index:3;
}
.event-button:hover{
  background-color:rgb(125, 133, 135);
  color:white;
}
.main-screen{
  width: 70%;
  height: 451px;
  z-index:3;
  position: absolute;
  text-align: center;
  background:white;
  display:flex;
  margin-top: 4rem;
  margin-left: 20%;
}

.image{ 
width: 30%;
height: 392px;
background-color:black;
z-index:4;
position: absolute;
left :45px;
margin-top:30px;

}

.invitation {
  background-color: #ffffff;
  padding: 20px;
  border-radius: 10px;
  box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
  width: 50%;
  height: 292px;
  z-index:4;
  position: absolute;
  text-align: left;
  left : 40%;
  margin-top:40px;

}

.event-details {
  font-size: 20%;
  margin-top: 0px;
  color: #000;
  font-family: Inria Sans;
  font-size: 20px;
  font-style: normal;
  font-weight: 700;
  line-height: normal;
  z-index: 5;
  left:675 px;
}


.emoji {
  font-size: 24px;
}

.dress-code {
  font-weight: bold;
}

.mobile-deisgn-eve{
     display: none;
}

}

    @media screen and (max-width : 768px ) {
          .desktop-design-eve{
               display: none;
          }
          .mobile-deisgn-eve{
               margin-bottom: 13em;
               margin-top: 50em;
          }

          .box4{
              margin-top: -29em;
          }

          .screen{
               width: 300px;
              height: 300px;
               position: absolute;
               z-index: 2;
               margin-top: -21em;
               margin-left: 5%;
          }
     } 


     .alumni-list-box{
    height: 15em;
    border-radius: 3.125rem 0rem;
    border: 3px solid #c4b6b6;
    background: rgba(117, 36, 46, 0.83);
    box-shadow: 0px 10px 4px 0px rgba(5, 4, 4, 0.25);
    color: white;
    margin: 20px;
}

.alumni-list-box ul{
      list-style: none;
      height: 20em;
      
}
.list{
    height: 37%;
    border-radius: 3.125rem 0rem;
    border: 2px solid #000;  
    background: #FFF;
    color: black;
    margin: 2%;
    text-align: left;
    display: flex;
    justify-content: left;
}

.img-box{
    border-radius: 8.625rem;
    margin: 5px;
    margin-left: 20px;
}




.alumni-list-box{
    padding: 20px;
    font-family: Arial, sans-serif;
    background-color: #f7f7f7;
    border: 1px solid #ccc;
    border-radius: 5px;
  }
  
.p-tag {
    font-size: 18px;
    text-align: center;
    padding: 10px;
    background-color: #f5f5f5;
    border: 1px solid #ddd;
  }
  
  .list-2 {
    list-style: none;
    margin: 20px 0;
    border: 1px solid #ccc;
    border-radius: 5px;
    padding: 10px;
    display: flex;
    align-items: center;
    justify-content: space-between;
    text-align: left;
    background-color: #fff;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    transition: transform 0.2s;
  }
  
  .list-2:hover {
    transform: scale(1.02);
  }
  

  .img-boxx {
    width: 100px;
    height: 100px;
    object-fit: cover;
    margin-right: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
  }
  
  .proj-sec{
    flex: 1;
  }
  
 .proj-sec h2 {
    font-size: 24px;
    margin: 0;
    padding: 0;
    color: #333;
  }
  
 .proj-sec h3 {
    font-size: 18px;
    margin: 0;
    padding: 0;
    color: #555;
  }
  
  a {
    color: #0074d9;
    text-decoration: none;
  }

  .std-data{
      color: black;
  }

  .button-open{
    display: flex;
    align-items: center;
    justify-content: center;
    height: 45px;
    max-width: 200px;
    width: 100%;
    border: none;
    outline: none;
    color: #fff;
    border-radius: 5px;
    margin: 25px 0;
    background-color: #591616;
    transition: all 0.3s linear;
    cursor: pointer;
  }

  .button-open:hover{
    background-color: #265df2;
  }




  @media screen and (min-width: 769px) {
.alumi-main{
       display: flex;
       justify-content: center;
       align-items: center;
 }

 .alumni-mat{
       display: flex;
       justify-content: center;
       align-items: center;
       flex-direction: column;
 }
 .alm-info{
    width: 61.0625rem;
    height: 35rem;
    flex-shrink: 0; 
    margin-top: 5%;
 }

 .alm-tag{
    color: #4D3739;
    text-align: center;
    text-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);
    font-family: Inria Serif;
    font-size: 4rem;
    font-style: normal;
    font-weight: 400;
    line-height: normal;
 }
 .al-content{
    color: #4D3739;
    text-align: center;
    font-family: Inria Serif;
    font-size: 2.5rem;
    font-style: normal;
    font-weight: 400;
    line-height: normal;
 }
 
 .hod-message{
     display: flex;
     justify-content: center;
     align-items: center;
     width: 47%;
     margin-top: 20%;
     height: 40rem;
     flex-shrink: 0;
     border-radius: 6.25rem;
     background: rgba(29, 49, 120, 0.93);
     box-shadow: 15px 15px 4px 0px rgba(0, 0, 0, 0.25);
 }
 
 .hod-text{
     display: flex;
     width: 60%;
     height: 49.90344rem;
     flex-direction: column;
     justify-content: center;
     text-align: left;
     flex-shrink: 0;
     color: #FFF;
     font-family: Inria Sans;
     font-size: 1.2875rem;
     font-style: normal;
     font-weight: 700;
     line-height: normal;
 }
 .alm-form{
        display: flex;
        justify-content: center;
        margin-top: -55em;
        margin-left: 55%;
 }

 .form{
      margin-top: 39em;
      margin-left: -20em;
 }

 .warning{
    display: flex;
    flex-direction: column;
    justify-content: center;
    flex-shrink: 0;
    color: #FFF;
    font-family: Inria Sans;
    font-size: 1.0625rem;
    font-style: normal;
    font-weight: 700;    
    line-height: normal;
    margin-left: 8%;
 }
 .info{
    display: flex;
    width: 13.3325rem;
    height: 5.18544rem;
    flex-direction: column;
    justify-content: center;
    flex-shrink: 0;
    color: #000;
    font-family: Inria Sans;
    font-size: 1.5625rem;
    font-style: normal;
    font-weight: 700;
    line-height: normal;
 }
 .al-btn{
    width: 21.6875rem;
    height: 3.41375rem;
    flex-shrink: 0;
    border-radius: 12.5rem;
    background: #A02424;
    color: #FFF;
    font-family: Inria Sans;
    font-size: 1.875rem;
    font-style: normal;
    font-weight: 700;
    line-height: normal;    
 }

 .mobile-design{
     display: none;
 }
}


  
  
  
    </style>
    <title>Document</title>
</head>
<body>

    <%
    ResultSet rs = (ResultSet) request.getAttribute("resultSet");
    ResultSet rs2 = (ResultSet) request.getAttribute("resultSet2");
    ResultSet rs3 = (ResultSet) request.getAttribute("resultSet3");
    %>


    <div class=" h-screen bg-yellow-700">
         <%@ include file="WEB-UTILS/Navigation/navbar.jsp" %>
         <%@ include file="WEB-UTILS/FrontPage/frontpage.jsp" %>
         <div class="flex justify-center -mt-48">
            <div id="admission" class="w-60 h-40 bg-red-500"></div>
            <div id="Alumni" class="w-60 h-40 bg-green-500"></div>
            <div id="Campus" class="w-60 h-40 bg-gray-500"></div>
            <div id="Project" class="w-60 h-40 bg-blue-500"></div>
            <div id="Event" class="w-60 h-40 bg-yellow-500"></div>
        </div>

        <div id="hod">
              <%@ include file="WEB-UTILS/MainPage/HOD/hod.jsp" %>
         </div>


        <div id="adm">
            <%@ include file="WEB-UTILS/MainPage/ADMISSION/admission.jsp" %>
        </div>


        <div id="camp">
          <%@ include file="WEB-UTILS/MainPage/CAMPUS/campus.jsp" %>
      </div>



        <div id="Events" class="mt-96">
        <div class="h-screen bg-white">
                    
        <div className='desktop-design-eve'>     
          <div class="box2">
                 <div class="box1">
                     <div class="box3">
                         <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 805 804" fill="none">
                             <path d="M0 0H804.755L573.134 638.315C537.253 737.196 443.316 803.04 338.127 803.04H0V0Z" fill="#5A657B" />
                         </svg>
                     </div>
                     <div class="">
                      <% while(rs.next()){ %>
                      <div class="main-screen"> 
                           <img src="<%= rs.getString(2).substring(49) %>" alt="img-proj" class="image" />
                            <div class="invitation">
                              <%= rs.getString(3) %>
                          </div>
                      </div>
                      <% } %>
                  </div>
                     <div class="box4">
                         <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 821 767" fill="none">
                             <path d="M814.953 766.453L0.00101501 759.431L201.813 248.693C236.326 161.348 253.583 117.675 282.054 85.1648C310.57 52.6031 347.066 28.0198 387.965 13.8236C428.801 -0.350394 475.778 0.0543783 569.733 0.863922L820.521 3.0248L814.953 766.453Z" fill="#863D3D" />
                         </svg>
                     </div>
  
                 </div>
  
             </div>
      </div>
           </div>


     <div id="alm">
      
      
      
      <div class='almuni-main'>
        <div class='alm-info'>
            <div class='alm-tag'>Alumni Page</div>
            <div class='al-content'>
                Our alumni are a testament to the power of education
                and determination. Their success stories continue to
                inspire current and future generations of mathematicians.
            </div>


            <div class='alumni-list-box'>
                  <ul>
                      <% while(rs3.next()){ %>
                        <li class='list'> 
                            <img class='img-box'  src="<%= rs3.getString(17) %>" width=200 height=200 alt="alm" />
                            <div>
                                 <h4><%= rs3.getString(2) %>  <%= rs3.getString(3) %> <%= rs3.getString(4) %></h4>
                                 <h5><%= rs3.getString(12) %></h5>
                            </div>
                        </li>
                      <% } %>
                   </ul>
              </div>               
        </div>
        <div class='hod-message'>
            <div class='hod-text'>
                Dear Esteemed Alumni, Your remarkable
                achievements are a testament to the excellence of our mathematics
                department. We're excited to create a bridge between your success
                and the aspirations of our current students. To make this connection
                even stronger, we kindly ask you to spare a moment to complete this
                form. Your valuable data will serve as a wellspring of
                motivation for our budding mathematicians. Your support and involvement
                are deeply appreciated, and we believe your experiences will leave an
                indelible mark on our department's legacy<hr />With warm regards, <hr />Vinayak
                Joshi <hr /> Head of the Department of Mathematics
            </div>
        </div>

        <div class='alumni-mat'>  
          <div class='alm-form'> 
               <div class='design'>
                 <svg xmlns="http://www.w3.org/2000/svg" width="462" height="955" viewBox="0 0 462 955" fill="none">
                       <g filter="url(#filter0_d_163_401)">
                                   <path d="M76.8597 804.612C76.8597 1040.41 612.257 886.877 388.199 886.877C164.14 886.877 0 986.608 0 750.809C0 515.01 123.737 0 347.795 0C430.541 56.9268 76.8597 568.813 76.8597 804.612Z" fill="#6D5B5B"/>
                       </g>
                      <defs>
                           <filter id="filter0_d_163_401" x="0" y="0" width="462" height="955" filterUnits="userSpaceOnUse" color-interpolation-filters="sRGB">
                               <feFlood flood-opacity="0" result="BackgroundImageFix"/>
                               <feColorMatrix in="SourceAlpha" type="matrix" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 127 0" result="hardAlpha"/>
                                <feOffset dx="15" dy="15"/>
                                <feGaussianBlur stdDeviation="2"/>
                                <feComposite in2="hardAlpha" operator="out"/>
                                 <feColorMatrix type="matrix" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.25 0"/>
                                <feBlend mode="normal" in2="BackgroundImageFix" result="effect1_dropShadow_163_401"/>
                               <feBlend mode="normal" in="SourceGraphic" in2="effect1_dropShadow_163_401" result="shape"/>
                           </filter>
                       </defs>
                   </svg>
              </div>
               <div class='form'>
                 <div class='warning'>
                     <svg xmlns="http://www.w3.org/2000/svg" width="204" height="25" viewBox="0 0 204 25" fill="none">
                          <path d="M0.496094 12.1696C0.496094 5.48735 5.91313 0.0703125 12.5954 0.0703125H101.941H191.288C197.97 0.0703125 203.387 5.48735 203.387 12.1696V12.1696C203.387 18.8518 197.97 24.2689 191.288 24.2689H12.5954C5.91312 24.2689 0.496094 18.8518 0.496094 12.1696V12.1696Z" fill="#A02424"/>
                    </svg>
              </div>
                      <div class='info'>Please fill your Details here...</div>
                      <a class='al-btn p-2' href='../JavaProject/WEB-UTILS/Users/Registration/registration.jsp?users=Alumni' >Click here</a>
               </div>
          </div>
    </div>
    </div>
  </div>


       <div id="proj" class="mt-48" style="background-color: #3e5792;">
        <h1 class="text-center text-lg text-white">Project Section</h1>
  
        <div class='alumni-list-box'>
              <ul>
                <% while(rs2.next()){ %>
                      <li class='list'>
                          <img class='img-box' src="<%= rs2.getString(8) %>" width=100 height=100 alt="alm" />
                          <div>
                              <h4><%= rs2.getString(2) %></h4>
                              <h5><%= rs2.getString(5) %></h5>
                          </div>
                      </li>
                      <% } %>
              </ul>
          <a class='button-open' href="../JavaProject/projectSection">Open All</a>

      </div>
    </div>


    <div class="h-48 bg-red-900 mt-96">
          
    </div>
   </div>




   <script>
    // Function to scroll to a specific element by its ID
    function scrollToElement(elementId) {
      const element = document.getElementById(elementId);
      if (element) {
        element.scrollIntoView({ behavior: "smooth" });
      }
    }
  
    // Add click event listeners to the elements you want to click
    const admissionElement = document.getElementById("admission");
    const alumniElement = document.getElementById("Alumni");
    const campusElement = document.getElementById("Campus");
    const projectElement = document.getElementById("Project");
    const eventElement = document.getElementById("Event");
  
    if (admissionElement) {
      admissionElement.addEventListener("click", () => {
        scrollToElement("adm");
      });
    }
  
    if (alumniElement) {
      alumniElement.addEventListener("click", () => {
        scrollToElement("alm");
      })};
  
    if (campusElement) {
      campusElement.addEventListener("click", () => {
        scrollToElement("camp");
      })};
  
    if (projectElement) {
      projectElement.addEventListener("click", () => {
        scrollToElement("proj");
      })};
  
    if (eventElement) {
      eventElement.addEventListener("click", () => {
        scrollToElement("Events");
      });
    }
  </script>
  
</body>
</html>