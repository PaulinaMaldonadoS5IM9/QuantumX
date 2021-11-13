<%-- 
    Document   : reactions
    Created on : 4/05/2021, 06:55:24 PM
    Author     : Sammy Guergachi <sguergachi at gmail.com>
--%>

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
            String user = request.getParameter("user");
            String id_post = request.getParameter("id_post");
            String reaction = request.getParameter("reaction");
            String reactionB = request.getParameter("reactionB");
            String chan = request.getParameter("chan");
            int bit = Integer.parseInt(request.getParameter("bit"));
            
            try{
                base db = new base();
                
                String strQry;
                db.connect();
                if(bit == 0){
                    strQry = "delete from "+reaction+" where id_user='"+user+"' and id_post='"+id_post+"';";
                    db.delete(strQry);
                } else if(bit == 1){
                    if(chan.equals("y")){
                        strQry = "delete from "+reactionB+" where id_user='"+user+"' and id_post='"+id_post+"';";
                        db.delete(strQry);
                    }
                    strQry = "insert into "+reaction+" values('"+user+"','"+id_post+"');";
                    db.insert(strQry);
                }
                
            } catch(Exception e){
                System.err.println(e);
            }
        %>
    </body>
</html>
