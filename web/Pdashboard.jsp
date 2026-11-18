<%@include file="security.jsp" %>
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

    </style>
    <body>
<!--                welcome-->
                <%=session.getAttribute("CALL")%>
                <%@include  file="ptop.jsp"%>
    </body>
</html>
