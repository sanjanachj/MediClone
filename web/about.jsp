<html>
<head>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(to right, #6DAED9, #B3D7F5);
            color: #222;
        }
        .about-container {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 60px 100px;
        }

        .about-text {
            max-width: 55%;
        }

        .about-text h1 {
            font-size: 36px;
            color: #003366;
            margin-bottom: 20px;
        }

        .about-text p {
            line-height: 1.8;
            font-size: 16px;
        }

        .about-img img {
            border-radius: 15px;
            box-shadow: 0 5px 25px rgba(0,0,0,0.2);
            width: 500px;
            height: auto;
        }
            .about-container {
                flex-direction: column;
                text-align: center;
                padding: 40px 20px;
            }
            .about-text {
                max-width: 100%;
                margin-top: -60px;
            }
            .about-img img {
                width: 90%;
                margin-top: 20px;
            }
             body
        {
         background-image:url('images/aboutbg.png');
        background-repeat:no-repeat;
        background-size:cover;
        background-position-x: 2000px;
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
    </style>
</head>
<body>
    <%@include file="publictop.jsp"%>
    <div class="about-container">
        <div class="about-text">
            <h1>About Us</h1>
            <p>
                At MedicClone, we believe that healthcare should be fast, easy, and accessible for everyone. 
                Our platform connects patients directly with trusted doctors online, eliminating long hospital queues. 
                With just a few clicks, you can book appointments, consult with your preferred doctor, 
                and receive expert advice from the comfort of your home.
            </p>
            <p>
                We ensure a seamless experience by letting you meet the same doctor for follow-ups, 
                making your treatment more personal and effective. Our mission is to save your time, 
                provide instant access to healthcare, and ensure you get the care you need, exactly when you need it.
            </p>
        </div>
        <div class="about-img">
            <img src="images/aboutgif.gif">
        </div>
    </div>

</body>
</html>
