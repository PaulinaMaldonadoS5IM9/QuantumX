<!DOCTYPE html>
<!-- 
I P N
CECyT No.9
Quantum X Profile Configuration DataBase 
-->

<%@page import="java.sql.ResultSet"%>
<%@page import="connection.base"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String user = request.getParameter("user");
            String password = request.getParameter("actualPass");
            String confirmNewPass = request.getParameter("confirmNewPass");
            
            if(!user.equals("") && !password.equals("") && !confirmNewPass.equals("")) {
                try {
                    base db = new base();
                    db.connect();
                    
                    String strQry1 = "select user_pass from users where id_user = '"+user+"';"; 
                    ResultSet rs = null;
                    rs = db.consult(strQry1);
                    
                    if(rs.next()) {
                        //if(rs.getString(1) == password) {
                            String strQry2 = "update users set user_pass = '"+confirmNewPass+"' where id_user = '"+user+"';";
                            db.edit(strQry2);
                        //}
                    }
                    
                    response.sendRedirect("home.jsp?category=1&id="+user);
                } catch(Exception e) {
                    e.getMessage();
                }
            }
        %>
    </body>
</html>
