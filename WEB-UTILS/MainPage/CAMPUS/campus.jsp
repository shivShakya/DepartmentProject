<!DOCTYPE html>
<html lang="en">
<head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
.alm-cont{
    display: flex;
    justify-content: center;
    align-items: center;
    width: 100%;
    height: 70%;
}

.content{
   width: 30%;
   height: 24.4375rem;
   flex-shrink: 0;
   margin: 15%;
}

.content:nth-child(0){
  width: 50%;
  height: 8.47456rem;
  flex-shrink: 0;
  color: #4D3739;
  text-align: center;
  text-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);
  font-family: Inria Serif;
  font-size: 4rem;
  font-style: normal;
  font-weight: 400;
  line-height: normal;
}  
.content:nth-child(1){
  width: 60%;
  height: 12.67538rem;
  flex-shrink: 0;
  color: #4D3739;
  text-align: center;
  font-family: Inria Serif;
  font-size: 2.5rem;
  font-style: normal;
  font-weight: 400;
  line-height: normal;
}  

.boxes{
  width: 98%;
  height: 55.375rem;
  flex-shrink: 0;
  display: flex;
  justify-content: center;
}

.boxx{
  width: 42%;
  height: 39.0725rem;
  flex-shrink: 0;
  border-radius: 1.875rem;
  display: flex;
  justify-content: center;
  flex-direction: column;
  align-items: center;
  margin: 5px;

}

.heading{
  width: 33%;
  height: 2.29838rem;
  flex-shrink: 0;
  border-radius: 1.25rem;
  background: #D6CEB7;
  box-shadow: 0px 4px 4px 0px rgba(0, 0, 0, 0.25);
  color: #000;
  text-align: center;
  font-family: Inria Sans;
  font-size: 1.25rem;
  font-style: normal;
  font-weight: 400;
  line-height: normal;
  margin-bottom: 5%;
  display: flex;
  justify-content: center;
  align-items: center;
}
.p-frame{
   display: grid;
   grid-template-columns: repeat(2,1fr);
}
.photo{
  width: 13.20131rem;
  height: 14.43169rem;
  flex-shrink: 0;
  border-radius: 1.875rem;
  margin: 10px;
  background: url("../assets/frame.png"), lightgray 50% / cover no-repeat;
}
.events-box{
  position: absolute;
  background: #9D2222;  
}

.infra-box{   
  background: #4D3739;  
   margin-top: 23%;
}

.acad-box{
  background: #403D3D;
  margin-top: 23%;
}

.mob-box{
    display: none;
}

.content-mob-camp{
     display: none;
}
</style>
<title>Campus</title>
</head>
<body>
                            <div class="mx-auto">
                                <div style="color: #4D3739; width: 60%;" class="text-center flex flex-col h-32 text-3xl font-inria-serif font-normal leading-normal ">
                                        <div>Campus Life</div>
                                        <div>Our campus embodies the transformative power of education and determination. The success stories of our students and alumni inspire generations. We cultivate the leaders and innovators of tomorrow.</div>
                                </div>
        
                                <div class="w-full flex justify-center item-center">
                                        <div class="boxx events-box">
                                                <div class="heading h-1">Events</div>
        
                                                <div class="p-frame">
                                                        <div class="photo"></div>
                                                        <div class="photo"></div>
                                                        <div class="photo"></div>
                                                        <div class="photo"></div>
                                                </div>
                                        </div>
                                        <div class="boxx infra-box">
                                                <div class="heading h-2">Infrastructure</div>
        
                                                <div class="p-frame">
                                                        <div class="photo"></div>
                                                        <div class="photo"></div>
                                                        <div class="photo"></div>
                                                        <div class="photo"></div>
                                                </div>
                                        </div>
                                        <div class="boxx acad-box">
                                                <div class="heading h-3">Academics</div>
        
                                                <div class="p-frame">
                                                        <div class="photo"></div>
                                                        <div class="photo"></div>
                                                        <div class="photo"></div>
                                                        <div class="photo"></div>
                                                </div>
                                        </div>
                                </div>
                        </div>
</body>
</html>