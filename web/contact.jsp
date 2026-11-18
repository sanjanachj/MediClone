
<html>
    <style>
        body
        {
         background-image:url('images/new.png');
        background-repeat:no-repeat;
        background-size:cover;
        }
        .logo{
            width:100px;
        }
        .menu{
            margin-left:500px;
            margin-top:-45px;
        }
        .option{    
            width:300px;
            margin-left:1250px;
            margin-top:-60px;
        }
            .tabtheme{
    text-transform: uppercase;
    font-size:14px;
    font-family: arial;
    height: 40px;
    width:550px;
}
a{
    color:black;
    text-decoration: none;
}
.box:hover
{
 background-color:white;   
}
.current
{
    background-color:lightgray;   
}
  .signuptheme{
            border:solid;  
            transition:transform  .2s;
            }
            .signuptheme:hover
            {
            transform:scale(1.3);
             background-color:white;
            color:white;
            }
            .logintheme{
            border:solid; 
            transition:transform  .2s;
            }
             .logintheme:hover
            {
            transform:scale(1.3);
            background-color:white;
            color:white;
            }
  .formtheme{
             margin-left:800px;
            background-color:rgba(109,174,217,255);
            color:white;
            border-radius: 30px;
            width:550px;
            margin-top: -370px;
            box-shadow: 5px 5px 5px black;
            font-family: arial;
            font-size:12px;
    }
            .texttheme{
    width:350px;
    height: 30px;
    border:none;
    }
    .btntheme{
    width:300px;
    background-color:black;
    color:white;
    height: 30px;
    }
    </style>
    <body>
         <%@include  file="publictop.jsp"%>
         <br> 
         <div style="margin-left:70px; ">
             <table cellspacing="10px"  style="font-family: arial"  align="center" width="70%" border="1.5">
                 <tr align="center">
                     <td height="50px"><img src="images/mail.png" width="30px" height="30px"  >@DoctorClone<br></td>
                     <td><img src="images/webicon1.png" width="30px" height="30px"  >www.doctorclone<br></td>
                     <td><img src="images/location1.png" width="30px" height="30px"  >address<br></td>
                     <td><img src="images/callicon1.png" width="30px" height="30px"  >contact<br>8989897866</td>
                 </tr>
             </table>
         </div>
         <br><br>
         <div  style="margin-left:70px ; margin-top:40px">
             <iframe width="520" height="300" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" id="gmap_canvas" 
                     src="https://maps.google.com/maps?width=520&amp;height=400&amp;hl=en&amp;q=94%20Rani%20pura%20main%20road%20indore%20indore+(doctor%20clone%20)&amp;t=&amp;z=12&amp;ie=UTF8&amp;iwloc=B&amp;output=embed"></iframe>
         </div>
         <br><br>
       
         <br>
         <div  class="formtheme">
        <form action="contactcode.jsp">
            <table  cellspacing="10px"   align="center" style="color:white">
                <tr align="center">
                    <td colspan="2"  style="text-transform: uppercase;color:white;font-size:20px">Contact Us</td>
                </tr>
                <tr>
                    <td>Name</td>
                    <td><input type="text" name="fnm" class="texttheme" placeholder="enter full name "</td>
                </tr>                  
                <tr>
                    <td>City</td>
                            <td><select  class="texttheme"name="city">
                                    <option>Select City</option>
                                    <option>Indore</option>
                                    <option>Ujjain</option>
                                    <option>Dewas</option>
                        </select></td>
                </tr>
             
                <tr>
                     <td >contact</td>
                     <td ><input type="number" name="contact" class="texttheme" placeholder="Enter contact here"  required></td>
                </tr>
                <tr>     
                <td >mailId</td>
                        <td ><input type="text" name="mail" class="texttheme" placeholder="enter mail "  required></td>
                </tr>
                <tr align="center">
                     <td >enquiry</td>
                      <td colspan="3"><textarea class="texttheme"  name="enquiry" style="height:60px;width:100%"  required></textarea></td>
                 </tr>
               <tr align="center">
                 <td colspan="4"><input type="submit" value="SEND"  class="btntheme"></td>
                 </tr>
            </table>      
          </form>
        </div>
           
    </body>
</html>