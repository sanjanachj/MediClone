<%-- 
    Document   : career
    Created on : Nov 1, 2026, 5:16:46 PM
    Author     : HP
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Career | MediClone</title>

    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(to right, #6DAED9, #B3D7F5);
            color: #222;
        }

        /* HEADER CSS - SAME AS YOUR ORIGINAL */

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
            font-family: arial;
            height: 40px;
            width:550px;
        }

        a {
            color:black;
            text-decoration: none;
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

        /* SAME BACKGROUND */

        body {
            background-image:url('images/aboutbg.png');
            background-repeat:no-repeat;
            background-size:cover;
            background-position-x: 2000px;
            background-color:rgba(109,174,217,255);
        }

        /* CAREER SECTION */

        .career-container {
            display:flex;
            justify-content:space-between;
            align-items:center;
            padding:55px 90px;
            gap:55px;
            min-height:470px;
        }

        /* LEFT CONTENT */

        .career-text {
            width:55%;
        }

        .career-label {
            color:#005b91;
            font-size:14px;
            font-weight:bold;
            letter-spacing:3px;
            margin-bottom:18px;
        }

        .career-text h1 {
            font-size:40px;
            color:#003366;
            line-height:1.2;
            margin-bottom:22px;
        }

        .career-text h1 span {
            color:white;
        }

        .career-text p {
            line-height:1.8;
            font-size:16px;
            color:#263f50;
            margin-bottom:18px;
        }

        /* CAREER BENEFITS */

        .career-benefits {
            display:grid;
            grid-template-columns:1fr 1fr;
            gap:18px 25px;
            margin-top:25px;
            max-width:450px;
        }

        .benefit {
            display:flex;
            align-items:center;
            gap:10px;
            color:#173e56;
            font-size:15px;
            font-weight:bold;
        }

        .check {
            color:#087eae;
            font-size:23px;
        }

        /* RIGHT IMAGE */

        .career-image {
            width:45%;
            position:relative;
            text-align:center;
        }

        .career-image img {
            width:100%;
            max-width:440px;
            height:350px;
            object-fit:contain;
            border-radius:18px;
        }

        /* SMALL INFORMATION CARD */

        .career-card {
            position:absolute;
            bottom:-20px;
            left:-30px;
            background:white;
            padding:17px 22px;
            border-radius:10px;
            box-shadow:0 5px 20px rgba(0,0,0,0.15);
            text-align:left;
        }

        .career-card h3 {
            color:#075681;
            font-size:15px;
            margin-bottom:5px;
        }

        .career-card p {
            color:#687c8a;
            font-size:12px;
            margin:0;
        }

        /* JOIN US BUTTON */

        .career-btn {
            display:inline-block;
            background:#064e78;
            color:white;
            padding:13px 25px;
            border-radius:5px;
            margin-top:12px;
            font-size:14px;
            font-weight:bold;
            transition:0.3s;
        }

        .career-btn:hover {
            background:#003653;
            transform:translateY(-3px);
            color:white;
        }

        /* RESPONSIVE */

        @media(max-width:900px) {

            .career-container {
                padding:40px 35px;
                gap:30px;
            }

            .career-text h1 {
                font-size:32px;
            }

            .career-image img {
                height:300px;
            }

        }

        @media(max-width:650px) {

            .career-container {
                flex-direction:column;
                text-align:center;
                padding:40px 20px;
            }

            .career-text {
                width:100%;
            }

            .career-image {
                width:100%;
                margin-top:20px;
            }

            .career-benefits {
                margin:25px auto;
                text-align:left;
            }

            .career-card {
                left:0;
                bottom:-20px;
            }

        }

    </style>
</head>

<body>

    <%@include file="publictop.jsp"%>

    <!-- CAREER CONTENT -->

    <div class="career-container">

        <!-- LEFT SIDE -->

        <div class="career-text">

            <div class="career-label">
                CAREERS AT MEDICLONE
            </div>

            <h1>
                Build Your Future.<br>
                <span>Make A Difference.</span>
            </h1>

            <p>
                At MediClone, we believe that technology can make
                healthcare smarter and more accessible. Our platform
                brings doctors and patients together, allowing doctors
                to manage and consult multiple patients efficiently.
            </p>

            <p>
                We believe in teamwork, continuous learning and
                creative thinking. Join us to explore new ideas,
                develop your skills and contribute to the future
                of digital healthcare.
            </p>

            <div class="career-benefits">

                <div class="benefit">
                    <span class="check">✓</span>
                    <span>Friendly Environment</span>
                </div>

                <div class="benefit">
                    <span class="check">✓</span>
                    <span>Continuous Learning</span>
                </div>

                <div class="benefit">
                    <span class="check">✓</span>
                    <span>Creative Thinking</span>
                </div>

                <div class="benefit">
                    <span class="check">✓</span>
                    <span>Supportive Team</span>
                </div>

            </div>

<!--            <a href="mailto:careers@mediclone.com"
               class="career-btn">
                Join Our Team →
            </a>-->

        </div>


        <!-- RIGHT SIDE GIF -->

        <div class="career-image">

            <!-- Replace careergif.gif with your actual GIF filename -->

            <img src="images/aboutgif.gif"
                 alt="MediClone Healthcare Technology">

            <div class="career-card">

                <h3>One Doctor. Multiple Patients.</h3>

                <p>
                    Connecting healthcare through technology.
                </p>

            </div>

        </div>

    </div>

</body>
</html>
