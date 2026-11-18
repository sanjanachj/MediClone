<html>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100..900;1,100..900&family=Story+Script&display=swap" rel="stylesheet">
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
/*.frontimage{
    text-align: center;
}*/
    </style>
    <body>
         <%@include  file="publictop.jsp"%>
        <div class="slogan">
            <h1>Compassionate Care for Every Generation</h1>
            <h4>MEDICLONE-Your Partner in a Lifetime of Well-being</h4>
        </div>    
    </body>
</html>    

