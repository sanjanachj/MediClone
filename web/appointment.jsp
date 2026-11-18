 <html>
    <style>
        body
        {
         background-image:url('images/new2.png');
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
            width:800px;
            margin-left: -80px;
        }
        a{
            color:black;
            text-decoration: none;
            }
            .box:hover
            {
            background-color:white;   
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
            .slogan{
            text-align: center;   
            font-family: Arial Rounded MT;
            }
            .frontimage{
            text-align: center;
            }
            .formtheme{
             margin-left:800px;
            background-color:rgba(109,174,217,255);
            color:white;
            border-radius: 30px;
            width:550px;
            margin-top: 30px;
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
        <%@include  file="ptop.jsp"%>
        <div class="slogan">
            <h1>Compassionate Care for Every Generation</h1>      
        </div>
        <div  class="formtheme">
        <form action="viewappcode.jsp">
            <table  cellspacing="10px"   align="center" style="color:white">
                <tr align="center">
                    <td colspan="2"  style="text-transform: uppercase;color:white;font-size:20px">appoinment section</td>
                </tr>
                <tr>
                    <td>paitent ID</td>
                    <td><input type="text"  name="pid" class="texttheme"  placeholder="Enter pi id here"  required></td>
                </tr>        
                 <tr>
                    <td>DID</td>
                    <td><input type="text"  name="did" class="texttheme"  placeholder="Enter doctor id here"  required></td>
                </tr>  
                <tr>
                    <td>symptoms</td>
                    <td><input type="text" name="sym" class="texttheme" placeholder="Enter symptoms here"  required></td>
                </tr>
                 <tr>
                     <td>Contact</td>
                      <td><input type="number" name="cont" class="texttheme" placeholder="Enter contact here"  required></td>
                </tr>              
                <tr>
                    <td>Date of Birth</td>
                    <td><input type="date" name="dob" class="texttheme"  required></td>
                </tr>
         
                <tr>
                    <td>age </td>
                    <td><input type="number" name="age" class="texttheme" placeholder="Enter age here" required></td>
                </tr>
                 <tr>
                    <td>Gender</td>
                     <td><select class="texttheme" name="gen">
                                <option>Select Gender</option>
                                <option>Male</option>
                                <option>Female</option>
                     </select></td>
                </tr>
                <tr align="center">
                    <td colspan="2"><input type="submit" value="BOOK"  class="btntheme"></td>
                </tr>
            </table>      
          </form>
        </div>
    </body>
</html>    