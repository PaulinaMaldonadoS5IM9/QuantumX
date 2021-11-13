<!DOCTYPE html>
<!--
I P N 
CECyT No.9
Quantum X
-->
<!--
 Algentem Inc Software Development Team
@author Maldonado Soriano Paulina Marian
@author Perez Gaspar Yael Emanuel
@author Sanchez Garcia Miguel Alenxader
@author Zamora Jimenez Gerardo Miguel
@author Zarza Flores Diego Israel

Para que se tenga acceso a el admin es necesario registrar a el usuario Admin con la contraseña admin123
-->
<%@page import="connection.UserLoginServlet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <title>Quantum X</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="shortcut icon" href="Styles/Images/Icons/Quantum_X(1).png"/>
        <link rel="stylesheet" href="Styles/start.css"/>
        <link rel="stylesheet" href="Styles/log_in.css"/>
        <link rel="stylesheet" href="Styles/register.css"/>
        <link rel="stylesheet" href="Styles/meet_us.css"/>
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Barlow:wght@300;500&display=swap" rel="stylesheet">
        <script src="Scripts/log_in.js"></script> 
        <script src="Scripts/register.js"></script> 
        <script src="Scripts/meet_us.js"></script> 
        <script src="Scripts/previous.js"></script> 
        <script src="Scripts/disabled.js"></script> 
        <script src="Scripts/validate_forms.js"></script> 
        <script src="https://code.jquery.com/jquery-3.5.0.js"></script>
        <script src="Scripts/ajax.js"></script>
    </head>
    
    <body onload="disabled()">
        <script>
            var messageT = ${message};
            
                alert(messageT);
        </script>
        <div class="start"> 
            <!-- Quantum X Logo (Right) -->
            <div class="leftDiv">
                <img src="Styles/Images/Icons/Quantum_X(1).png" alt="logo1" id="logo1"/>
                <span>All Rights Reserved &copy;2020-2021</span>
            </div>
            
            <!-- Log In / Register Buttons (Right) -->
            <div class="rightDiv">
                <!-- Login / Register Buttons -->
                <button id="meet" onclick="meet_us()">CONOCENOS</button>
                <div class="buttons"> 
                    <button id="login" class="LogIn_Register" onclick="log_in()">INICIAR SESIÓN</button>
                    <div id="or"> <hr> o <hr> </div> 
                    <button id="register" class="LogIn_Register" onclick="register()">REGISTRARSE</button>
                </div>
                
                <!-- Login Form -->
                <div class="login_form"> 
                    <form method="post" action="login">
                        <input type="text" name="username" id="username" placeholder="@Usuario" required=""/> 
                        <input type="password" name="password" id="password" placeholder="Contraseña" required=""/> 
                        <input type="submit" name="submit" id="submit" value="Ingresar"/> 
                    </form>
                </div>
                
                <!-- Register Form -->
                <div class="register_form"> 
                    <form method="post" action="register.jsp">
                        <input type="text" name="name" id="name" placeholder="Nombre(s)" required="" onkeypress="return onlyLetter(event)"/> 
                        <input type="text" name="lastname" id="lastname" placeholder="Apellido(s)" required="" onkeypress=" return onlyLetter(event)"/> 
                        <input type="text" name="user" id="user" placeholder="@Usuario" required=""/> 
                        <input type="email" name="email" id="email" placeholder="e-mail" required=""/> 
                        <input type="password" name="newPass" id="newPassword" placeholder="Contraseña"  required=""/> 
                        <input type="password" name="confirmPass" id="confirmPass" placeholder="Confirmar Contraseña" onblur="diffPass()" required=""/> 
                        <input type="submit" name="submit" id="submitR" value="Registrar"/> 
                    </form>
                </div>
                <!-- Meet us -->  
                <div class="meetUs" id="meetUsDiv">
                    <h1>ALGENTEM INC</h1>
                    <h2 id="h2_who">¿QUIENES SOMOS?</h2>
                    <p>Somos una empresa dedicada al desarrollo de software y de aplicaciones web<br>
                    con el fin de brindar a nuestros usuarios la mejor experiencia en nuestras aplicaciones</p>
                    <h2 id="h2_quantum">QUANTUM X</h2>
                    <p>El objetivo de QUANTUM X es brindar una aplicación web capaz de incrementar<br>
                    la curiosidad en sus usuarios, con el fin de fomentar un comportamiento autodidacta</p>
                    <h2 id="h2_team">EQUIPO</h2>
                    <ul>
                        <li>Maldonado Soriano Paulina Marian</li>
                        <li>Perez Gaspar Yael Emanuel</li>
                        <li>Sanchez Garcia Miguel Alexander</li>
                        <li>Zamora Jimenez Gerardo Miguel</li>
                        <li>Zarza Flores Diego Israel</li>
                    </ul>
                    <h2 id="h2_contact">CONTACTO</h2>
                    <p>algenteminc@gmail.com</p>
                </div>
                <img src="Styles/Images/Icons/Previous.png" alt="return" id="return" onclick="previous_Log()"/>
            </div>
        </div>
        
    </body>
</html>