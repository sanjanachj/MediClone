 <%@page import="java.sql.DriverManager,java.sql.ResultSet" %>   
<%@page import="java.sql.Connection,java.sql.PreparedStatement" %>   
<%@page import="java.util.Date,java.text.DateFormat"%>
<%
    String button=request.getParameter("btn");
    if(button!=null && button.equals("SEND"))
    {
            String fullName=request.getParameter("fNm");
            String contact=request.getParameter("contact");
//            int PatientID=Integre.ParseInt(request.getParameter("contact"));
            String complain=request.getParameter("complain");
            Date date =new Date();
            DateFormat df=DateFormat.getDateInstance(DateFormat.FULL);
            String dateValue=df.format(date);
            Class.forName("com.mysql.cj.jdbc.Driver");
        Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root",System.getenv("MEDICLONE_DB_PASSWORD"));
        PreparedStatement ps=connection.prepareStatement("insert into complaintable1(fullname,contact,complain,dateofcomplain,status)values(?,?,?,?,?)");
//        PreparedStatement ps=connection.prepareStatement("insert into complaintable1(fullname,contact,complain,dateofcomplain,status)values(?,?,?,?,?)");
        ps.setString(1,fullName);
        ps.setString(2,contact);
        ps.setString(3,complain);
        ps.setString(4,dateValue);
        ps.setString(5,"under process");   
        ps.executeUpdate();       
        connection.close();
        response.sendRedirect("complain.jsp");
    }
%>
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
            margin-top: 210px;
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
     .tabtheme{
            text-transform: uppercase;
            font-size:14px;
            font-family: arial;
            height: 40px;
            width:800px;
            margin-left: -80px;
        }
    </style>
    <body>
         <%@include  file="ptop.jsp"%>
         <div  class="formtheme">
        <form action="">
            <table  cellspacing="10px"   align="center" style="color:white">
                <tr align="center">
                    <td colspan="2"  style="text-transform: uppercase;color:white;font-size:20px">Complain here</td>
                </tr>
                <tr>
                    <td>Name</td>
                    <td><input type="text" name="fNm" class="texttheme" placeholder="enter full name "></td>
                </tr>                  
                <tr>
<!--                <tr>
                    <td>PatientID</td>
                    <td><input type="number" name="PID" class="texttheme" placeholder="enter full name "></td>
                </tr>                  -->
                <tr>
                     <td >contact</td>
                     <td ><input type="number" name="contact" class="texttheme" placeholder="Enter contact here"  required></td>
                </tr>
                 
                <tr align="center">
                     <td >complain</td>
                      <td colspan="3"><textarea class="texttheme"  name="complain" style="height:60px;width:100%"  required></textarea></td>
                 </tr>
               <tr align="center">
                 <td colspan="4"><input type="submit" value="SEND" name="btn" class="btntheme"></td>
                 </tr>
            </table>      
          </form>
        </div>
           
    </body>
</html>