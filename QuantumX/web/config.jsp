<!DOCTYPE html>
<!-- 
I P N
CECyT No.9
Quantum X Profile Configuration
-->

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Quantum X</title>
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link rel="shortcut icon" href="Styles/Images/Icons/Quantum_X(1).png"/>
        <link href="https://fonts.googleapis.com/css2?family=Barlow:wght@300;500&display=swap" rel="stylesheet">
        <link href="Styles/configHead.css" rel="stylesheet"/>
        <link href="Styles/configMain.css" rel="stylesheet"/>
        <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
        <script src="Scripts/config_validation.js"></script>
        <script src="https://code.jquery.com/jquery-3.5.0.js"></script>
    </head>
    <body>
        <!-- Profile Config. Header (Top) -->
        <header>
            <img src="Styles/Images/Icons/Quantum_X(1).png" alt="logoImg" class="logoImg"/>
            <span class="qxSpan">QUANTUM X</span>
            <a href="logout"><img src="Styles/Images/Icons/logOut.png" alt="logOut" class="logOutB"/></a>
        </header>

        <!-- Profile Config. Main (Bottom) -->
        <main>
            <div class="board">
                <table align="center">
                    <tr>
                        <td rowspan="2" width="350vh">
                            <img src="Images/profile-user.png" alt="user"/>
                        </td>
                        <td id="user_name">${user.user}</td>
                    </tr>
                    <tr>
                        <td id="user_email">${user.email}</td>
                    </tr>
                </table>
                <br><br><br>
                <div class="changePassDiv" align="center">
                    <form method="post" action="config_db.jsp">
                        <input id="user" type="text" name="user" value="${user.user}" readonly style="display: none"/>
                        <input type="password" name="actualPass" id="actualPass" placeholder="Contraseña Actual" required/>
                        <input type="password" name="newPassword" id="newPassword" placeholder="Nueva Contraseña" required/>
                        <input type="password" name="confirmNewPass" id="confirmNewPass" placeholder="Confirmar Nueva Contraseña" onblur="diffPass()" required/>
                        <input type="submit" name="submitB" value="Confirmar"/>
                    </form>
                </div>
            </div>
            <a href="home.jsp?category=1&id=${user.user}&rol=${user.rol}">
                <img src="Images/Previous.png" alt="cancel" id="previous"/>
            </a>
        </main>
    </body>
</html>