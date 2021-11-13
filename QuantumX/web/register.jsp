<!DOCTYPE html>
<!-- 
I P N
CECyT No.9
Quantum X Register
-->

<%@page import="connection.base"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String name = request.getParameter("name");
            String lastname = request.getParameter("lastname");
            String user = request.getParameter("user");
            String email = request.getParameter("email");
            String confirmPass = request.getParameter("confirmPass");

            if(!name.equals("") && !lastname.equals("") && !user.equals("") && !email.equals("") && !confirmPass.equals("")) {
                base db = new base();

                try{
                    db.connect();
                    String strQry = "insert into users(id_user, user_pass, user_name, user_lastname, email, rol) values('"+user+"', '"+confirmPass+"', '"+name+"', '"+lastname+"', '"+email+"', 0);";

                    //out.print(strQry)

                    db.insert(strQry);
                    request.getRequestDispatcher("index.jsp?message=Registro+completo").forward(request, response);
                    request.setAttribute("message", "Registro completo");
                } catch (Exception e) {
                    request.setAttribute("message", "Usuario ya existe");
                    request.getRequestDispatcher("index.jsp?message=Usuario+ya+existe").forward(request, response);
                }
            } 
        %>
    </body>
</html>
