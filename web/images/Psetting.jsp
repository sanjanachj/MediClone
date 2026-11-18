<%@page import="java.sql.DriverManager,java.sql.ResultSet" %>   
<%@page import="java.sql.Connection,java.sql.PreparedStatement" %>
<% 
     String button=request.getParameter("btn");
    int RESULT=0;
    if(button!=null && button.equals("submit"))
    {
            String patientId=request.getParameter("userid");
            String oldPassword=request.getParameter("opass");
            String newPassword=request.getParameter("npass");
            String confirmPassword=request.getParameter("cpass");
            Class.forName("com.mysql.jdbc.Driver");
            Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root",System.getenv("MEDICLONE_DB_PASSWORD"));
            PreparedStatement ps=connection.prepareStatement("select * from mdcsignup where pid=? and pwd=? ");
            ps.setString(1,patientId);
            ps.setString(2,oldPassword);
            ResultSet rs=ps.executeQuery();
                if(rs.next())
                {
                   if(newPassword.equals(confirmPassword)){
                                PreparedStatement ps1=connection.prepareStatement("update mdcsignup set pwd=? where pid=? ");
                                ps1.setString(1,newPassword);
                                ps1.setString(2,patientId);
                                ps1.executeUpdate();
                                response.sendRedirect("signin.jsp");
                        }
                        else{
                               RESULT = 2;
                        }
                }
                else
                {
                        RESULT = 1;
                }            
                connection.close();  
}
%>
<html>
    <style>
        body
        {
         background-image:url('images/newhome2.png');
        background-repeat:no-repeat;
        background-size:cover;
        background-position-x: 250px;
        background-color:rgba(109,174,217,255);
        }
        .logo{
            width:100px;
        }
        .menu{
            margin-left:430px;
            margin-top:-40px;
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
                width:700px;
}
        a{
            color:black;
            text-decoration: none;
}
        .box:hover
    {
    background-color:white;   
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
/*.formtheme{
    margin-left:-900px;
    margin-top: 80px;
}*/
.formtheme{
    margin-left:100px;
    background-color:#306dac;
    color:white;
    border-radius: 30px;
    width:550px;
    margin-top:60px;
    box-shadow: 0px 0px 40px #43627c;
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
           <form action="">
            <div  class="formtheme">
            <table  cellspacing="10px"   align="center" style="color:black">
                <tr align="center">
                    <td colspan="2">
                        <img src='images/admin.jpeg'  style='border-radius:0px'>
                    </td>
                </tr>
                <tr colspan="2" align="center">
                    <td>
                        <% if(button!=null && RESULT==1){ %>
                        <font color="red" background color="white">Invalid ID or Old Password</font>
                        <% } else if(button!=null && RESULT==2){ %>
                        <font color="red">New Password and Confirm Password do not match</font>
                        <% } %>
                    </td>
                </tr>
                <tr>
                    <td>ID</td>
                    </tr>                   
                    <tr>
                    <td><input type="text" name="userid" class="texttheme"  placeholder="Enter id here"  required></td>
                </tr>                
                    <tr>
                    <td>old Password</td>
                    </tr>                   
                    <tr>
                    <td><input type="password" name="opass"  class="texttheme" placeholder="Enter old password here"  required></td>
                    </tr>   
                     <tr>
                    <td>new Password</td>
                    </tr>                   
                    <tr>
                    <td><input type="password" name="npass"  class="texttheme" placeholder="Enter new password here"  required></td>
                    </tr>  
                     <tr>
                    <td>confirm Password</td>
                    </tr>                   
                    <tr>
                    <td><input type="password" name="cpass"  class="texttheme" placeholder="confirm password "  required></td>
                    </tr>  
                    <tr align="center">
                    <td colspan="2"><input type="submit" value="submit" name="btn" class="btntheme"><br><br>
                   
                    </td>
                </tr>
            </table>    
        </div>
        </form>
    </body>
</html>

