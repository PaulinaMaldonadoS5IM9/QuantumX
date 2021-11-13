<!DOCTYPE html>
<!-- 
I P N
CECyT No.9
Quantum X Publish
-->

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDate"%>
<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<html>
    <head>
        <!-- Sistema ISO-8859-1 (normativa que define la codificación del alfabeto latino) -->
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Quantum X</title>
        <link rel="shortcut icon" href="Styles/Images/Icons/Quantum_X(1).png"/>
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Barlow:wght@300;500&display=swap" rel="stylesheet">
        <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
        <link href="Styles/publishHead.css" rel="stylesheet"/>
        <link href="Styles/publishMain.css" rel="stylesheet"/>
        <script src="Scripts/postContentV.js"></script>
    </head>
    
    <body>
        <%
            String rol = request.getParameter("rol");
        %>
        <!-- Publish Header (Top) -->
        <header>
            <img src="Styles/Images/Icons/Quantum_X(1).png" alt="logoImg" class="logoImg"/>
            <span class="qxSpan">QUANTUM X</span>
            <a href="logout"><img src="Styles/Images/Icons/logOut.png" alt="logOut" class="logOutB"/></a>
            <table>
                <tr>
                    <td><img src="Images/user.png" alt="userImg"/></td>
                    <td><span>${user.user}</span></td> 
                </tr>
            </table>
            <input id="user" type="text" value="${user.user}" readonly/> 
        </header>

        <main>
            <form method="post" action="publish_db.jsp">
                <input type="submit" id="publishB" value=""/>
                <div class="aside" align="center">
                    <div align="center">
                        <span>SELECCIONA UN TEMA</span>
                        <hr class="hr1">
                        <br><br>
                        <input type="radio" id="mat" value="1" name="category" checked>
                        <label for="mat"><img src="Images/matematicasN.png" alt=""/></label>
                        <input type="radio" id="fis" value="2" name="category">
                        <label for="fis"><img src="Images/fisicaN.png" alt=""/></label>
                        <input type="radio" id="quim" value="3" name="category">
                        <label for="quim"><img src="Images/quimicaN.png" alt=""/></label>
                        <input type="radio" id="bio" value="4" name="category">
                        <label for="bio"><img src="Images/biologiaN.png" alt=""/></label>
                        <input type="radio" id="histo" value="5" name="category">
                        <label for="histo"><img src="Images/historiaN.png" alt=""/></label>
                        <input type="radio" id="progra" value="6" name="category">
                        <label for="progra"><img src="Images/programacionN.png" alt=""/></label>
                        <input type="text" value="${user.user}" name="user" style="display:none">
                        <input type="text" value="<%=rol%>" name="rol" style="display:none">
                    </div>
                    <br>
                </div>
                <div class="board" align="center">
                    <br>
                    <br>
                    <br>
                    <div>
                        <table width="100%">
                            <tr>
                                <td align="center" style="vertical-align: top; width:50vw">
                                    <table width="100%" style="border:0px" >
                                        <tr>
                                            <td width="7%" rowspan="2">
                                                <img width="100%" style="min-width: 30px" height="auto" src="Home/Imagenes/user2.png" alt=""/>
                                            </td>
                                            <td width="75%" align="left">
                                                <font size="5">${user.user}</font>
                                            </td>
                                            <td width="20%" align="left" rowspan="2">
                                                <font size="5"><%=LocalDate.now()%></font>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <hr width="100%">
                                            </td>
                                        </tr>
                                    </table>
                                    <table width="90%"  style=" height: 170px;min-height: 170px ;border: 2.5px solid; border-color: #474B4E;">
                                        <tr>
                                            <td align="center" style="height: 35vh; vertical-align: middle">
                                                <textarea placeholder="Escribe tu texto" name="text" id="text" required onblur="oneHLetters()"></textarea>
                                            </td>
                                        </tr>
                                    </table>
                                    <hr width="100%">
                                    <table style="width: 100%;height: 42px;min-height: 42px; border:0px">
                                        <tr>
                                            <td align="right">
                                                <i class='bx bxs-book bx-md bx-spin-hover' onclick="cambiar('id1')"></i>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td id="id1" style="width: 30%; vertical-align: top;border-left: 3px solid; border-left-color: #474B4E; padding-right: 15px">
                                    <table width="100%" height="30px" style="border:0px">
                                        <tr>
                                            <td align="center">
                                                <font size="4">REFERENCIAS</font>
                                                <hr width="80%">
                                            </td>
                                        </tr>
                                    </table>
                                    <ul>
                                        <li><textarea placeholder="Referencia" name="reference0" required></textarea></li>
                                        <li><textarea placeholder="Referencia" name="reference1"></textarea></li>
                                        <li><textarea placeholder="Referencia" name="reference2"></textarea></li>
                                        <li><textarea placeholder="Referencia" name="reference3"></textarea></li>
                                        <li><textarea placeholder="Referencia" name="reference4"></textarea></li>
                                    </ul>

                                </td>
                            </tr>
                        </table>
                    </div>
                    <a href="home.jsp?category=1&id=${user.user}&rol=${user.rol}">
                        <img src="Styles/Images/Icons/Previous.png" alt="cancel" id="cancel"/>
                    </a>
                </div>
            </form>
        </main>
    </body>
</html>