<!DOCTYPE html>
<!-- 
I P N
CECyT No.9
Quantum X Decline Post
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
            int id_post = Integer.parseInt(request.getParameter("id_post"));
            String user = request.getParameter("user");
            int rol = Integer.parseInt(request.getParameter("rol"));
            String category = request.getParameter("category");
            
            base db = new base();
            try {
                db.connect();
                String strQry = "delete from post where id_post = '" + id_post + "'";
                
                db.edit(strQry);
           
                response.sendRedirect("validatePost.jsp?category="+category+"&id="+user+"&rol="+rol);
            } catch(Exception e) {
                
            }
        %>
    </body>
</html>
