<%@page import="java.sql.DriverManager,java.sql.ResultSet" %>    
<%@page import="java.sql.Connection,java.sql.PreparedStatement" %>
<%
    String button=request.getParameter("btn");
    int RESULT=0;
    if(button!=null && button.equals("SIGNIN"))
    {
        String adminId=request.getParameter("aid");
        String password=request.getParameter("apass");
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root",System.getenv("MEDICLONE_DB_PASSWORD"));
        PreparedStatement ps=connection.prepareStatement("select * from companytab where adminid=? and adminpassword=?");
        ps.setString(1,adminId);
        ps.setString(2,password);
        ResultSet rs=ps.executeQuery();
        if(rs.next())
        {
                response.sendRedirect("authdashboard.jsp");
        }
        else
        {
                 RESULT=1;
        }
        connection.close();
    }
%>
<html>
    <style>
            body
            {
            background-image:url('images/newone.png');
            background-repeat:no-repeat;
            background-size:cover;   
             }
             .loginbox{
                 margin-top:100px;
             }
            .tabtheme{
            text-transform: uppercase;
            font-size:14px;
            font-family: arial;
            border:double;
            }
            .texttheme{
            width:350px;
            height: 30px;    
            }
            .btntheme{
            width:300px;
            background-color:black;
            color:white;
            height: 30px;
            }
    </style>
    <body>
        <div class="logo">
            <a href="home.jsp"><img src="images/newlogo.png" width="300px"  height="70px">     </a>
        </div>       
        <div class="loginbox">
             <form action="">
            <table  cellspacing="20px"   align="center"  width='400px'  class='tabtheme'>
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
                    <tr align='center'>
                    <td><input type="text" class="texttheme" name="aid" placeholder="Enter id here"  required></td>
                </tr>                  
                    <tr align='center'>
                    <td><input type="password"  class="texttheme" name="apass" placeholder="Enter password here"  required></td>
                </tr>               
                <tr align="center">
                    <td colspan="2"><input type="submit" value="SIGNIN"  name="btn" class="btntheme">       
                    </td>
                </tr>
            </table>    
             </from>
        </div>   
    </body>
</html>    