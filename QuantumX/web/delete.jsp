<%-- 
    Document   : delete
    Created on : 6 jun. 2021, 1:30:48
    Author     : Marian Maldonado
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="connection.base"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String id_post = request.getParameter("id_post");
            String user = request.getParameter("id");

            base db = new base();

            try {
                db.connect();
                String strQry = "delete from post where id_post = '" + id_post + "'";
                db.delete(strQry);
                response.sendRedirect("profile.jsp?id=" + user);
            } catch (Exception e) {
                out.println(e.getMessage());
            }

        %>
    </body>
</html>
