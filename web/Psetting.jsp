
<%@include file="security.jsp" %>
<html>
<head>
    <title>Password Setting</title>

    <style>

        * {
            box-sizing: border-box;
        }

        body {
            margin: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-image: url('images/newhome2.png');
            background-repeat: no-repeat;
            background-size: cover;
            background-position-x: 250px;
            background-color: rgba(109,174,217,255);
            min-height: 100vh;
        }

        .logo {
            width: 100px;
        }

        .menu {
            margin-left: 430px;
            margin-top: -40px;
        }

        .option {    
            width: 300px;
            margin-left: 1250px;
            margin-top: -60px;
        }

        .tabtheme {
            text-transform: uppercase;
            font-size: 14px;
            font-family: arial;
            height: 40px;
            width: 700px;
        }

        a {
            color: black;
            text-decoration: none;
        }

        .box:hover {
            background-color: white;   
        }

        .logintheme {
            border: solid; 
            transition: transform .2s;
        }

        .logintheme:hover {
            transform: scale(1.3);
            background-color: white;
            color: white;
        }

        /* PASSWORD FORM CONTAINER */

        .formtheme {
    width: 420px;
    margin-left: 100px;
    margin-top: 35px;
    margin-bottom: 20px;
    padding: 20px 28px;
    background: rgba(109,174,217,0.94);
    color: white;
    border-radius: 15px;
    box-shadow: 0 8px 25px rgba(0,0,0,0.22);
    font-family: Arial, sans-serif;
}

/* HEADING */

.form-heading {
    text-align: center;
    margin-bottom: 12px;
}

.form-heading h2 {
    font-size: 21px;
    margin-bottom: 5px;
    color: white;
}

.form-heading p {
    font-size: 11px;
    color: #edf7ff;
    margin: 0;
}

.form-heading .heading-line {
    width: 45px;
    height: 3px;
    background: white;
    margin: 10px auto 0;
    border-radius: 5px;
}

/* TABLE */

.formtheme table {
    width: 100%;
    border-spacing: 0 5px;
}

.formtheme td {
    font-size: 12px;
    font-weight: 600;
    padding: 2px 0;
}

/* INPUT */

.texttheme {
    width: 100%;
    height: 35px;
    padding: 0 11px;
    border: 1px solid rgba(255,255,255,0.65);
    border-radius: 6px;
    outline: none;
    background: white;
    color: #23445a;
    font-size: 12px;
}

.texttheme:focus {
    border-color: #064d78;
    box-shadow: 0 0 0 2px rgba(255,255,255,0.3);
}

.texttheme::placeholder {
    color: #9aaab5;
}

/* BUTTON */

.btntheme {
    width: 100%;
    height: 37px;
    border: none;
    border-radius: 6px;
    background: #064d78;
    color: white;
    font-size: 12px;
    font-weight: bold;
    letter-spacing: 0.5px;
    cursor: pointer;
    transition: 0.3s;
    margin-top: 5px;
}

.btntheme:hover {
    background: #033653;
}

    </style>
</head>

<body>

    <%@include file="ptop.jsp"%>

    <div class="formtheme">

        <div class="form-heading">
            <h2>Reset Your Password</h2>

            <p>
                Update your password to keep your account secure.
            </p>

            <div class="heading-line"></div>
        </div>

        <form action="passwordsetting.jsp">

            <table align="center">

                <tr>
                    <td>ID</td>
                </tr>

                <tr>
                    <td>
                        <input type="text"
                               name="userid"
                               class="texttheme"
                               placeholder="Enter your ID"
                               required>
                    </td>
                </tr>

                <tr>
                    <td>Old Password</td>
                </tr>

                <tr>
                    <td>
                        <input type="password"
                               name="opass"
                               class="texttheme"
                               placeholder="Enter your old password"
                               required>
                    </td>
                </tr>

                <tr>
                    <td>New Password</td>
                </tr>

                <tr>
                    <td>
                        <input type="password"
                               name="npass"
                               class="texttheme"
                               placeholder="Enter your new password"
                               required>
                    </td>
                </tr>

                <tr>
                    <td>Confirm New Password</td>
                </tr>

                <tr>
                    <td>
                        <input type="password"
                               name="cpass"
                               class="texttheme"
                               placeholder="Confirm your new password"
                               required>
                    </td>
                </tr>

                <tr>
                    <td>
                        <input type="submit"
                               value="UPDATE PASSWORD"
                               class="btntheme">
                    </td>
                </tr>

            </table>

        </form>

    </div>

</body>
</html>
