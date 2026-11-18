<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.Connection,java.sql.PreparedStatement,java.util.ArrayList,java.sql.ResultSet" %>

<% 
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root",System.getenv("MEDICLONE_DB_PASSWORD"));
        PreparedStatement ps=connection.prepareStatement("select * from appoint");
        ResultSet rs =ps.executeQuery();
        ArrayList list1=new ArrayList();
        ArrayList list2=new ArrayList();
        ArrayList list3=new ArrayList();
        ArrayList list4=new ArrayList();
        ArrayList list5=new ArrayList();
        ArrayList list6=new ArrayList();
         ArrayList list7=new ArrayList();
        while(rs.next())
        {
            list1.add(rs.getString(1));
            list2.add(rs.getString(2));
            list3.add(rs.getString(3));
            list4.add(rs.getString(4));
            list5.add(rs.getString(5));
            list6.add(rs.getString(6));
             list7.add(rs.getString(7));
        }
%>
<html>
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Story+Script&display=swap" rel="stylesheet">
    <style>
        body
        {
         background-image:url('images/newsignup.png');
        background-repeat:no-repeat;
        background-size:cover;
/*        background-position-x: 250px;
        background-color:rgba(109,174,217,255);*/
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
body{
    font-family: "Story Script", sans-serif;
}
.formtheme{          
            background-color:rgba(109,174,217,255);
            color:black;
            height:50%;
            box-shadow: 5px 5px 5px black;
            font-family: arial;
            font-size:12px;}
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
    </style>
<body>
            <%@include file="authtop.jsp"%>
            <h1 align="center" colour="white">COMPLAIN<h1>
                    <table class="formtheme" width="80%" align="center">
                    <tr align="center" style="background-color:white"  > 
                        <td> Patient ID</td>
                        <td> doctor ID</td>
                        <td> symptoms</td>
                        <td> Contact</td>
                        <td> DOB</td>
                        <td> Age</td>
                        <td> Gender</td>
                    </tr> 
                    <% for(int i=0;i<list1.size();i++){%>
                    <tr align="center" style="color:black">
                        <td><%=list1.get(i)%></td>
                        <td><%=list2.get(i)%></td>
                        <td><%=list3.get(i)%></td>
                       <td><%=list4.get(i)%></td>
                       <td><%=list5.get(i)%></td>
                       <td><%=list6.get(i)%></td>
                       <td><%=list7.get(i)%></td>
                    </tr>      
                    <%}%>
                    </table>
</body>
</html>