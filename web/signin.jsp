<%@page import="java.sql.DriverManager,java.sql.ResultSet" %>   
<%@page import="java.sql.Connection,java.sql.PreparedStatement" %>

<%         
                String button=request.getParameter("btn");
                int RESULT=0;
                if(button!=null && button.equals("SIGNIN"))
    {
                String patientid=request.getParameter("userid");
               String password=request.getParameter("userpassword");
               Class.forName("com.mysql.jdbc.Driver");
               Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root",System.getenv("MEDICLONE_DB_PASSWORD"));
                PreparedStatement ps=connection.prepareStatement("select * from mdcsignup where pid=? and pwd=? ");
                ps.setString(1,patientid);
                ps.setString(2,password);
                ResultSet rs=ps.executeQuery();
                
                if(rs.next())
                {
                    session.setAttribute("CALL",patientid);// create session
                    Cookie ck=new Cookie("MediClone",patientid);
                    ck.setMaxAge(100000);
                    response.addCookie(ck);
                    response.sendRedirect("Pdashboard.jsp");
                }
                else
                {
                        RESULT=1;
                }            
                connection.close();
}
%>

<html>
    <script>
        function validate()
        {
            if(frm.userid.value==0)
                alert("id is required");
            if(frm.userpassword.value==0)
                 alert("password is required");
        }
    </script>
    <style>
        body
        {
         background-image:url('images/newlogin.png');
        background-repeat:no-repeat;
        background-size:cover;   
        }
        .logo{
            width:300px;
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
.slogan{
 text-align: center;   
 font-family: Arial Rounded MT;
}
.frontimage{
    text-align: center;
}
.formtheme{
    margin-left:450px;
    background-color:rgba(109,174,217,255);
    color:white;
    border-radius: 30px;
    width:550px;
    margin-top:60px;
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
        <div class="slogan">
            <h1>Compassionate Care for Every Generation</h1>  
        </div>
        <form action=""name="frm">
        <div  class="formtheme" >
            <table  cellspacing="10px"   align="center" style="color:white">
                <tr align="center">
                    <td colspan="2">
                        <img src='images/admin.jpeg'  style='border-radius:0px'>
                    </td>
                </tr>
                 <tr align="center">
                    <td>
                        <%  
                        if(button!=null && RESULT==1)
                        { %>
                        <font color="red">invalid password</font>
                       <% }%>
                    </td>
                </tr>
                <tr>
                    <td>ID</td>
                    </tr>                   
                    <tr>
<!--                        way to get cookie-->
                    <%  
                                Cookie ck[]=request.getCookies();
                                String id=" ";
                                if(ck!=null)
                                {
                                        for(int i=0;i<ck.length;i++)
                                        if(ck[i].getName().equals("MediClone"))
                                        id=ck[i].getValue();
                                }
                        %>

                        
                    <td><input type="text"  name="userid" class="texttheme"  placeholder="Enter id here"  required></td>
                </tr>                
                    <tr>
                    <td>Password</td>
                    </tr>                   
                    <tr>
                    <td><input type="password" name="userpassword"  class="texttheme" placeholder="Enter password here"  required></td>
                    </tr>               
                    <tr align="center">
                    <td colspan="2"><input type="submit" value="SIGNIN"  name="btn" onClick="validate()" class="btntheme"><br><br>
                    don't have an account <a href='signup.jsp'>click here</a>
                    </td>
                </tr>
            </table>            
        </div>
        </form>
    </body>
</html>    