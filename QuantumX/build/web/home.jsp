<!DOCTYPE html>
<!-- 
I P N
CECyT No.9
Quantum X Home
-->

<%@page import="java.text.ParseException"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="connection.base"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Quantum X</title>
        <link rel="shortcut icon" href="Styles/Images/Icons/Quantum_X(1).png"/>
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Barlow:wght@300;500&display=swap" rel="stylesheet">
        <link href="Styles/homeHead.css" rel="stylesheet"/>
        <link href="Styles/homeAside.css" rel="stylesheet"/>
        <link href="Styles/homeMain.css" rel="stylesheet"/>
        <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
        <script src="Scripts/Tablon.js"></script>
        <script src="https://code.jquery.com/jquery-3.5.0.js"></script>
        <script src="Scripts/ajax.js"></script>
        <script src="Scripts/search.js"></script>
        <script src="Scripts/searchV.js"></script>
    </head>

    <body>
        <%
            int rol = Integer.parseInt(request.getParameter("rol"));
            int category = Integer.parseInt(request.getParameter("category"));
        %>
        <!-- Home Header (Top) -->
        <header>
            <img src="Styles/Images/Icons/Quantum_X(1).png" alt="logoImg" class="logoImg"/>
            <%
                if(rol != 0) {
            %>
            <a href="validatePost.jsp?category=1&id=${user.user}&rol=<%=rol%>">
                <img src="Images/post.png" alt="postV"/>
            </a>
            <%
                }
            %>
            <span class="qxSpan">QUANTUM X</span>
            <%
                String categoryS = "";
                if(category == 1) {
                    categoryS = "Matem??ticas";
                } else if(category == 2) {
                    categoryS = "F??sica";
                } else if(category == 3) {
                    categoryS = "Qu??mica";
                } else if(category == 4) {
                    categoryS = "Bilog??a";
                } else if(category == 5) {
                    categoryS = "Historia";
                } else if(category == 6) {
                    categoryS = "Programaci??n";
                }
            %>
            <span class="categorySpan"><%=categoryS%></span>
            <a href="logout"><img src="Styles/Images/Icons/logOut.png" alt="logOut" class="logOutB"/></a>
            <a href="profile.jsp?id=${user.user}"> 
            <table>
                <tr>
                    <td><img src="Images/user.png" alt="userImg"/></td>
                    <td><span>${user.user}</span></td> 
                </tr>
            </table>
            </a>
            <input id="user" type="text" value="${user.user}" readonly/> 
        </header>
        
        <!-- Home Main (Bottom) --> 
        <main>
            <!-- Home Main Seacrh Button (Top-Right)-->
            <div class="searchDiv" id="searchDiv">
                <table>
                    <tr>
                        <td colspan="2" id="searchTd">
                            <img src="Images/searching.png" alt="searchB" id="searchB" onclick="search()"/>
                        </td>
                    </tr>
                    <tr>
                        <td id="searchUTd">
                            <form method="post" action="profileS.jsp">
                                <input type="text" name="searchU" id="searchU" placeholder="Buscar Usuario"/>
                                <input type="submit" value="" id="searchUB"/>
                            </form>
                        </td>
                        <td id="profileSTd">
                            <img src="Images/group.png" alt="profileSB" id="profileSB" onclick="searchUser()"/>
                        </td>
                    </tr>
                    <tr>
                        <td id="searchPTd">
                            <form method="post" action="postS.jsp">
                                <input type="text" name="searchP" id="searchP" placeholder="Buscar Palabras Clave" onkeyup="onlyOLetter()"/>
                                <input type="submit" value="" id="searchPB"/>
                            </form>
                        </td>
                        <td id="postSTd">
                            <img src="Images/dashboard.png" alt="postSB" id="postSB" onclick="searchPost()"/>
                        </td>
                    </tr>
                </table>
            </div>
            <!-- Home Main Aside Bar (Left)-->
            <div class="aside" category="<%=category%>" align="center">
                <a href="publish.jsp?rol=<%=rol%>"><img src="Images/publicarB.png" alt="publishB" id="publishB"/></a>
                <a href="home.jsp?category=1&id=${user.user}&rol=<%=rol%>"><img id="Matematicas" src="Images/matematicasN.png" alt="categoryB"/></a>
                <a href="home.jsp?category=2&id=${user.user}&rol=<%=rol%>"><img id="Fisica" src="Images/fisicaN.png" alt="categoryB"/></a>
                <a href="home.jsp?category=3&id=${user.user}&rol=<%=rol%>"><img id="Quimica" src="Images/quimicaN.png" alt="categoryB"/></a>
                <a href="home.jsp?category=4&id=${user.user}&rol=<%=rol%>"><img id="Biologia" src="Images/biologiaN.png" alt="categoryB"/></a>
                <a href="home.jsp?category=5&id=${user.user}&rol=<%=rol%>"><img id="Historia" src="Images/historiaN.png" alt="categoryB"/></a>
                <a href="home.jsp?category=6&id=${user.user}&rol=<%=rol%>"><img id="Programacion" src="Images/programacionN.png" alt="categoryB"/></a>
            </div>
            
            <!-- Home Main (Right) -->
            <div class="board" align="center">
                <div>
                    <%
                        base db = new base();

                        try {
                            db.connect();
                            String strQry1 = "select*from post where id_category = '"+category+"' and approved = 1 order by post_date desc; ";
                            ResultSet rs = null;
                            rs = db.consult(strQry1);

                            DateFormat df = new SimpleDateFormat("dd/MM/yyyy");
                            while (rs.next()) {
                                String strQry2 = "select users.id_user, post.post_date, post_content from users inner join post on users.id_user = post.id_user where post.id_post = '" + rs.getString(1) + "';";
                                ResultSet rs2 = null;
                                rs2 = db.consult(strQry2);
                                if (rs2.next()) {
                                    String date = rs2.getString(2).substring(0, 10);
                    %>
                    <br>
                    <table class="one" width="80%">
                        <tr>
                            <td align="center" style="width: 80%;vertical-align: top">
                                <table class="two" width="100%" style="border:0">
                                    <tr>
                                        <td width="7%" rowspan="2">
                                            <img src="Images/user2.png" alt="" width="100%"/>
                                        </td>
                                        <td width="75%" align="left">
                                            <font size="5"><%=rs2.getString(1)%></font>
                                        </td>
                                        <td width="20%" align="left" rowspan="2">
                                            <font size="5"><%=date%></font>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <hr width="100%">
                                        </td>
                                    </tr>
                                </table>
                                <table class="three" width="90%">
                                    <tr>
                                        <td align="center">
                                            <font><%=rs2.getString(3)%></font>
                                        </td>
                                    </tr>
                                </table>
                                <hr width="100%">
                                <table class="four" style="border:0">
                                    <tr>
                                        <td width="5%">
                                            <%
                                                }
                                                String strQry3 = "select likes.id_post from post inner join likes on post.id_post = likes.id_post where post.id_post='" + rs.getString(1) + "' and likes.id_user='" + request.getParameter("id") + "';";
                                                ResultSet rs3 = null;
                                                rs3 = db.consult(strQry3);
                                                if (rs3.next()) {
                                                    out.println("<i class='bx bxs-like bx-md bx-tada-hover' id='Li" + rs.getString(1) + "' style='color:green' onclick='like(" + rs.getString(1) + ")'></i> ");
                                                } else {
                                                    out.println("<i class='bx bx-like bx-md bx-tada-hover' id='Li" + rs.getString(1) + "' onclick='like(" + rs.getString(1) + ")'></i>");
                                                }
                                            %>

                                        </td>
                                        <td width="10%" align="left">
                                            <%
                                                String strQry4 = "select count(*) from likes where id_post='" + rs.getString(1) + "';";
                                                rs3 = db.consult(strQry4);
                                                if (rs3.next()) {
                                                    out.println("<p  id='Ln" + rs.getString(1) + "'>" + rs3.getString(1) + "</p>");
                                                } else {
                                                    out.println(0);
                                                }
                                            %>
                                        </td>
                                        <td width="5%">
                                            <%
                                                String strQry5 = "select dislikes.id_post from post inner join dislikes on post.id_post = dislikes.id_post where post.id_post='" + rs.getString(1) + "' and dislikes.id_user='" + request.getParameter("id") + "';";
                                                rs3 = db.consult(strQry5);
                                                if (rs3.next()) {
                                                    out.println("<i class='bx bxs-dislike bx-md bx-tada-hover' style='color:red' id='Di" + rs.getString(1) + "' onclick='dislike(" + rs.getString(1) + ")'></i> ");
                                                } else {
                                                    out.println("<i class='bx bx-dislike bx-md bx-tada-hover' id='Di" + rs.getString(1) + "' onclick='dislike(" + rs.getString(1) + ")'></i>");
                                                }
                                            %>
                                        </td>
                                        <td width="10%" align="left">
                                            <%
                                                String strQry6 = "select count(*) from dislikes where id_post='" + rs.getString(1) + "';";
                                                rs3 = db.consult(strQry6);
                                                if (rs3.next())
                                                    out.println("<p id='Dn" + rs.getString(1) + "'>" + rs3.getString(1) + "</p>");
                                                else
                                                    out.println(0);
                                            %>
                                        </td>
                                        <td align="right">
                                            <i class='bx bxs-book bx-md bx-spin-hover' onclick="cambiar('id<%=rs.getString(1)%>')"></i>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td class="five" id="id<%=rs.getString(1)%>">
                                <table width="100%" height="30px" style="border:0">
                                    <tr>
                                        <td align="center">
                                            <font size="4">REFERENCIAS</font>
                                            <hr width="80%">
                                        </td>
                                    </tr>
                                </table>

                                <ul>
                                    <%
                                        String strQry7 = "select post_reference.link from post inner join post_reference on post.id_post = post_reference.id_post where post.id_post='" + rs.getString(1) + "'";
                                        rs3 = db.consult(strQry7);
                                        while (rs3.next()) {
                                    %>
                                    <li><a href="<%=rs3.getString(1)%>"><%=rs3.getString(1)%></a></li>
                                        <%
                                            }
                                        %>     
                                </ul>
                            </td>
                        </tr>
                    </table>
                    <br>
                    <%
                                rs2.close();
                            }
                            rs.close();
                            db.closeConnection();
                        } catch (Exception ex) {
                            out.println(ex.getMessage());
                        }
                    %>
                </div>
            </div>
        </main>
                
    </body>
</html>
