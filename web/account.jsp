<%@page import="java.sql.DriverManager,java.sql.ResultSet" %>   
<%@page import="java.sql.Connection,java.sql.PreparedStatement" %>  
<%
    String button=request.getParameter("delete");
    int RESULT=0;
    if(button!=null && button.equals("DELETE"))
    {
        String pid=request.getParameter("pid");
        Class.forName("com.mysql.cj.jdbc.Driver");
         Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root",System.getenv("MEDICLONE_DB_PASSWORD"));
         PreparedStatement ps=connection.prepareStatement("select * from mdcsignup where pid=?");
         ps.setString(1, pid);
         ResultSet rs=ps.executeQuery();
         if(rs.next())
         {
             PreparedStatement ps1=connection.prepareStatement("delete from mdcsignup where pid=?");
             ps1.setString(1, pid);
             ps1.executeUpdate();
             System.out.println("complain deleted");
         }
         else
         {
                    RESULT=1;
         }
         connection.close();
}
%>
<!--without chatgpt working wala code -->
<!--<html>
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
            width:450px;
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
    </style>
    <body>
         @include  file="ptop.jsp" iss ko scriplet main likhna padhega
         <div  class="formtheme">
        <form action="">
            <table  cellspacing="10px"   align="center" style="color:white">
                <tr align="center">
                    <td colspan="2"  style="text-transform: uppercase;color:white;font-size:20px">Delete Account</td>
                </tr>
                 <tr colspan="2" align="center">
                    <td>
                        if(button!=null && RESULT==1){ %>
                        <font color="red" background color="white">record not found</font>
                         } iff ko bhi scrilets main likhna hai
                    </td>
                </tr>
             <tr>
                    <td>PatientID </td> 
                    <td><input type="text" name="pid" class="texttheme" placeholder="enter patient ID to delete account "></td>
                </tr>                 
               <tr align="center">
                 <td colspan="4"><input type="submit" value="DELETE" name="delete" class="btntheme"></td>
                 </tr>
            </table>      
          </form>
        </div>
           
    </body>
</html>-->
                        
<html>
<head>
    <title>Delete Account | MediClone</title>

    <style>

        body {
            background-image: url('images/new.png');
            background-repeat: no-repeat;
            background-size: cover;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        /* HEADER CSS - SAME */

        .logo {
            width:100px;
        }

        .menu {
            margin-left:500px;
            margin-top:-45px;
        }

        .option {
            width:300px;
            margin-left:1250px;
            margin-top:-60px;
        }

        .tabtheme {
            text-transform: uppercase;
            font-size:14px;
            font-family:arial;
            height:40px;
            width:800px;
            margin-left:-80px;
        }

        a {
            color:black;
            text-decoration:none;
        }

        .box:hover {
            background-color:white;
        }

        .current {
            background-color:lightgray;
        }

        .signuptheme {
            border:solid;
            transition:transform .2s;
        }

        .signuptheme:hover {
            transform:scale(1.3);
            background-color:white;
            color:white;
        }

        .logintheme {
            border:solid;
            transition:transform .2s;
        }

        .logintheme:hover {
            transform:scale(1.3);
            background-color:white;
            color:white;
        }

        /* DELETE FORM */

        .formtheme {
    width: 420px;
    padding: 25px;
    background: rgba(109,174,217,0.96);
    color: white;
    border-radius: 18px;
    box-shadow: 0 10px 30px rgba(0,0,0,0.25);
    font-family: Arial, sans-serif;

    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
}

        /* HEADING */

        .form-heading {
            text-align:center;
            margin-bottom:22px;
        }

        .form-heading h2 {
            font-size:23px;
            letter-spacing:1px;
            margin:0 0 8px;
            color:white;
        }

        .form-heading p {
            font-size:12px;
            color:#edf7ff;
            margin:0;
        }

        .heading-line {
            width:50px;
            height:3px;
            background:white;
            border-radius:5px;
            margin:13px auto 0;
        }

        /* WARNING MESSAGE */

        .error-message {
            color:#a51d1d;
            background:#fff0f0;
            padding:9px;
            border-radius:6px;
            font-size:12px;
            text-align:center;
            margin-bottom:12px;
        }

        /* INPUT */

        .formtheme table {
            width:100%;
        }

        .formtheme td {
            font-size:13px;
            font-weight:600;
            padding:5px 0;
        }

        .texttheme {
            width:100%;
            height:40px;
            padding:0 12px;
            border:none;
            border-radius:6px;
            outline:none;
            font-size:13px;
            background:white;
            color:#24445a;
            transition:0.3s;
        }

        .texttheme:focus {
            box-shadow:0 0 0 3px rgba(255,255,255,0.35);
        }

        .texttheme::placeholder {
            color:#9baab5;
        }

        /* DELETE BUTTON */

        .btntheme {
            width:100%;
            height:40px;
            background:#bd3030;
            color:white;
            border:none;
            border-radius:6px;
            font-size:13px;
            font-weight:bold;
            letter-spacing:1px;
            cursor:pointer;
            transition:0.3s;
            margin-top:12px;
        }

        .btntheme:hover {
            background:#921f1f;
            transform:translateY(-2px);
            box-shadow:0 5px 12px rgba(0,0,0,0.2);
        }

        .warning-text {
            text-align:center;
            font-size:11px;
            color:#f3faff;
            margin-top:15px;
        }

        /* RESPONSIVE */

        @media(max-width:900px) {
            .formtheme {
                margin:100px auto 30px;
                width:90%;
                max-width:420px;
            }
        }

    </style>
</head>

<body>

    <%@include file="ptop.jsp"%>

    <div class="formtheme">

        <div class="form-heading">

            <h2>DELETE ACCOUNT</h2>

            <p>Enter your Patient ID to delete your account.</p>

            <div class="heading-line"></div>

        </div>

        <form action="">

            <table cellspacing="8px" align="center">

                <% if(button!=null && RESULT==1){ %>

                <tr>
                    <td colspan="2">
                        <div class="error-message">
                            Record not found! Please check your Patient ID.
                        </div>
                    </td>
                </tr>

                <% } %>

                <tr>
                    <td>Patient ID</td>
                </tr>

                <tr>
                    <td>
                        <input type="text"
                               name="pid"
                               class="texttheme"
                               placeholder="Enter your Patient ID"
                               required>
                    </td>
                </tr>

                <tr>
                    <td>
                        <input type="submit"
                               value="DELETE ACCOUNT"
                               name="delete"
                               class="btntheme">
                    </td>
                </tr>

            </table>

        </form>

        <div class="warning-text">
            Please note: Account deletion may be permanent.
        </div>

    </div>

</body>
</html>

